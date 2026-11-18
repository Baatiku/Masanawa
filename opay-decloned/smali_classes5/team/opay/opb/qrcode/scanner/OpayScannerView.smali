.class public final Lteam/opay/opb/qrcode/scanner/OpayScannerView;
.super Landroid/widget/FrameLayout;
.source "OpayScannerView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\r\u001a\u00020\u000c2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001d\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ\u0017\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u001cH\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\r\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008!\u0010\"J\r\u0010#\u001a\u00020 \u00a2\u0006\u0004\u0008#\u0010\"J\r\u0010$\u001a\u00020\u000c\u00a2\u0006\u0004\u0008$\u0010\u001aJ\r\u0010%\u001a\u00020\u000c\u00a2\u0006\u0004\u0008%\u0010\u001aJ\r\u0010&\u001a\u00020\u000c\u00a2\u0006\u0004\u0008&\u0010\u001aJ\r\u0010\'\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\'\u0010\u001aJ\u000f\u0010)\u001a\u0004\u0018\u00010(\u00a2\u0006\u0004\u0008)\u0010*J\r\u0010+\u001a\u00020\u000c\u00a2\u0006\u0004\u0008+\u0010\u001aJ!\u0010,\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010/\u001a\u00020.2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008/\u00100J\u001f\u00101\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u00081\u0010\u0018J\u0017\u00103\u001a\u00020\u000c2\u0006\u00102\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u00083\u00104J\u0017\u00106\u001a\u00020\u000c2\u0006\u00105\u001a\u00020 H\u0002\u00a2\u0006\u0004\u00086\u00107J\u0017\u00109\u001a\u00020\u000c2\u0006\u00108\u001a\u00020 H\u0002\u00a2\u0006\u0004\u00089\u00107J\u0019\u0010<\u001a\u00020\u000c2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0002\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010?\u001a\u00020\u000c2\u0006\u0010>\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008?\u0010@J\u000f\u0010B\u001a\u00020AH\u0002\u00a2\u0006\u0004\u0008B\u0010CJ\u001b\u0010E\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020:0DH\u0002\u00a2\u0006\u0004\u0008E\u0010FJ\u0019\u0010I\u001a\u00020\u000c2\u0008\u0010H\u001a\u0004\u0018\u00010GH\u0002\u00a2\u0006\u0004\u0008I\u0010JJ\u000f\u0010K\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008K\u0010\u001aJ\u000f\u0010L\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008L\u0010\u001aJ\u000f\u0010M\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008M\u0010\u001aJ\u000f\u0010N\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008N\u0010\u001aR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0014\u0010T\u001a\u00020Q8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0016\u0010W\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0018\u0010Z\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u0018\u0010]\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\u0014\u0010`\u001a\u00020^8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u0010_R\u0016\u0010c\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0016\u0010e\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010bR\u0016\u0010g\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010bR\u0016\u0010i\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010bR\u0018\u0010m\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u0018\u0010p\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010oR\u0018\u0010s\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010r\u00a8\u0006t"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/OpayScannerView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;",
        "config",
        "",
        "o",
        "(Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;)V",
        "Lag8;",
        "lifecycleOwner",
        "Le4d;",
        "listener",
        "A",
        "(Lag8;Le4d;)V",
        "Landroid/app/Activity;",
        "activity",
        "D",
        "(Landroid/app/Activity;Lag8;)V",
        "s",
        "()V",
        "r",
        "Landroid/net/Uri;",
        "uri",
        "l",
        "(Landroid/net/Uri;)V",
        "",
        "q",
        "()Z",
        "m",
        "E",
        "t",
        "y",
        "v",
        "Lua7;",
        "getScanTrack",
        "()Lua7;",
        "w",
        "B",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Leb7;",
        "n",
        "(Landroid/content/Context;)Leb7;",
        "C",
        "owner",
        "f",
        "(Lag8;)V",
        "isFullScreen",
        "setFullScreen",
        "(Z)V",
        "isUseDefaultFinderView",
        "setUseDefaultFinderView",
        "",
        "topOffsetRatio",
        "setTopOffsetRatio",
        "(Ljava/lang/Float;)V",
        "topOffset",
        "setTopOffset",
        "(I)V",
        "Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;",
        "getViewFinderConfig",
        "()Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;",
        "Lkotlin/Pair;",
        "getQrCodeRation",
        "()Lkotlin/Pair;",
        "Landroid/graphics/Rect;",
        "customFrameRect",
        "setCustomFrameRect",
        "(Landroid/graphics/Rect;)V",
        "p",
        "x",
        "u",
        "z",
        "a",
        "Landroid/content/Context;",
        "",
        "b",
        "Ljava/lang/String;",
        "tag",
        "c",
        "Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;",
        "mScanViewConfig",
        "d",
        "Le4d;",
        "mScanViewListener",
        "e",
        "Leb7;",
        "mFinderView",
        "Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;",
        "Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;",
        "finderAttr",
        "g",
        "Z",
        "mIsSdkInitialized",
        "h",
        "mIsCameraViewInitialized",
        "i",
        "mIsLiveDataBind",
        "j",
        "mIsDestroyed",
        "Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;",
        "k",
        "Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;",
        "mScanImageAnalyzer",
        "Lteam/opay/opb/qrcode/scanner/controller/ICameraController;",
        "Lteam/opay/opb/qrcode/scanner/controller/ICameraController;",
        "mCameraController",
        "Lteam/opay/opb/qrcode/scanner/track/ScanTrack;",
        "Lteam/opay/opb/qrcode/scanner/track/ScanTrack;",
        "mScanTrack",
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

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Le4d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Leb7;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->a:Landroid/content/Context;

    .line 6
    const-string p3, "OpayScannerView"

    iput-object p3, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->b:Ljava/lang/String;

    .line 7
    new-instance p3, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;

    invoke-direct {p3}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;-><init>()V

    invoke-virtual {p3}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->a()Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    move-result-object p3

    iput-object p3, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 8
    new-instance p3, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    invoke-direct {p3, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 9
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->B(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/opb/qrcode/scanner/OpayScannerView;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->g(Lteam/opay/opb/qrcode/scanner/OpayScannerView;Ljava/lang/Throwable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/opb/qrcode/scanner/OpayScannerView;Lteam/opay/opb/qrcode/core/data/ImageItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->i(Lteam/opay/opb/qrcode/scanner/OpayScannerView;Lteam/opay/opb/qrcode/core/data/ImageItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/opb/qrcode/scanner/OpayScannerView;Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->k(Lteam/opay/opb/qrcode/scanner/OpayScannerView;Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/opb/qrcode/scanner/OpayScannerView;Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->j(Lteam/opay/opb/qrcode/scanner/OpayScannerView;Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/opb/qrcode/scanner/OpayScannerView;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->h(Lteam/opay/opb/qrcode/scanner/OpayScannerView;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g(Lteam/opay/opb/qrcode/scanner/OpayScannerView;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->z(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->d:Le4d;

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    invoke-interface {p0, p1}, Le4d;->a(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
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
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->a:Landroid/content/Context;

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
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 6
    .line 7
    invoke-virtual {v2}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->f()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 12
    .line 13
    invoke-virtual {v3}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->c()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " scanType = "

    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", scanFrom="

    .line 34
    .line 35
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x2

    .line 47
    invoke-static {v0, v1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 51
    .line 52
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->o()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 59
    .line 60
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->f()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "2"

    .line 65
    .line 66
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    new-instance v0, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    .line 73
    .line 74
    invoke-direct {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lkotlin/Pair;

    .line 78
    .line 79
    const v2, 0x3f733333    # 0.95f

    .line 80
    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const/high16 v3, 0x3f000000    # 0.5f

    .line 87
    .line 88
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;->g(Lkotlin/Pair;)Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const/high16 v1, 0x40800000    # 4.0f

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;->i(F)Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;->a()Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    .line 111
    .line 112
    invoke-direct {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->getQrCodeRation()Lkotlin/Pair;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;->h(Lkotlin/Pair;)Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;->a()Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :goto_0
    return-object v0
.end method

.method public static final h(Lteam/opay/opb/qrcode/scanner/OpayScannerView;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->A()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->d:Le4d;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-interface {p0, p1}, Le4d;->b(Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static final i(Lteam/opay/opb/qrcode/scanner/OpayScannerView;Lteam/opay/opb/qrcode/core/data/ImageItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->B(Lteam/opay/opb/qrcode/core/data/ImageItem;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final j(Lteam/opay/opb/qrcode/scanner/OpayScannerView;Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;->a()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lteam/opay/opb/qrcode/core/data/DecodeItem;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/data/DecodeItem;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v3, v1

    .line 29
    :goto_1
    if-nez v3, :cond_2

    .line 30
    .line 31
    const-string v3, ""

    .line 32
    .line 33
    :cond_2
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/data/DecodeItem;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    move-object v4, v1

    .line 41
    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/data/DecodeItem;->c()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v3}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_5

    .line 60
    .line 61
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 62
    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    invoke-virtual {v1, v4, v0, v2}, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_5
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->d:Le4d;

    .line 69
    .line 70
    if-eqz p0, :cond_6

    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, p1}, Le4d;->f(Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;)V

    .line 76
    .line 77
    .line 78
    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p0
.end method

.method public static final k(Lteam/opay/opb/qrcode/scanner/OpayScannerView;Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult;)Lkotlin/Unit;
    .locals 5

    .line 1
    instance-of v0, p1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapException;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    check-cast v1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapException;

    .line 11
    .line 12
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapException;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapException;->b()Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v2, v1}, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->w(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->d:Le4d;

    .line 24
    .line 25
    if-eqz p0, :cond_e

    .line 26
    .line 27
    check-cast p1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapException;

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapException;->a()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapException;->b()Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p0, v0, p1}, Le4d;->d(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_1
    instance-of v0, p1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapSuccess;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 47
    .line 48
    if-eqz p0, :cond_e

    .line 49
    .line 50
    check-cast p1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapSuccess;

    .line 51
    .line 52
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapSuccess;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->x(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_2
    instance-of v0, p1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    move-object v1, p1

    .line 70
    check-cast v1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;

    .line 71
    .line 72
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;->a()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;->b()Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v2, v1}, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->t(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->d:Le4d;

    .line 84
    .line 85
    if-eqz p0, :cond_e

    .line 86
    .line 87
    check-cast p1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;

    .line 88
    .line 89
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;->a()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;->b()Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-interface {p0, v0, p1}, Le4d;->e(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_4

    .line 101
    .line 102
    :cond_4
    instance-of v0, p1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalNoQrCodeFound;

    .line 103
    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 107
    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    move-object v1, p1

    .line 111
    check-cast v1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalNoQrCodeFound;

    .line 112
    .line 113
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalNoQrCodeFound;->a()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->u(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->d:Le4d;

    .line 121
    .line 122
    if-eqz p0, :cond_e

    .line 123
    .line 124
    check-cast p1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalNoQrCodeFound;

    .line 125
    .line 126
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalNoQrCodeFound;->a()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-interface {p0, p1}, Le4d;->g(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_6
    instance-of v0, p1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalResult;

    .line 135
    .line 136
    if-eqz v0, :cond_f

    .line 137
    .line 138
    check-cast p1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalResult;

    .line 139
    .line 140
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalResult;->a()Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;->a()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const/4 v1, 0x0

    .line 149
    if-eqz v0, :cond_7

    .line 150
    .line 151
    const/4 v2, 0x0

    .line 152
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Lteam/opay/opb/qrcode/core/data/DecodeItem;

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_7
    move-object v0, v1

    .line 160
    :goto_0
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalResult;->a()Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;->b()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    if-eqz v0, :cond_8

    .line 169
    .line 170
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/data/DecodeItem;->a()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    goto :goto_1

    .line 175
    :cond_8
    move-object v3, v1

    .line 176
    :goto_1
    if-nez v3, :cond_9

    .line 177
    .line 178
    const-string v3, ""

    .line 179
    .line 180
    :cond_9
    if-eqz v0, :cond_a

    .line 181
    .line 182
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/data/DecodeItem;->b()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    goto :goto_2

    .line 187
    :cond_a
    move-object v4, v1

    .line 188
    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    if-eqz v0, :cond_b

    .line 193
    .line 194
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/data/DecodeItem;->c()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    :cond_b
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v3}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-nez v1, :cond_c

    .line 207
    .line 208
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 209
    .line 210
    if-eqz v1, :cond_d

    .line 211
    .line 212
    invoke-virtual {v1, v4, v0, v2}, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_c
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 217
    .line 218
    if-eqz v0, :cond_d

    .line 219
    .line 220
    invoke-virtual {v0, v2}, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->u(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    :cond_d
    :goto_3
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->d:Le4d;

    .line 224
    .line 225
    if-eqz p0, :cond_e

    .line 226
    .line 227
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalResult;->a()Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-interface {p0, p1}, Le4d;->c(Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;)V

    .line 232
    .line 233
    .line 234
    :cond_e
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 235
    .line 236
    return-object p0

    .line 237
    :cond_f
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 238
    .line 239
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 240
    .line 241
    .line 242
    throw p0
.end method

.method private final setCustomFrameRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->F(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final setFullScreen(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->x(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->e:Leb7;

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
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->e:Leb7;

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

.method private final setTopOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->C(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->e:Leb7;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->l()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-interface {p1, v0}, Leb7;->setTopOffset(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->e:Leb7;

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

.method private final setTopOffsetRatio(Ljava/lang/Float;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->D(Ljava/lang/Float;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->e:Leb7;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->m()Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v0}, Leb7;->setTopOffsetRatio(Ljava/lang/Float;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->e:Leb7;

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

.method private final setUseDefaultFinderView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->E(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->e:Leb7;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Leb7;->setUseDefaultFinderView(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->e:Leb7;

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


# virtual methods
.method public final A(Lag8;Le4d;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le4d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->d:Le4d;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f(Lag8;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final B(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->OpayScannerView:[I

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
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 13
    .line 14
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->OpayScannerView_qr_laserEnabled:I

    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->i()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->z(Z)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 28
    .line 29
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->OpayScannerView_qr_laserColor:I

    .line 30
    .line 31
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->h()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->y(I)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 43
    .line 44
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->OpayScannerView_qr_borderColor:I

    .line 45
    .line 46
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->b()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->r(I)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 58
    .line 59
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->OpayScannerView_qr_maskColor:I

    .line 60
    .line 61
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->j()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->A(I)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 73
    .line 74
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->OpayScannerView_qr_borderWidth:I

    .line 75
    .line 76
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->g()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->w(I)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 88
    .line 89
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->OpayScannerView_qr_borderHeight:I

    .line 90
    .line 91
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->e()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->u(I)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 103
    .line 104
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->OpayScannerView_qr_borderLength:I

    .line 105
    .line 106
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->f()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->v(I)V

    .line 115
    .line 116
    .line 117
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 118
    .line 119
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->OpayScannerView_qr_roundedCorner:I

    .line 120
    .line 121
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->d()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->t(Z)V

    .line 130
    .line 131
    .line 132
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 133
    .line 134
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->OpayScannerView_qr_cornerRadius:I

    .line 135
    .line 136
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->c()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->s(I)V

    .line 145
    .line 146
    .line 147
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 148
    .line 149
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->OpayScannerView_qr_borderAlpha:I

    .line 150
    .line 151
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->a()F

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->q(F)V

    .line 160
    .line 161
    .line 162
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 163
    .line 164
    sget v0, Lteam/opay/opb/qrcode/scanner/R$styleable;->OpayScannerView_qr_finderOffset:I

    .line 165
    .line 166
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->n()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    invoke-virtual {p2, v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->F(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :catchall_0
    move-exception p2

    .line 182
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    .line 184
    .line 185
    throw p2
.end method

.method public final C(Landroid/app/Activity;Lag8;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 6
    .line 7
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->k:Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 12
    .line 13
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 14
    .line 15
    invoke-virtual {v3}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->i()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 20
    .line 21
    invoke-virtual {v4}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->j()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {v0, v1, v2, v3, v4}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->t(Ljava/lang/String;Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;ZZ)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 29
    .line 30
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->k()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->a:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->n(Landroid/content/Context;)Leb7;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_0
    move-object v4, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    goto :goto_0

    .line 46
    :goto_1
    iput-object v4, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->e:Leb7;

    .line 47
    .line 48
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 49
    .line 50
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->b()Landroid/graphics/Rect;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    move-object v1, p1

    .line 55
    move-object v2, p2

    .line 56
    move-object v3, p0

    .line 57
    invoke-virtual/range {v0 .. v5}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->K(Landroid/app/Activity;Lag8;Landroid/view/ViewGroup;Leb7;Landroid/graphics/Rect;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->z()V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public final D(Landroid/app/Activity;Lag8;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->j:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->h:Z

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->h:Z

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f(Lag8;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->C(Landroid/app/Activity;Lag8;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->x()V

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_0
    return-void
.end method

.method public final E()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->L()V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->C()V

    .line 18
    .line 19
    .line 20
    :cond_2
    return-void
.end method

.method public final f(Lag8;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->i:Z

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->k()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v1, Lnsa;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lnsa;-><init>(Lteam/opay/opb/qrcode/scanner/OpayScannerView;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lteam/opay/opb/qrcode/scanner/OpayScannerView$a;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->l()Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    new-instance v1, Losa;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Losa;-><init>(Lteam/opay/opb/qrcode/scanner/OpayScannerView;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lteam/opay/opb/qrcode/scanner/OpayScannerView$a;

    .line 48
    .line 49
    invoke-direct {v2, v1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->m()Landroidx/lifecycle/MutableLiveData;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    new-instance v1, Lpsa;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lpsa;-><init>(Lteam/opay/opb/qrcode/scanner/OpayScannerView;)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Lteam/opay/opb/qrcode/scanner/OpayScannerView$a;

    .line 71
    .line 72
    invoke-direct {v2, v1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->j()Landroidx/lifecycle/MutableLiveData;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    new-instance v1, Lqsa;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lqsa;-><init>(Lteam/opay/opb/qrcode/scanner/OpayScannerView;)V

    .line 91
    .line 92
    .line 93
    new-instance v2, Lteam/opay/opb/qrcode/scanner/OpayScannerView$a;

    .line 94
    .line 95
    invoke-direct {v2, v1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->k:Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getAlbumDecodeLiveData()Landroidx/lifecycle/LiveData;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    new-instance v1, Lrsa;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Lrsa;-><init>(Lteam/opay/opb/qrcode/scanner/OpayScannerView;)V

    .line 114
    .line 115
    .line 116
    new-instance v2, Lteam/opay/opb/qrcode/scanner/OpayScannerView$a;

    .line 117
    .line 118
    invoke-direct {v2, v1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    return-void
.end method

.method public final getScanTrack()Lua7;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l(Landroid/net/Uri;)V
    .locals 9
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "uri"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->j:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->s()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->y()V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->k:Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->d:Le4d;

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    new-instance v8, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 34
    .line 35
    const/16 v6, 0x1d

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v1, 0x0

    .line 39
    const-string v2, "ScanImageAnalyzer is null"

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    move-object v0, v8

    .line 45
    invoke-direct/range {v0 .. v7}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-interface {p1, v0, v8}, Le4d;->d(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->decodeAlbumImage(Landroid/net/Uri;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    :goto_0
    return-void
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->i()Z

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

.method public final n(Landroid/content/Context;)Leb7;
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
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

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
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

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
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

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
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 40
    .line 41
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->g()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setBorderStrokeWidth(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 49
    .line 50
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->f()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setBorderLineLength(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 58
    .line 59
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->e()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setBorderLineHeight(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 67
    .line 68
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->j()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setMaskColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 76
    .line 77
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->d()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setBorderCornerRounded(Z)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 85
    .line 86
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->c()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setBorderCornerRadius(I)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 94
    .line 95
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->n()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setViewFinderOffset(I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 103
    .line 104
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->o()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setFullScreen(Z)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 112
    .line 113
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->p()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setUseDefaultFinderView(Z)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 121
    .line 122
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->m()Ljava/lang/Float;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setTopOffsetRatio(Ljava/lang/Float;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 130
    .line 131
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->l()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setTopOffset(I)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 139
    .line 140
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->f()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const-string v0, "2"

    .line 145
    .line 146
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_0

    .line 151
    .line 152
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 153
    .line 154
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->o()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-nez p1, :cond_0

    .line 159
    .line 160
    const/4 p1, 0x0

    .line 161
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setSquareViewFinder(Z)V

    .line 162
    .line 163
    .line 164
    :cond_0
    invoke-direct {p0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->getViewFinderConfig()Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {v6, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->setViewFinderConfig(Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;)V

    .line 169
    .line 170
    .line 171
    return-object v6
.end method

.method public final o(Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;)V
    .locals 1
    .param p1    # Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->g:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->g:Z

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 17
    .line 18
    :cond_2
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->p()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->d()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-direct {p0, p1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->setFullScreen(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->k()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-direct {p0, p1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->setUseDefaultFinderView(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 40
    .line 41
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->h()Ljava/lang/Float;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->setTopOffsetRatio(Ljava/lang/Float;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 49
    .line 50
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->g()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-direct {p0, p1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->setTopOffset(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 58
    .line 59
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->k()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 66
    .line 67
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->b()Landroid/graphics/Rect;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->setCustomFrameRect(Landroid/graphics/Rect;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    sget-object p1, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->Companion:Lteam/opay/opb/qrcode/core/common/IImageAnalyzer$Companion;

    .line 75
    .line 76
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 77
    .line 78
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->e()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p1, v0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer$Companion;->b(Ljava/lang/String;)Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 89
    .line 90
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->f()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->initSdk(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->k:Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 98
    .line 99
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 100
    .line 101
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->a()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string v0, "camera1"

    .line 106
    .line 107
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    new-instance p1, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;

    .line 114
    .line 115
    invoke-direct {p1}, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;-><init>()V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    const-string v0, "camera2"

    .line 120
    .line 121
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_6

    .line 126
    .line 127
    new-instance p1, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;

    .line 128
    .line 129
    invoke-direct {p1}, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;-><init>()V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_6
    new-instance p1, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;

    .line 134
    .line 135
    invoke-direct {p1}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;-><init>()V

    .line 136
    .line 137
    .line 138
    :goto_0
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 139
    .line 140
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->e()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->e(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->b(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->c:Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 27
    .line 28
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;->c()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->c(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->d(Z)Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "3"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->f(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->a()Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;-><init>(Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 57
    .line 58
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->D()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->v()Z

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

.method public final r()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 7
    .line 8
    instance-of v0, v0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->u()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->s()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->h:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->t()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->x()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->u()V

    .line 22
    .line 23
    .line 24
    :cond_2
    :goto_0
    return-void
.end method

.method public final t()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->y()V

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->u()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->e:Leb7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Leb7;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final v()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    sget-object v0, Lteam/opay/business/tts/TtsPlayer;->f:Lteam/opay/business/tts/TtsPlayer$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/business/tts/TtsPlayer$Companion;->a()Lteam/opay/business/tts/TtsPlayer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Lteam/opay/opb/qrcode/core/R$raw;->qr_core_beep:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lteam/opay/business/tts/TtsPlayer;->p(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->j:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 6
    .line 7
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->d:Le4d;

    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->k:Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 10
    .line 11
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->A()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 19
    .line 20
    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->D()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->y()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->z()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final y()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->l:Lteam/opay/opb/qrcode/scanner/controller/ICameraController;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->E()V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m:Lteam/opay/opb/qrcode/scanner/track/ScanTrack;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->s()V

    .line 18
    .line 19
    .line 20
    :cond_2
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->z()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->e:Leb7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Leb7;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
