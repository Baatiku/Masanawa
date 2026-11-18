.class public abstract Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult;
.super Ljava/lang/Object;
.source "ScanData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalError;,
        Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalNoQrCodeFound;,
        Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeResult;,
        Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapException;,
        Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapSuccess;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0005\u0004\u0005\u0006\u0007\u0008B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u0082\u0001\u0005\t\n\u000b\u000c\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult;",
        "",
        "<init>",
        "()V",
        "GetLocalBitmapException",
        "GetLocalBitmapSuccess",
        "DecodeLocalNoQrCodeFound",
        "DecodeLocalError",
        "DecodeResult",
        "Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalError;",
        "Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalNoQrCodeFound;",
        "Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeResult;",
        "Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapException;",
        "Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapSuccess;",
        "opay-qrcode-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult;-><init>()V

    return-void
.end method
