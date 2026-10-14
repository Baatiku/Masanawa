#!/usr/bin/env python3
"""Masanawa launcher art: original green-outline speech mark and letter M.

Run from repository root after pip install pillow, then commit the generated
brand PNG, Android launcher mipmaps and foreground together.
"""
from pathlib import Path
from PIL import Image, ImageDraw, ImageFont

root = Path(__file__).resolve().parents[2]
assets = root / "apps/mobile"
GREEN = (19, 132, 88, 255)

def font(size):
    options = [
        "/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf",
        "C:/Windows/Fonts/arialbd.ttf",
    ]
    for path in options:
        if Path(path).exists():
            return ImageFont.truetype(path, size)
    return ImageFont.load_default()

def mark(size, *, adaptive=False):
    scale=4
    n=size*scale
    im=Image.new("RGBA",(n,n),(0,0,0,0))
    d=ImageDraw.Draw(im)
    w=round(n*.053)
    # Green outline speech mark + bespoke M, transparent outside.
    d.arc((n*.13,n*.13,n*.87,n*.87),23,338,fill=GREEN,width=w)
    d.line([(n*.16,n*.72),(n*.095,n*.91),(n*.34,n*.835)],
           fill=GREEN,width=w,joint="curve")
    f=font(round(n*.43))
    bb=d.textbbox((0,0),"M",font=f)
    d.text(((n-bb[2]+bb[0])/2-bb[0],(n-bb[3]+bb[1])/2-bb[1]-n*.018),
           "M",font=f,fill=GREEN)
    return im.resize((size,size), Image.Resampling.LANCZOS)

brand=assets/"assets/brand"
brand.mkdir(parents=True,exist_ok=True)
mark(1024).save(brand/"masanawa_agent_logo.png",optimize=True)
mark(1024).save(brand/"masanawa_launcher_foreground.png",optimize=True)
res=assets/"android/app/src/main/res"
for density, pixels in {"mdpi":48,"hdpi":72,"xhdpi":96,"xxhdpi":144,"xxxhdpi":192}.items():
    folder=res/f"mipmap-{density}"
    folder.mkdir(parents=True,exist_ok=True)
    mark(pixels).save(folder/"ic_launcher.png",optimize=True)
    # Round variant when launchers support it.
    mark(pixels).save(folder/"ic_launcher_round.png",optimize=True)

color=res/"values/ic_launcher_background.xml"
color.parent.mkdir(parents=True,exist_ok=True)
color.write_text('<?xml version="1.0" encoding="utf-8"?>\n<resources><color name="ic_launcher_background">#FFFFFFFF</color></resources>\n')
print("Generated transparent green M icon on white adaptive background.")
