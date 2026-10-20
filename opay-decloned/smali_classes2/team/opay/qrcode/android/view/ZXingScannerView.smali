.class public final Lteam/opay/qrcode/android/view/ZXingScannerView;
.super Lteam/opay/qrcode/android/core/BarcodeScannerView;
.source "ZXingScannerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/qrcode/android/view/ZXingScannerView$Companion;,
        Lteam/opay/qrcode/android/view/ZXingScannerView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u001e\n\u0002\u0008\u0004\u0018\u0000 \"2\u00020\u0001:\u0002\u001e=B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008J\u001b\u0010\r\u001a\u00020\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\'\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0015\u0010\"\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008\"\u0010#J\'\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001b\u00a2\u0006\u0004\u0008%\u0010&J\'\u0010)\u001a\u0004\u0018\u00010(2\u0006\u0010\u001a\u001a\u00020\'2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001b\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008+\u0010\u0018R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0018\u00102\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u00101R\u001e\u00104\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u00103R\u0018\u00106\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u00105R\u0018\u00109\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0:8F\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010<\u00a8\u0006>"
    }
    d2 = {
        "Lteam/opay/qrcode/android/view/ZXingScannerView;",
        "Lteam/opay/qrcode/android/core/BarcodeScannerView;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attributeSet",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "Lcom/google/zxing/BarcodeFormat;",
        "formats",
        "",
        "setFormats",
        "(Ljava/util/List;)V",
        "Lteam/opay/qrcode/android/view/ZXingScannerView$a;",
        "resultHandler",
        "setResultHandler",
        "(Lteam/opay/qrcode/android/view/ZXingScannerView$a;)V",
        "Lz77;",
        "listener",
        "setOnCameraOpenFailedListener",
        "(Lz77;)V",
        "c",
        "()V",
        "",
        "data",
        "",
        "width",
        "height",
        "a",
        "([BII)V",
        "Landroid/net/Uri;",
        "uri",
        "y",
        "(Landroid/net/Uri;)V",
        "Lcom/google/zxing/PlanarYUVLuminanceSource;",
        "u",
        "([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;",
        "",
        "Lcom/google/zxing/RGBLuminanceSource;",
        "v",
        "([III)Lcom/google/zxing/RGBLuminanceSource;",
        "w",
        "",
        "t",
        "F",
        "IMAGE_DECODE_WIDTH",
        "Lcom/google/zxing/MultiFormatReader;",
        "Lcom/google/zxing/MultiFormatReader;",
        "mMultiFormatReader",
        "Ljava/util/List;",
        "mFormats",
        "Lteam/opay/qrcode/android/view/ZXingScannerView$a;",
        "mResultHandler",
        "x",
        "Lz77;",
        "mCameraOpenFailedListener",
        "",
        "getFormats",
        "()Ljava/util/Collection;",
        "Companion",
        "qrcode_release"
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
.field public static final A:Ljava/util/List;
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

.field public static final y:Lteam/opay/qrcode/android/view/ZXingScannerView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final z:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public t:F

.field public u:Lcom/google/zxing/MultiFormatReader;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Ljava/util/List;
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

.field public w:Lteam/opay/qrcode/android/view/ZXingScannerView$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public x:Lz77;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/qrcode/android/view/ZXingScannerView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/qrcode/android/view/ZXingScannerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/qrcode/android/view/ZXingScannerView;->y:Lteam/opay/qrcode/android/view/ZXingScannerView$Companion;

    .line 8
    .line 9
    const-string v0, "ZXingScannerView"

    .line 10
    .line 11
    sput-object v0, Lteam/opay/qrcode/android/view/ZXingScannerView;->z:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lteam/opay/qrcode/android/view/ZXingScannerView;->A:Ljava/util/List;

    .line 19
    .line 20
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    .line 46
    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    .line 51
    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    .line 56
    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    .line 66
    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    .line 71
    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    .line 76
    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    .line 81
    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    .line 86
    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    .line 91
    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    .line 96
    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    .line 101
    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/qrcode/android/core/BarcodeScannerView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x44700000    # 960.0f

    .line 2
    iput p1, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->t:F

    .line 3
    invoke-virtual {p0}, Lteam/opay/qrcode/android/view/ZXingScannerView;->w()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lteam/opay/qrcode/android/core/BarcodeScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x44700000    # 960.0f

    .line 5
    iput p1, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->t:F

    .line 6
    invoke-virtual {p0}, Lteam/opay/qrcode/android/view/ZXingScannerView;->w()V

    return-void
.end method

.method public static final A(Lteam/opay/qrcode/android/view/ZXingScannerView;Lcom/google/zxing/Result;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->w:Lteam/opay/qrcode/android/view/ZXingScannerView$a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lteam/opay/qrcode/android/view/ZXingScannerView$a;->a(Lcom/google/zxing/Result;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static final B(Lteam/opay/qrcode/android/view/ZXingScannerView;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->w:Lteam/opay/qrcode/android/view/ZXingScannerView$a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lteam/opay/qrcode/android/view/ZXingScannerView$a;->c()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic q(Lteam/opay/qrcode/android/view/ZXingScannerView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/qrcode/android/view/ZXingScannerView;->z(Lteam/opay/qrcode/android/view/ZXingScannerView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r(Lteam/opay/qrcode/android/view/ZXingScannerView;Lcom/google/zxing/Result;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/android/view/ZXingScannerView;->A(Lteam/opay/qrcode/android/view/ZXingScannerView;Lcom/google/zxing/Result;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s(Lteam/opay/qrcode/android/view/ZXingScannerView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/qrcode/android/view/ZXingScannerView;->B(Lteam/opay/qrcode/android/view/ZXingScannerView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic t(Lteam/opay/qrcode/android/view/ZXingScannerView;Lcom/google/zxing/Result;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/android/view/ZXingScannerView;->x(Lteam/opay/qrcode/android/view/ZXingScannerView;Lcom/google/zxing/Result;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final x(Lteam/opay/qrcode/android/view/ZXingScannerView;Lcom/google/zxing/Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->w:Lteam/opay/qrcode/android/view/ZXingScannerView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->w:Lteam/opay/qrcode/android/view/ZXingScannerView$a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lteam/opay/qrcode/android/view/ZXingScannerView$a;->a(Lcom/google/zxing/Result;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public static final z(Lteam/opay/qrcode/android/view/ZXingScannerView;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->w:Lteam/opay/qrcode/android/view/ZXingScannerView$a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lteam/opay/qrcode/android/view/ZXingScannerView$a;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 3
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
    iget-object v0, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->w:Lteam/opay/qrcode/android/view/ZXingScannerView$a;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    sget-object v0, Lqi3;->a:Lqi3;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "getContext(...)"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lqi3;->b(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/BarcodeScannerView;->getRotationCount()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    if-eq v0, v1, :cond_1

    .line 37
    .line 38
    move v0, p2

    .line 39
    move v1, p3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v1, p2

    .line 42
    move v0, p3

    .line 43
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/qrcode/android/core/BarcodeScannerView;->k([BII)[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    move p2, v0

    .line 48
    move p3, v1

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_5

    .line 52
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/qrcode/android/view/ZXingScannerView;->u([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    new-instance p2, Lcom/google/zxing/BinaryBitmap;

    .line 59
    .line 60
    new-instance p3, Lcom/google/zxing/common/HybridBinarizer;

    .line 61
    .line 62
    invoke-direct {p3, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, p3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    :try_start_1
    iget-object p1, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->u:Lcom/google/zxing/MultiFormatReader;

    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    .line 74
    .line 75
    .line 76
    move-result-object p1
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    iget-object p2, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->u:Lcom/google/zxing/MultiFormatReader;

    .line 78
    .line 79
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    iget-object p2, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->u:Lcom/google/zxing/MultiFormatReader;

    .line 88
    .line 89
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :catch_1
    iget-object p1, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->u:Lcom/google/zxing/MultiFormatReader;

    .line 97
    .line 98
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_2
    invoke-virtual {p1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :catch_2
    iget-object p1, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->u:Lcom/google/zxing/MultiFormatReader;

    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catch_3
    iget-object p1, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->u:Lcom/google/zxing/MultiFormatReader;

    .line 112
    .line 113
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    :goto_3
    const/4 p1, 0x0

    .line 118
    :goto_4
    if-eqz p1, :cond_4

    .line 119
    .line 120
    new-instance p2, Landroid/os/Handler;

    .line 121
    .line 122
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 127
    .line 128
    .line 129
    new-instance p3, Lnbg;

    .line 130
    .line 131
    invoke-direct {p3, p0, p1}, Lnbg;-><init>(Lteam/opay/qrcode/android/view/ZXingScannerView;Lcom/google/zxing/Result;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_6
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->x:Lz77;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lz77;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final getFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->v:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lteam/opay/qrcode/android/view/ZXingScannerView;->A:Ljava/util/List;

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

    .line 1
    const-string v0, "formats"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->v:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/qrcode/android/view/ZXingScannerView;->w()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setOnCameraOpenFailedListener(Lz77;)V
    .locals 1
    .param p1    # Lz77;
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
    iput-object p1, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->x:Lz77;

    .line 7
    .line 8
    return-void
.end method

.method public final setResultHandler(Lteam/opay/qrcode/android/view/ZXingScannerView$a;)V
    .locals 0
    .param p1    # Lteam/opay/qrcode/android/view/ZXingScannerView$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->w:Lteam/opay/qrcode/android/view/ZXingScannerView$a;

    .line 2
    .line 3
    return-void
.end method

.method public final u([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 11
    .param p1    # [B
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
    invoke-virtual {p0, p2, p3}, Lteam/opay/qrcode/android/core/BarcodeScannerView;->j(II)Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v2, v0

    .line 20
    move-object v3, p1

    .line 21
    move v4, p2

    .line 22
    move v5, p3

    .line 23
    move v8, p2

    .line 24
    move v9, p3

    .line 25
    invoke-direct/range {v2 .. v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    move-object v1, v0

    .line 29
    :catch_0
    return-object v1
.end method

.method public final v([III)Lcom/google/zxing/RGBLuminanceSource;
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
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final w()V
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
    invoke-virtual {p0}, Lteam/opay/qrcode/android/view/ZXingScannerView;->getFormats()Ljava/util/Collection;

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
    iput-object v1, p0, Lteam/opay/qrcode/android/view/ZXingScannerView;->u:Lcom/google/zxing/MultiFormatReader;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final y(Landroid/net/Uri;)V
    .locals 16
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "uri"

    .line 4
    .line 5
    move-object/from16 v4, p1

    .line 6
    .line 7
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Lteam/opay/qrcode/android/view/ZXingScannerView;->w:Lteam/opay/qrcode/android/view/ZXingScannerView$a;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_0
    sget-object v2, Lld1;->a:Lld1;

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v0, "getContext(...)"

    .line 22
    .line 23
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v0, v1, Lteam/opay/qrcode/android/view/ZXingScannerView;->t:F

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Lteam/opay/qrcode/android/core/BarcodeScannerView;->getPerformance()Lteam/opay/qrcode/android/PERFORMANCE;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v5}, Lteam/opay/qrcode/android/PERFORMANCE;->getRatio()F

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    mul-float v5, v5, v0

    .line 37
    .line 38
    iget v0, v1, Lteam/opay/qrcode/android/view/ZXingScannerView;->t:F

    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Lteam/opay/qrcode/android/core/BarcodeScannerView;->getPerformance()Lteam/opay/qrcode/android/PERFORMANCE;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v6}, Lteam/opay/qrcode/android/PERFORMANCE;->getRatio()F

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    mul-float v6, v6, v0

    .line 49
    .line 50
    const/16 v7, 0x12c

    .line 51
    .line 52
    move-object/from16 v4, p1

    .line 53
    .line 54
    invoke-virtual/range {v2 .. v7}, Lld1;->c(Landroid/content/Context;Landroid/net/Uri;FFI)Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    move-result-object v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 58
    if-nez v8, :cond_1

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    sget-object v3, Lteam/opay/qrcode/android/view/ZXingScannerView;->z:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v5, "local compressed width:"

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v5, " height:"

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-static {v3, v4}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    mul-int v3, v0, v2

    .line 100
    .line 101
    new-array v3, v3, [I

    .line 102
    .line 103
    const/4 v12, 0x0

    .line 104
    const/4 v13, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    move-object v9, v3

    .line 107
    move v11, v0

    .line 108
    move v14, v0

    .line 109
    move v15, v2

    .line 110
    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 111
    .line 112
    .line 113
    :try_start_1
    invoke-virtual {v1, v3, v0, v2}, Lteam/opay/qrcode/android/view/ZXingScannerView;->v([III)Lcom/google/zxing/RGBLuminanceSource;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    .line 119
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 120
    .line 121
    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    .line 122
    .line 123
    invoke-direct {v3, v0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    .line 128
    .line 129
    :try_start_2
    iget-object v0, v1, Lteam/opay/qrcode/android/view/ZXingScannerView;->u:Lcom/google/zxing/MultiFormatReader;

    .line 130
    .line 131
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    .line 135
    .line 136
    .line 137
    move-result-object v0
    :try_end_2
    .catch Lcom/google/zxing/ReaderException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :try_start_3
    iget-object v2, v1, Lteam/opay/qrcode/android/view/ZXingScannerView;->u:Lcom/google/zxing/MultiFormatReader;

    .line 139
    .line 140
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :catch_0
    move-exception v0

    .line 148
    goto :goto_3

    .line 149
    :catchall_0
    move-exception v0

    .line 150
    iget-object v2, v1, Lteam/opay/qrcode/android/view/ZXingScannerView;->u:Lcom/google/zxing/MultiFormatReader;

    .line 151
    .line 152
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :catch_1
    iget-object v0, v1, Lteam/opay/qrcode/android/view/ZXingScannerView;->u:Lcom/google/zxing/MultiFormatReader;

    .line 160
    .line 161
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :goto_0
    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :catch_2
    iget-object v0, v1, Lteam/opay/qrcode/android/view/ZXingScannerView;->u:Lcom/google/zxing/MultiFormatReader;

    .line 169
    .line 170
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :catch_3
    iget-object v0, v1, Lteam/opay/qrcode/android/view/ZXingScannerView;->u:Lcom/google/zxing/MultiFormatReader;

    .line 175
    .line 176
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 181
    :goto_2
    if-eqz v0, :cond_3

    .line 182
    .line 183
    new-instance v2, Landroid/os/Handler;

    .line 184
    .line 185
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 190
    .line 191
    .line 192
    new-instance v3, Llbg;

    .line 193
    .line 194
    invoke-direct {v3, v1, v0}, Llbg;-><init>(Lteam/opay/qrcode/android/view/ZXingScannerView;Lcom/google/zxing/Result;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_3
    new-instance v0, Landroid/os/Handler;

    .line 202
    .line 203
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 208
    .line 209
    .line 210
    new-instance v2, Lmbg;

    .line 211
    .line 212
    invoke-direct {v2, v1}, Lmbg;-><init>(Lteam/opay/qrcode/android/view/ZXingScannerView;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    :catch_4
    :goto_4
    return-void

    .line 223
    :catch_5
    new-instance v0, Landroid/os/Handler;

    .line 224
    .line 225
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 230
    .line 231
    .line 232
    new-instance v2, Ljbg;

    .line 233
    .line 234
    invoke-direct {v2, v1}, Ljbg;-><init>(Lteam/opay/qrcode/android/view/ZXingScannerView;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    .line 239
    .line 240
    return-void
.end method
