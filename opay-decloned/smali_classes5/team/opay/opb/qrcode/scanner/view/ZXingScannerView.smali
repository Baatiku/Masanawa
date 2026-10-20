.class public final Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;
.super Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;
.source "ZXingScannerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$Companion;,
        Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 f2\u00020\u0001:\u00021gB\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0017\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001b\u0010\u0018\u001a\u00020\u00102\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0015\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u0018\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00102\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010#\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$J\u0019\u0010\'\u001a\u00020\u00102\u0008\u0010&\u001a\u0004\u0018\u00010%H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010+\u001a\u00020\u00102\u0006\u0010*\u001a\u00020)H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\'\u00101\u001a\u00020\u00102\u0006\u0010.\u001a\u00020-2\u0006\u0010/\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00081\u00102J\u0015\u00103\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u00083\u0010 J\r\u00104\u001a\u00020\u0010\u00a2\u0006\u0004\u00084\u00105J\u000f\u00107\u001a\u0004\u0018\u000106\u00a2\u0006\u0004\u00087\u00108J\'\u0010;\u001a\u0004\u0018\u00010:2\u0006\u0010.\u001a\u0002092\u0006\u0010/\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u0006\u00a2\u0006\u0004\u0008;\u0010<J\u000f\u0010=\u001a\u00020\u0010H\u0014\u00a2\u0006\u0004\u0008=\u00105J\r\u0010>\u001a\u00020\u0010\u00a2\u0006\u0004\u0008>\u00105J\u000f\u0010?\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008?\u00105J)\u0010A\u001a\u0004\u0018\u00010@2\u0006\u0010.\u001a\u00020-2\u0006\u0010/\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008A\u0010BR\u0018\u0010E\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u001e\u0010H\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0018\u0010K\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0018\u0010O\u001a\u0004\u0018\u00010L8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0018\u0010R\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u0016\u0010U\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR\u0016\u0010X\u001a\u00020V8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u00103R\u0014\u0010Z\u001a\u00020V8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008Y\u00103R\u0014\u0010^\u001a\u00020[8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0014\u0010b\u001a\u00020_8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008d\u0010e\u00a8\u0006h"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;",
        "Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attributeSet",
        "",
        "defStyle",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "enable",
        "",
        "setOpenZoom",
        "(Z)V",
        "C",
        "()Z",
        "",
        "Lcom/google/zxing/BarcodeFormat;",
        "formats",
        "setFormats",
        "(Ljava/util/List;)V",
        "",
        "scanType",
        "(Ljava/lang/String;)V",
        "Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;",
        "resultHandler",
        "setResultHandler",
        "(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;)V",
        "La87;",
        "listener",
        "setOnCameraOpenFailedListener",
        "(La87;)V",
        "",
        "e",
        "c",
        "(Ljava/lang/Throwable;)V",
        "Landroid/media/Image;",
        "image",
        "d",
        "(Landroid/media/Image;)V",
        "",
        "data",
        "width",
        "height",
        "a",
        "([BII)V",
        "F",
        "G",
        "()V",
        "Lcom/google/zxing/MultiFormatReader;",
        "getMultiFormatReader",
        "()Lcom/google/zxing/MultiFormatReader;",
        "",
        "Lcom/google/zxing/RGBLuminanceSource;",
        "A",
        "([III)Lcom/google/zxing/RGBLuminanceSource;",
        "onDetachedFromWindow",
        "E",
        "B",
        "Lcom/google/zxing/PlanarYUVLuminanceSource;",
        "z",
        "([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;",
        "n",
        "Lcom/google/zxing/MultiFormatReader;",
        "mMultiFormatReader",
        "o",
        "Ljava/util/List;",
        "mFormats",
        "p",
        "Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;",
        "mResultHandler",
        "Landroid/os/Handler;",
        "q",
        "Landroid/os/Handler;",
        "handler",
        "r",
        "La87;",
        "mCameraOpenFailedListener",
        "s",
        "Z",
        "isOpenZoom",
        "",
        "t",
        "pendingScale",
        "u",
        "sensitivity",
        "Landroid/view/ScaleGestureDetector;",
        "v",
        "Landroid/view/ScaleGestureDetector;",
        "scaleGestureDetector",
        "Landroid/view/GestureDetector;",
        "w",
        "Landroid/view/GestureDetector;",
        "tapGestureDetector",
        "",
        "getFormats",
        "()Ljava/util/Collection;",
        "x",
        "Companion",
        "opay-qrcode-scanner_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final x:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public n:Lcom/google/zxing/MultiFormatReader;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:La87;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Z

