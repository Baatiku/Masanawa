.class public abstract Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;
.super Landroid/widget/FrameLayout;
.source "BarcodeScannerView.kt"

# interfaces
.implements Lhv1;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\'\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0015\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001b\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u0015\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u0007\u00a2\u0006\u0004\u0008#\u0010$J\u0015\u0010&\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0007\u00a2\u0006\u0004\u0008&\u0010$J\u0015\u0010(\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020\u0007\u00a2\u0006\u0004\u0008(\u0010$J\u0015\u0010*\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\u0007\u00a2\u0006\u0004\u0008*\u0010$J\u0015\u0010,\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u0007\u00a2\u0006\u0004\u0008,\u0010$J\u0015\u0010.\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u001e\u00a2\u0006\u0004\u0008.\u0010!J\u0015\u00100\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u001e\u00a2\u0006\u0004\u00080\u0010!J\u0015\u00102\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u0007\u00a2\u0006\u0004\u00082\u0010$J\u0015\u00104\u001a\u00020\u000b2\u0006\u00103\u001a\u00020\u001e\u00a2\u0006\u0004\u00084\u0010!J\u0015\u00106\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u001b\u00a2\u0006\u0004\u00086\u00107J\u0015\u00109\u001a\u00020\u000b2\u0006\u00108\u001a\u00020\u001e\u00a2\u0006\u0004\u00089\u0010!J\r\u0010:\u001a\u00020\u000b\u00a2\u0006\u0004\u0008:\u0010\u000fJ\r\u0010;\u001a\u00020\u000b\u00a2\u0006\u0004\u0008;\u0010\u000fJ\r\u0010<\u001a\u00020\u000b\u00a2\u0006\u0004\u0008<\u0010\u000fJ\u0015\u0010?\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020=\u00a2\u0006\u0004\u0008?\u0010@J\r\u0010A\u001a\u00020=\u00a2\u0006\u0004\u0008A\u0010BJ\u001f\u0010F\u001a\u0004\u0018\u00010E2\u0006\u0010C\u001a\u00020\u00072\u0006\u0010D\u001a\u00020\u0007\u00a2\u0006\u0004\u0008F\u0010GJ\u0015\u0010I\u001a\u00020\u000b2\u0006\u0010H\u001a\u00020\u001e\u00a2\u0006\u0004\u0008I\u0010!J\u0015\u0010K\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020\u001b\u00a2\u0006\u0004\u0008K\u00107J\r\u0010L\u001a\u00020\u000b\u00a2\u0006\u0004\u0008L\u0010\u000fJ\r\u0010M\u001a\u00020\u001e\u00a2\u0006\u0004\u0008M\u0010NJ%\u0010R\u001a\u00020O2\u0006\u0010P\u001a\u00020O2\u0006\u0010Q\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\u0007\u00a2\u0006\u0004\u0008R\u0010SJ\u0015\u0010V\u001a\u00020\u000b2\u0006\u0010U\u001a\u00020T\u00a2\u0006\u0004\u0008V\u0010WJ\u0015\u0010Y\u001a\u00020\u000b2\u0006\u0010X\u001a\u00020T\u00a2\u0006\u0004\u0008Y\u0010WJ\u000f\u0010Z\u001a\u0004\u0018\u00010E\u00a2\u0006\u0004\u0008Z\u0010[J\r\u0010\\\u001a\u00020\u001e\u00a2\u0006\u0004\u0008\\\u0010NJ\u0015\u0010^\u001a\u00020\u000b2\u0006\u0010]\u001a\u00020\u001b\u00a2\u0006\u0004\u0008^\u00107J\u0015\u0010_\u001a\u00020\u000b2\u0006\u0010]\u001a\u00020\u001b\u00a2\u0006\u0004\u0008_\u00107J\r\u0010`\u001a\u00020\u000b\u00a2\u0006\u0004\u0008`\u0010\u000fJ\r\u0010a\u001a\u00020\u001e\u00a2\u0006\u0004\u0008a\u0010NJ\r\u0010b\u001a\u00020\u000b\u00a2\u0006\u0004\u0008b\u0010\u000fJ\r\u0010c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008c\u0010\u000fJ\r\u0010d\u001a\u00020\u000b\u00a2\u0006\u0004\u0008d\u0010\u000fR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008e\u0010fR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010gR\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0018\u0010m\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u0018\u0010o\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010nR\u0018\u0010q\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010pR\u0016\u0010s\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010rR\u0014\u0010v\u001a\u00020t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010uR\u0016\u0010x\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010wR\u0016\u0010y\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010rR\u0016\u0010{\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010zR\u0016\u0010}\u001a\u00020T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010|R\u0016\u0010~\u001a\u00020T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010|R\u0011\u0010\u001f\u001a\u00020\u001e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u007f\u0010NR\u0014\u0010\u0082\u0001\u001a\u00020\u00078F\u00a2\u0006\u0008\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001\u00a8\u0006\u0083\u0001"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;",
        "Landroid/widget/FrameLayout;",
        "Lhv1;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "o",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "q",
        "()V",
        "Leb7;",
        "f",
        "(Landroid/content/Context;)Leb7;",
        "min",
        "max",
        "e",
        "(III)I",
        "Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;",
        "getViewFinderConfig",
        "()Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;",
        "Lkotlin/Pair;",
        "",
        "getQrCodeRation",
        "()Lkotlin/Pair;",
        "",
        "flashSupported",
        "b",
        "(Z)V",
        "laserColor",
        "setLaserColor",
        "(I)V",
        "maskColor",
        "setMaskColor",
        "borderColor",
        "setBorderColor",
        "borderStrokeWidth",
        "setBorderStrokeWidth",
        "borderLineLength",
        "setBorderLineLength",
        "isLaserEnabled",
        "setLaserEnabled",
        "isBorderCornerRounded",
        "setIsBorderCornerRounded",
        "borderCornerRadius",
        "setBorderCornerRadius",
        "isSquareViewFinder",
        "setSquareViewFinder",
        "borderAlpha",
        "setBorderAlpha",
        "(F)V",
        "isFullScreen",
        "setFullScreen",
        "r",
        "p",
        "s",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "perf",
        "setPerformance",
        "(Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;)V",
        "getPerformance",
        "()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "readerWidth",
        "readerHeight",
        "Landroid/graphics/Rect;",
        "h",
        "(II)Landroid/graphics/Rect;",
        "shouldScaleToFill",
        "setShouldScaleToFill",
        "aspectTolerance",
        "setAspectTolerance",
        "t",
        "g",
        "()Z",
        "",
        "data",
        "w",
        "i",
        "([BII)[B",
        "",
        "type",
        "setScanType",
        "(Ljava/lang/String;)V",
        "from",
        "setScanFrom",
        "getViewFinderFrameRect",
        "()Landroid/graphics/Rect;",
        "j",
        "pendingScale",
        "setZoomRatio",
        "setCurrentZoom",
        "u",
        "k",
        "l",
        "n",
        "m",
        "a",
        "Landroid/content/Context;",
        "Landroid/util/AttributeSet;",
        "c",
        "I",
        "Lteam/opay/opb/qrcode/scanner/view/CameraPreview;",
        "d",
        "Lteam/opay/opb/qrcode/scanner/view/CameraPreview;",
        "mPreview",
        "Leb7;",
        "mViewFinderView",
        "Landroid/graphics/Rect;",
        "mFramingRectInPreview",
        "Z",
        "mShouldScaleToFill",
        "Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;",
        "Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;",
        "finderAttr",
        "F",
        "mAspectTolerance",
        "mIsCameraViewInitialized",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "performance",
        "Ljava/lang/String;",
        "scanType",
        "scanFrom",
        "getFlashSupported",
        "getRotationCount",
        "()I",
        "rotationCount",
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


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/util/AttributeSet;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:I

