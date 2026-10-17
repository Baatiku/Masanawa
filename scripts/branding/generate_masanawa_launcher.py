#!/usr/bin/env python3
"""Regenerate native Masanawa launcher and notification PNGs from approved art.

The original phone-and-M logo is canonical. NEVER redraw it, overwrite
assets/brand files, or substitute the retired rounded-square speech/M icon.

Run from repository root after installing Pillow:
    python -m pip install Pillow==11.3.0
    python scripts/branding/generate_masanawa_launcher.py

After changing the launcher or splash source artwork, also run:
    cd apps/mobile
    dart run flutter_launcher_icons
    dart run flutter_native_splash:create
"""
from pathlib import Path
from PIL import Image

ROOT = Path(__file__).resolve().parents[2]
MOBILE = ROOT / "apps/mobile"
BRAND = MOBILE / "assets/brand"
RES = MOBILE / "android/app/src/main/res"

launcher = Image.open(BRAND / "masanawa_agent_logo.png").convert("RGBA")
splash = Image.open(BRAND / "masanawa_splash_mark.png").convert("RGBA")
if launcher.width != launcher.height or launcher.width < 192:
    raise ValueError("Approved launcher artwork must be a square >=192px")
if splash.width != splash.height or splash.width < 192:
    raise ValueError("Transparent phone-and-M silhouette is required")
if splash.getpixel((0, 0))[3] != 0:
    raise ValueError("Notification silhouette must have a transparent exterior")

# Rendering only: neither canonical source image is modified.
# Android notification icons are alpha-only silhouettes tinted by the OS.
# Convert the existing approved transparent mark to white with identical alpha,
# so monochrome small icons also work before Android applies its tint.
for density, launcher_px, notification_px in (
    ("mdpi", 48, 24),
    ("hdpi", 72, 36),
    ("xhdpi", 96, 48),
    ("xxhdpi", 144, 72),
    ("xxxhdpi", 192, 96),
):
    mipmap = RES / ("mipmap-" + density)
    drawable = RES / ("drawable-" + density)
    mipmap.mkdir(parents=True, exist_ok=True)
    drawable.mkdir(parents=True, exist_ok=True)
    launcher.resize((launcher_px, launcher_px), Image.Resampling.LANCZOS).save(
        mipmap / "ic_launcher.png", optimize=True
    )
    alpha = splash.getchannel("A").resize(
        (notification_px, notification_px), Image.Resampling.LANCZOS
    )
    notification = Image.new(
        "RGBA", (notification_px, notification_px), (255, 255, 255, 255)
    )
    notification.putalpha(alpha)
    notification.save(drawable / "ic_stat_masanawa.png", optimize=True)

print("Android launcher and status icons rendered from approved Masanawa artwork")
