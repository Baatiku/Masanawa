#!/usr/bin/env python3
"""Build the original Masanawa speech-bubble + M brand in the app's *exact* green.

Do not copy another app's trademarked logo. Transparent exterior, white M,
and a white launcher/adaptive background. Run from the repository root:
    python -m pip install Pillow==11.3.0
    python scripts/branding/generate_masanawa_launcher.py
"""
from pathlib import Path
from PIL import Image, ImageDraw
import re

ROOT = Path(__file__).resolve().parents[2]
MOBILE = ROOT / "apps/mobile"
TOKENS = MOBILE / "lib/src/tokens/masanawa_tokens.dart"
match = re.search(r"brandPrimary:\s*'(#[0-9A-Fa-f]{6})'", TOKENS.read_text())
if not match:
    raise RuntimeError("Canonical light brandPrimary color not found")
GREEN = match.group(1)
PALETTE = tuple(bytes.fromhex(GREEN[1:])) + (255,)

def mark(size: int) -> Image.Image:
    # 3x coverage makes the monogram legible even in small mipmap icons.
    n = size * 3
    image = Image.new("RGBA", (n, n), (0, 0, 0, 0))
    mask = Image.new("L", (n, n), 0)
    draw = ImageDraw.Draw(mask)
    draw.rounded_rectangle(
        tuple(round(x*n) for x in (.208, .189, .790, .752)),
        radius=round(n*.232), fill=255)
    draw.polygon(
        [(round(x*n),round(y*n)) for x,y in
         ((.305,.680),(.254,.836),(.437,.741))], fill=255)
    image.paste(Image.new("RGBA", (n,n), PALETTE), (0,0), mask)
    white = ImageDraw.Draw(image)
    white.polygon(
        [(round(x*n),round(y*n)) for x,y in
         ((.335,.620),(.335,.366),(.401,.366),(.499,.487),
          (.595,.366),(.660,.366),(.660,.620),(.585,.620),
          (.585,.471),(.499,.578),(.414,.471),(.414,.620))],
        fill=(255,255,255,255))
    return image.resize((size,size),Image.Resampling.LANCZOS)

brand = MOBILE / "assets/brand"
brand.mkdir(parents=True, exist_ok=True)
for name in ("masanawa_agent_logo.png", "masanawa_launcher_foreground.png"):
    mark(1024).save(brand / name, optimize=True, compress_level=9)

resources = MOBILE / "android/app/src/main/res"
for density, pixels in {"mdpi":48,"hdpi":72,"xhdpi":96,"xxhdpi":144,"xxxhdpi":192}.items():
    folder = resources / ("mipmap-" + density)
    folder.mkdir(parents=True, exist_ok=True)
    mark(pixels).save(folder/"ic_launcher.png", optimize=True, compress_level=9)

assert GREEN.upper() == "#25D366", "Brand changed: confirm owner-approved green"
assert mark(192).getpixel((0,0))[3] == 0, "Outside of logo must be transparent"
print("Generated Masanawa speech M from", GREEN)