.field public d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Leb7;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Z

.field public final h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:F

.field public j:Z

.field public k:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
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

    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->b:Landroid/util/AttributeSet;

    .line 7
    iput p3, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->c:I

    const/4 p3, 0x1

    .line 8
    iput-boolean p3, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->g:Z

    .line 9
    new-instance p3, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    invoke-direct {p3, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    const p3, 0x3e4ccccd    # 0.2f

    .line 10
    iput p3, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->i:F

    .line 11
    sget-object p3, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_HIGH:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    iput-object p3, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->k:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 12
    const-string p3, "1"

    iput-object p3, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->l:Ljava/lang/String;

    .line 13
    const-string p3, "default"

    iput-object p3, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->m:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->o(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getQrCodeRation()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lri3;->a:Lri3;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lri3;->b(Landroid/content/Context;)Landroid/graphics/Point;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 10
    .line 11
    const/16 v1, 0x640

    .line 12
    .line 13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-le v0, v1, :cond_0

    .line 20
    .line 21
    new-instance v0, Lkotlin/Pair;

    .line 22
    .line 23
    const/high16 v1, 0x3f000000    # 0.5f

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/16 v1, 0x578

    .line 34
    .line 35
    if-le v0, v1, :cond_1

    .line 36
    .line 37
    new-instance v0, Lkotlin/Pair;

    .line 38
    .line 39
    const v1, 0x3f19999a    # 0.6f

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Lkotlin/Pair;

    .line 51
    .line 52
    const v1, 0x3f733333    # 0.95f

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-object v0
.end method

.method private final getViewFinderConfig()Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;
    .locals 5

    .line 1
    sget-object v0, Luk8;->c:Luk8;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->l:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->m:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " scanType = "

    .line 20
    .line 21
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", scanFrom="

    .line 28
    .line 29
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x2

    .line 41
    invoke-static {v0, v1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 45
    .line 46
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->o()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->l:Ljava/lang/String;

    .line 53
    .line 54
    const-string v1, "2"

    .line 55
    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    new-instance v0, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    .line 63
    .line 64
    invoke-direct {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lkotlin/Pair;

    .line 68
    .line 69
    const v2, 0x3f733333    # 0.95f

    .line 70
    .line 71
    .line 72
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const/high16 v3, 0x3f000000    # 0.5f

    .line 77
    .line 78
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;->g(Lkotlin/Pair;)Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/high16 v1, 0x40800000    # 4.0f

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;->i(F)Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;->a()Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    .line 101
    .line 102
    invoke-direct {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->getQrCodeRation()Lkotlin/Pair;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;->h(Lkotlin/Pair;)Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;->a()Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_0
    return-object v0
.end method


# virtual methods
.method public b(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(III)I
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lkotlin/ranges/c;->c(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1, p3}, Lkotlin/ranges/c;->f(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final f(Landroid/content/Context;)Leb7;
    .locals 7

    .line 1
    new-instance v6, Lteam/opay/opb/qrcode/scanner/view/FinderView;

    .line 2
    .line 3
    const/4 v4, 0x6

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v0, v6

    .line 8
    move-object v1, p1

    .line 9
    invoke-direct/range {v0 .. v5}, Lteam/opay/opb/qrcode/scanner/view/FinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->b()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setBorderColor(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->h()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setLaserColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->i()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setLaserEnabled(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 40
    .line 41
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->o()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setFullScreen(Z)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 49
    .line 50
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->g()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setBorderStrokeWidth(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 58
    .line 59
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->f()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setBorderLineLength(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 67
    .line 68
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->e()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setBorderLineHeight(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 76
    .line 77
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->j()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setMaskColor(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 85
    .line 86
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->d()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setBorderCornerRounded(Z)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 94
    .line 95
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->c()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setBorderCornerRadius(I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 103
    .line 104
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->n()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setViewFinderOffset(I)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->l:Ljava/lang/String;

    .line 112
    .line 113
    const-string v0, "2"

    .line 114
    .line 115
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_0

    .line 120
    .line 121
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 122
    .line 123
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->o()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_0

    .line 128
    .line 129
    const/4 p1, 0x0

    .line 130
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setSquareViewFinder(Z)V

    .line 131
    .line 132
    .line 133
    :cond_0
    invoke-direct {p0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->getViewFinderConfig()Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setViewFinderConfig(Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;)V

    .line 138
    .line 139
    .line 140
    return-object v6
.end method

.method public final g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->G()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    return v1
.end method

.method public final getFlashSupported()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->H()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    return v1
.end method

.method public final getPerformance()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->k:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRotationCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->getDisplayOrientation()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    div-int/lit8 v0, v0, 0x5a

    .line 15
    .line 16
    return v0
.end method

.method public final getViewFinderFrameRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Leb7;->getFramingRect()Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final declared-synchronized h(II)Landroid/graphics/Rect;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->N()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_c

    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->f:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :cond_0
    :try_start_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 21
    .line 22
    if-eqz v0, :cond_b

    .line 23
    .line 24
    invoke-interface {v0}, Leb7;->getFramingRect()Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :cond_1
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    invoke-interface {v3}, Leb7;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto/16 :goto_7

    .line 44
    .line 45
    :cond_2
    const/4 v3, 0x0

    .line 46
    :goto_0
    iget-object v5, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 47
    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    invoke-interface {v5}, Leb7;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/4 v5, 0x0

    .line 56
    :goto_1
    if-lez v3, :cond_a

    .line 57
    .line 58
    if-gtz v5, :cond_4

    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_4
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 63
    .line 64
    if-eqz v3, :cond_9

    .line 65
    .line 66
    invoke-virtual {v3}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->getTextureView()Landroid/view/TextureView;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-nez v3, :cond_5

    .line 71
    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :cond_5
    new-instance v5, Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v6, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 84
    .line 85
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    check-cast v0, Landroid/view/ViewGroup;

    .line 89
    .line 90
    iget-object v6, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 91
    .line 92
    const-string v7, "null cannot be cast to non-null type android.view.View"

    .line 93
    .line 94
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    check-cast v6, Landroid/view/View;

    .line 98
    .line 99
    invoke-virtual {v0, v6, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 103
    .line 104
    if-eqz v0, :cond_8

    .line 105
    .line 106
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->getPreviewSize()Landroid/util/Size;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-nez v0, :cond_6

    .line 111
    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :cond_6
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    int-to-float v7, v1

    .line 131
    int-to-float v6, v6

    .line 132
    div-float v6, v7, v6

    .line 133
    .line 134
    int-to-float v8, v0

    .line 135
    int-to-float v3, v3

    .line 136
    div-float v3, v8, v3

    .line 137
    .line 138
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 143
    .line 144
    int-to-float v6, v6

    .line 145
    mul-float v6, v6, v3

    .line 146
    .line 147
    iget v9, v5, Landroid/graphics/Rect;->top:I

    .line 148
    .line 149
    int-to-float v9, v9

    .line 150
    mul-float v9, v9, v3

    .line 151
    .line 152
    iget v10, v5, Landroid/graphics/Rect;->right:I

    .line 153
    .line 154
    int-to-float v10, v10

    .line 155
    mul-float v10, v10, v3

    .line 156
    .line 157
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 158
    .line 159
    int-to-float v5, v5

    .line 160
    mul-float v5, v5, v3

    .line 161
    .line 162
    if-ne v1, p1, :cond_7

    .line 163
    .line 164
    if-ne v0, p2, :cond_7

    .line 165
    .line 166
    new-instance v0, Landroid/graphics/Rect;

    .line 167
    .line 168
    float-to-int v1, v6

    .line 169
    add-int/lit8 v3, p1, -0x1

    .line 170
    .line 171
    invoke-virtual {p0, v1, v4, v3}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e(III)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    float-to-int v3, v9

    .line 176
    add-int/lit8 v6, p2, -0x1

    .line 177
    .line 178
    invoke-virtual {p0, v3, v4, v6}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e(III)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    float-to-int v4, v10

    .line 183
    invoke-virtual {p0, v4, v2, p1}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e(III)I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    float-to-int v4, v5

    .line 188
    invoke-virtual {p0, v4, v2, p2}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e(III)I

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    invoke-direct {v0, v1, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 193
    .line 194
    .line 195
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->f:Landroid/graphics/Rect;

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_7
    int-to-float v0, p1

    .line 199
    div-float v1, v0, v7

    .line 200
    .line 201
    int-to-float v3, p2

    .line 202
    div-float v11, v3, v8

    .line 203
    .line 204
    invoke-static {v1, v11}, Ljava/lang/Math;->max(FF)F

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    mul-float v7, v7, v1

    .line 209
    .line 210
    sub-float/2addr v7, v0

    .line 211
    const/high16 v0, 0x40000000    # 2.0f

    .line 212
    .line 213
    div-float/2addr v7, v0

    .line 214
    mul-float v8, v8, v1

    .line 215
    .line 216
    sub-float/2addr v8, v3

    .line 217
    div-float/2addr v8, v0

    .line 218
    mul-float v6, v6, v1

    .line 219
    .line 220
    sub-float/2addr v6, v7

    .line 221
    float-to-int v0, v6

    .line 222
    mul-float v9, v9, v1

    .line 223
    .line 224
    sub-float/2addr v9, v8

    .line 225
    float-to-int v3, v9

    .line 226
    mul-float v10, v10, v1

    .line 227
    .line 228
    sub-float/2addr v10, v7

    .line 229
    float-to-int v6, v10

    .line 230
    mul-float v5, v5, v1

    .line 231
    .line 232
    sub-float/2addr v5, v8

    .line 233
    float-to-int v1, v5

    .line 234
    new-instance v5, Landroid/graphics/Rect;

    .line 235
    .line 236
    add-int/lit8 v7, p1, -0x1

    .line 237
    .line 238
    invoke-virtual {p0, v0, v4, v7}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e(III)I

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    add-int/lit8 v8, p2, -0x1

    .line 243
    .line 244
    invoke-virtual {p0, v3, v4, v8}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e(III)I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    add-int/2addr v0, v2

    .line 249
    invoke-virtual {p0, v6, v0, p1}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e(III)I

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    add-int/2addr v3, v2

    .line 254
    invoke-virtual {p0, v1, v3, p2}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e(III)I

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    invoke-direct {v5, v7, v4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 259
    .line 260
    .line 261
    iput-object v5, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->f:Landroid/graphics/Rect;

    .line 262
    .line 263
    :goto_2
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->f:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    .line 265
    monitor-exit p0

    .line 266
    return-object p1

    .line 267
    :cond_8
    :goto_3
    monitor-exit p0

    .line 268
    return-object v1

    .line 269
    :cond_9
    :goto_4
    monitor-exit p0

    .line 270
    return-object v1

    .line 271
    :cond_a
    :goto_5
    monitor-exit p0

    .line 272
    return-object v1

    .line 273
    :cond_b
    :goto_6
    monitor-exit p0

    .line 274
    return-object v1

    .line 275
    :cond_c
    :try_start_2
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->f:Landroid/graphics/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    .line 277
    monitor-exit p0

    .line 278
    return-object v1

    .line 279
    :goto_7
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    throw p1
.end method

.method public final i([BII)[B
    .locals 10
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->getRotationCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    move v9, p3

    .line 20
    move p3, p2

    .line 21
    move p2, v9

    .line 22
    if-ge v3, v0, :cond_3

    .line 23
    .line 24
    array-length v4, p1

    .line 25
    new-array v4, v4, [B

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_1
    if-ge v5, p2, :cond_2

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    :goto_2
    if-ge v6, p3, :cond_1

    .line 32
    .line 33
    mul-int v7, v6, p2

    .line 34
    .line 35
    add-int/2addr v7, p2

    .line 36
    sub-int/2addr v7, v5

    .line 37
    sub-int/2addr v7, v1

    .line 38
    mul-int v8, v5, p3

    .line 39
    .line 40
    add-int/2addr v8, v6

    .line 41
    aget-byte v8, p1, v8

    .line 42
    .line 43
    aput-byte v8, v4, v7

    .line 44
    .line 45
    add-int/lit8 v6, v6, 0x1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    move-object p1, v4

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    :goto_3
    return-object p1
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->M()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->O()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->S()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lteam/opay/business/tts/TtsPlayer;->f:Lteam/opay/business/tts/TtsPlayer$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/business/tts/TtsPlayer$Companion;->a()Lteam/opay/business/tts/TtsPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lteam/opay/opb/qrcode/core/R$raw;->qr_core_beep:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lteam/opay/business/tts/TtsPlayer;->p(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->U()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final o(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->BarcodeScannerView:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "obtainStyledAttributes(...)"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    sget p2, Lteam/opay/opb/qrcode/scanner/R$styleable;->BarcodeScannerView_shouldScaleToFill:I

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {p0, p2}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->setShouldScaleToFill(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 23
    .line 24
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->BarcodeScannerView_laserEnabled:I

    .line 25
    .line 26
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->i()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->z(Z)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 38
    .line 39
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->BarcodeScannerView_laserColor:I

    .line 40
    .line 41
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->h()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->y(I)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 53
    .line 54
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->BarcodeScannerView_borderColor:I

    .line 55
    .line 56
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->b()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->r(I)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 68
    .line 69
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->BarcodeScannerView_maskColor:I

    .line 70
    .line 71
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->j()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->A(I)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 83
    .line 84
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->BarcodeScannerView_borderWidth:I

    .line 85
    .line 86
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->g()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->w(I)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 98
    .line 99
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->BarcodeScannerView_borderHeight:I

    .line 100
    .line 101
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->e()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->u(I)V

    .line 110
    .line 111
    .line 112
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 113
    .line 114
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->BarcodeScannerView_borderLength:I

    .line 115
    .line 116
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->f()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->v(I)V

    .line 125
    .line 126
    .line 127
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 128
    .line 129
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->BarcodeScannerView_roundedCorner:I

    .line 130
    .line 131
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->d()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->t(Z)V

    .line 140
    .line 141
    .line 142
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 143
    .line 144
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->BarcodeScannerView_cornerRadius:I

    .line 145
    .line 146
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->c()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->s(I)V

    .line 155
    .line 156
    .line 157
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 158
    .line 159
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->BarcodeScannerView_squaredFinder:I

    .line 160
    .line 161
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->k()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->B(Z)V

    .line 170
    .line 171
    .line 172
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 173
    .line 174
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->BarcodeScannerView_borderAlpha:I

    .line 175
    .line 176
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->a()F

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->q(F)V

    .line 185
    .line 186
    .line 187
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 188
    .line 189
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->BarcodeScannerView_finderOffset:I

    .line 190
    .line 191
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->n()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->F(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :catchall_0
    move-exception p2

    .line 207
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    .line 209
    .line 210
    throw p2
.end method

.method public final p()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->q()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Leb7;->a()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->k:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->setPerformance(Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->setCameraPreviewListener(Lhv1;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget v1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->i:F

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->setAspectTolerance(F)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-boolean v1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->g:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->setShouldScaleToFill(Z)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->g:Z

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    new-instance v0, Landroid/widget/RelativeLayout;

    .line 48
    .line 49
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->a:Landroid/content/Context;

    .line 50
    .line 51
    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x11

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 57
    .line 58
    .line 59
    const/high16 v1, -0x1000000

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->a:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->f(Landroid/content/Context;)Leb7;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 85
    .line 86
    instance-of v1, v0, Landroid/view/View;

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    check-cast v0, Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    invoke-interface {v0}, Leb7;->d()V

    .line 100
    .line 101
    .line 102
    :cond_4
    return-void

    .line 103
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    const-string v1, "IViewFinder object returned by \'createViewFinderView()\' should be instance of android.view.View"

    .line 106
    .line 107
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->p()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->j:Z

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->Z()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->c0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setAspectTolerance(F)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->i:F

    .line 2
    .line 3
    return-void
.end method

.method public final setBorderAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->q(F)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->a()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-interface {p1, v0}, Leb7;->setBorderAlpha(F)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Leb7;->a()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final setBorderColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->r(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->b()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-interface {p1, v0}, Leb7;->setBorderColor(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Leb7;->a()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final setBorderCornerRadius(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->s(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->c()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-interface {p1, v0}, Leb7;->setBorderCornerRadius(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Leb7;->a()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final setBorderLineLength(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->v(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->f()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-interface {p1, v0}, Leb7;->setBorderLineLength(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Leb7;->a()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final setBorderStrokeWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->w(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->g()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-interface {p1, v0}, Leb7;->setBorderStrokeWidth(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Leb7;->a()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final setCurrentZoom(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->setCurrentZoom(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setFullScreen(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->x(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Leb7;->setFullScreen(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Leb7;->a()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final setIsBorderCornerRounded(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->t(Z)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->d()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-interface {p1, v0}, Leb7;->setBorderCornerRounded(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Leb7;->a()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final setLaserColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->y(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->h()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-interface {p1, v0}, Leb7;->setLaserColor(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Leb7;->a()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final setLaserEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->z(Z)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->i()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-interface {p1, v0}, Leb7;->setLaserEnabled(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Leb7;->a()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final setMaskColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->A(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->j()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-interface {p1, v0}, Leb7;->setMaskColor(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Leb7;->a()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final setPerformance(Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;)V
    .locals 1
    .param p1    # Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "perf"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->k:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 7
    .line 8
    return-void
.end method

.method public final setScanFrom(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->m:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setScanType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->l:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setShouldScaleToFill(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSquareViewFinder(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->B(Z)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->h:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->k()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-interface {p1, v0}, Leb7;->setSquareViewFinder(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->e:Leb7;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Leb7;->a()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final setZoomRatio(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->setZoomRatio(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->d0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->d:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->e0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