.field public t:F

.field public final u:F

.field public final v:Landroid/view/ScaleGestureDetector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w:Landroid/view/GestureDetector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->x:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$Companion;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->y:Ljava/util/List;

    .line 15
    .line 16
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    .line 47
    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    .line 52
    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    .line 57
    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    .line 62
    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    .line 67
    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    .line 72
    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    .line 77
    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    .line 82
    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    .line 87
    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    .line 92
    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    .line 97
    .line 98
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->q:Landroid/os/Handler;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 6
    iput p2, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->t:F

    const p2, 0x3fa66666    # 1.3f

    .line 7
    iput p2, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->u:F

    .line 8
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance p3, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$b;

    invoke-direct {p3, p0}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$b;-><init>(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->v:Landroid/view/ScaleGestureDetector;

    .line 9
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$c;

    invoke-direct {p3, p0}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$c;-><init>(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->w:Landroid/view/GestureDetector;

    .line 10
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->B()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final D(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;Lkotlin/jvm/internal/Ref$ObjectRef;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->p:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->G()V

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/google/zxing/Result;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lcom/google/zxing/Result;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    sub-long/2addr v1, p2

    .line 33
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const/4 p3, 0x0

    .line 38
    invoke-interface {v0, p0, p1, p3, p2}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method private final getFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->o:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->y:Ljava/util/List;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-object v0
.end method

.method public static synthetic v(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;Lkotlin/jvm/internal/Ref$ObjectRef;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->D(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;Lkotlin/jvm/internal/Ref$ObjectRef;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;)F
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->t:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic x(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;)F
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->u:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic y(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;F)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->t:F

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final A([III)Lcom/google/zxing/RGBLuminanceSource;
    .locals 1
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Lcom/google/zxing/RGBLuminanceSource;

    .line 7
    .line 8
    invoke-direct {v0, p2, p3, p1}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method

.method public final B()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    .line 2
    .line 3
    const-class v1, Lcom/google/zxing/DecodeHintType;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    .line 9
    .line 10
    invoke-direct {p0}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->getFormats()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/google/zxing/MultiFormatReader;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->n:Lcom/google/zxing/MultiFormatReader;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->q:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->q:Landroid/os/Handler;

    .line 10
    .line 11
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->p:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;

    .line 12
    .line 13
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->r:La87;

    .line 14
    .line 15
    return-void
.end method

.method public final F(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;)V
    .locals 1
    .param p1    # Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "resultHandler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->p:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->n()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final G()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->p:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;

    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->l()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public a([BII)V
    .locals 5
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->p:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    sget-object v2, Lri3;->a:Lri3;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "getContext(...)"

    .line 22
    .line 23
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Lri3;->a(Landroid/content/Context;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x1

    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->getRotationCount()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eq v2, v3, :cond_1

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    if-eq v2, v4, :cond_1

    .line 41
    .line 42
    move v2, p2

    .line 43
    move v4, p3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v4, p2

    .line 46
    move v2, p3

    .line 47
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->i([BII)[B

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    move p2, v2

    .line 52
    move p3, v4

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto/16 :goto_8

    .line 56
    .line 57
    :cond_2
    :goto_1
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 58
    .line 59
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->z([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    new-instance p2, Lcom/google/zxing/BinaryBitmap;

    .line 69
    .line 70
    new-instance p3, Lcom/google/zxing/common/HybridBinarizer;

    .line 71
    .line 72
    invoke-direct {p3, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p2, p3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    :try_start_1
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->n:Lcom/google/zxing/MultiFormatReader;

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto :goto_6

    .line 89
    :catch_1
    move-exception p1

    .line 90
    goto :goto_4

    .line 91
    :catch_2
    move-exception p1

    .line 92
    goto :goto_5

    .line 93
    :cond_3
    const/4 p1, 0x0

    .line 94
    :goto_2
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    :try_start_2
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->n:Lcom/google/zxing/MultiFormatReader;

    .line 97
    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    :goto_3
    invoke-virtual {p1}, Lcom/google/zxing/MultiFormatReader;->reset()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_7

    .line 104
    :goto_4
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    .line 106
    .line 107
    :try_start_4
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->n:Lcom/google/zxing/MultiFormatReader;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 108
    .line 109
    if-eqz p1, :cond_5

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    .line 114
    .line 115
    :try_start_6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->n:Lcom/google/zxing/MultiFormatReader;

    .line 116
    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :goto_6
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->n:Lcom/google/zxing/MultiFormatReader;

    .line 121
    .line 122
    if-eqz p2, :cond_4

    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 125
    .line 126
    .line 127
    :cond_4
    throw p1

    .line 128
    :catch_3
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->n:Lcom/google/zxing/MultiFormatReader;

    .line 129
    .line 130
    if-eqz p1, :cond_5

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    :goto_7
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p1, Lcom/google/zxing/Result;

    .line 136
    .line 137
    if-eqz p1, :cond_6

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_6

    .line 144
    .line 145
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    xor-int/2addr p1, v3

    .line 150
    if-ne p1, v3, :cond_6

    .line 151
    .line 152
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->q:Landroid/os/Handler;

    .line 153
    .line 154
    if-eqz p1, :cond_6

    .line 155
    .line 156
    new-instance p2, Lkbg;

    .line 157
    .line 158
    invoke-direct {p2, p0, v2, v0, v1}, Lkbg;-><init>(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;Lkotlin/jvm/internal/Ref$ObjectRef;J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_9

    .line 165
    :goto_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    .line 167
    .line 168
    :cond_6
    :goto_9
    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->r:La87;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, La87;->a(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public d(Landroid/media/Image;)V
    .locals 1
    .param p1    # Landroid/media/Image;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getMultiFormatReader()Lcom/google/zxing/MultiFormatReader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->n:Lcom/google/zxing/MultiFormatReader;

    .line 2
    .line 3
    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->E()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->C()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->k()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->v:Landroid/view/ScaleGestureDetector;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->w:Landroid/view/GestureDetector;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 44
    :goto_1
    return p1

    .line 45
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1
.end method

.method public final setFormats(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "scanType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Libg;->a:Libg;

    invoke-virtual {p1}, Libg;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->setFormats(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :pswitch_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Libg;->a:Libg;

    invoke-virtual {p1}, Libg;->c()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->setFormats(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :pswitch_2
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Libg;->a:Libg;

    invoke-virtual {p1}, Libg;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->setFormats(Ljava/util/List;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setFormats(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;)V"
        }
    .end annotation

    const-string v0, "formats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->o:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->B()V

    return-void
.end method

.method public final setOnCameraOpenFailedListener(La87;)V
    .locals 1
    .param p1    # La87;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->r:La87;

    .line 7
    .line 8
    return-void
.end method

.method public final setOpenZoom(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->s:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setResultHandler(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;)V
    .locals 0
    .param p1    # Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->p:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->l()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->n()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public final z([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 11

    .line 1
    invoke-virtual {p0, p2, p3}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h(II)Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v10, Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 8
    .line 9
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    const/4 v9, 0x0

    .line 22
    move-object v1, v10

    .line 23
    move-object v2, p1

    .line 24
    move v3, p2

    .line 25
    move v4, p3

    .line 26
    invoke-direct/range {v1 .. v9}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v10, Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    move-object v0, v10

    .line 38
    move-object v1, p1

    .line 39
    move v2, p2

    .line 40
    move v3, p3

    .line 41
    move v6, p2

    .line 42
    move v7, p3

    .line 43
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    :goto_1
    return-object v10
.end method
