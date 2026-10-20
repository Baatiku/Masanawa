.class public final Lteam/opay/opb/qrcode/scanner/controller/CameraXController;
.super Lteam/opay/opb/qrcode/scanner/controller/ICameraController;
.source "CameraXController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J1\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ;\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0017\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0003J\u000f\u0010\u001d\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0003J\u000f\u0010\u001e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0003J\u000f\u0010\u001f\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0003J\r\u0010 \u001a\u00020\u0004\u00a2\u0006\u0004\u0008 \u0010\u0006J\r\u0010!\u001a\u00020\u0004\u00a2\u0006\u0004\u0008!\u0010\u0006J\u000f\u0010\"\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0006J\u000f\u0010#\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008#\u0010\u0006J\u000f\u0010$\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008$\u0010\u0003J\u000f\u0010%\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008%\u0010\u0003J\'\u0010*\u001a\u00020\r2\u0006\u0010\'\u001a\u00020&2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010)\u001a\u00020(H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u0011\u0010-\u001a\u0004\u0018\u00010,H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u00101\u001a\u00020\r2\u0006\u00100\u001a\u00020/H\u0003\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u00083\u0010\u0003J\u000f\u00104\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u00084\u0010\u0003R\u0014\u00107\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0018\u0010\'\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0018\u0010<\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010;R\u0018\u0010@\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0018\u0010B\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010AR\u0018\u0010F\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER#\u0010L\u001a\n H*\u0004\u0018\u00010G0G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010I\u001a\u0004\u0008J\u0010KR\u0016\u0010M\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010 R\u0018\u0010Q\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010P\u00a8\u0006R"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/controller/CameraXController;",
        "Lteam/opay/opb/qrcode/scanner/controller/ICameraController;",
        "<init>",
        "()V",
        "",
        "a0",
        "()Z",
        "",
        "scanType",
        "Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;",
        "imageAnalyzer",
        "isEnableAutoZoom",
        "isEnableGestureZoom",
        "",
        "t",
        "(Ljava/lang/String;Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;ZZ)V",
        "Landroid/app/Activity;",
        "activity",
        "Lag8;",
        "lifecycleOwner",
        "Landroid/view/ViewGroup;",
        "viewGroup",
        "Leb7;",
        "finderView",
        "Landroid/graphics/Rect;",
        "customFrameRect",
        "K",
        "(Landroid/app/Activity;Lag8;Landroid/view/ViewGroup;Leb7;Landroid/graphics/Rect;)V",
        "y",
        "E",
        "x",
        "D",
        "Z",
        "Y",
        "v",
        "i",
        "L",
        "A",
        "Landroidx/camera/lifecycle/ProcessCameraProvider;",
        "cameraProvider",
        "Landroidx/camera/view/PreviewView;",
        "cameraX",
        "T",
        "(Landroidx/camera/lifecycle/ProcessCameraProvider;Lag8;Landroidx/camera/view/PreviewView;)V",
        "",
        "V",
        "()Ljava/lang/Integer;",
        "Landroidx/camera/core/l;",
        "imageProxy",
        "X",
        "(Landroidx/camera/core/l;)V",
        "d0",
        "c0",
        "r",
        "Ljava/lang/String;",
        "tag",
        "s",
        "Landroidx/camera/lifecycle/ProcessCameraProvider;",
        "Lzq1;",
        "Lzq1;",
        "currentCamera",
        "Landroidx/camera/core/Preview;",
        "u",
        "Landroidx/camera/core/Preview;",
        "mPreview",
        "Landroidx/camera/view/PreviewView;",
        "mPreviewView",
        "Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;",
        "w",
        "Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;",
        "mCameraZoomController",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "Lid8;",
        "W",
        "()Ljava/util/concurrent/ExecutorService;",
        "mAnalyzerExecutor",
        "isPauseCameraPreview",
        "Lkotlinx/coroutines/l;",
        "z",
        "Lkotlinx/coroutines/l;",
        "startCameraJob",
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
.field public final r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Landroidx/camera/lifecycle/ProcessCameraProvider;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Lzq1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Landroidx/camera/core/Preview;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Landroidx/camera/view/PreviewView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public w:Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final x:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:Z

.field public z:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "OpayScannerView"

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->r:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Luv1;

    .line 9
    .line 10
    invoke-direct {v0}, Luv1;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->x:Lid8;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic M(Lteam/opay/opb/qrcode/scanner/controller/CameraXController;Landroidx/camera/core/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->U(Lteam/opay/opb/qrcode/scanner/controller/CameraXController;Landroidx/camera/core/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic N()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->b0()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic O(Lteam/opay/opb/qrcode/scanner/controller/CameraXController;Landroidx/camera/lifecycle/ProcessCameraProvider;Lag8;Landroidx/camera/view/PreviewView;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->T(Landroidx/camera/lifecycle/ProcessCameraProvider;Lag8;Landroidx/camera/view/PreviewView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic P(Lteam/opay/opb/qrcode/scanner/controller/CameraXController;)Landroidx/camera/lifecycle/ProcessCameraProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->s:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Q(Lteam/opay/opb/qrcode/scanner/controller/CameraXController;)Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->w:Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic R(Lteam/opay/opb/qrcode/scanner/controller/CameraXController;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->a0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic S(Lteam/opay/opb/qrcode/scanner/controller/CameraXController;Landroidx/camera/lifecycle/ProcessCameraProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->s:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 2
    .line 3
    return-void
.end method

.method public static final U(Lteam/opay/opb/qrcode/scanner/controller/CameraXController;Landroidx/camera/core/l;)V
    .locals 1

    .line 1
    const-string v0, "imageProxy"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->X(Landroidx/camera/core/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final W()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->x:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    return-object v0
.end method

.method private final a0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->w:Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->G()Z

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

.method private static final b0()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->G(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->z:Lkotlinx/coroutines/l;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v1, v2, v0, v2}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-object v2, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->z:Lkotlinx/coroutines/l;

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->w:Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->K()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iput-object v2, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->w:Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;

    .line 23
    .line 24
    invoke-direct {p0}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->W()Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    invoke-direct {p0}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->W()Ljava/util/concurrent/ExecutorService;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->w:Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->L()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->y:Z

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->y:Z

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->u:Landroidx/camera/core/Preview;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->v:Landroidx/camera/view/PreviewView;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$a;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview;->n0(Landroidx/camera/core/Preview$a;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->n()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->w:Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->R(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public K(Landroid/app/Activity;Lag8;Landroid/view/ViewGroup;Leb7;Landroid/graphics/Rect;)V
    .locals 13
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Leb7;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v6, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    const-string v2, "activity"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "lifecycleOwner"

    .line 11
    .line 12
    move-object v3, p2

    .line 13
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "viewGroup"

    .line 17
    .line 18
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_3

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object/from16 v2, p5

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->F(Landroid/graphics/Rect;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Landroidx/camera/view/PreviewView;

    .line 40
    .line 41
    invoke-direct {v4, p1}, Landroidx/camera/view/PreviewView;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    move-object/from16 v2, p4

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->H(Leb7;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->q()Leb7;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    instance-of v2, v2, Landroid/view/View;

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->q()Leb7;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iput-object v4, v6, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->v:Landroidx/camera/view/PreviewView;

    .line 73
    .line 74
    iget-object v0, v6, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->z:Lkotlinx/coroutines/l;

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    const/4 v5, 0x0

    .line 80
    invoke-static {v0, v5, v2, v5}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-static {p2}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    new-instance v10, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    move-object v0, v10

    .line 91
    move-object v1, p1

    .line 92
    move-object v2, p0

    .line 93
    move-object v3, p2

    .line 94
    invoke-direct/range {v0 .. v5}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;-><init>(Landroid/app/Activity;Lteam/opay/opb/qrcode/scanner/controller/CameraXController;Lag8;Landroidx/camera/view/PreviewView;Ljr2;)V

    .line 95
    .line 96
    .line 97
    const/4 v11, 0x3

    .line 98
    const/4 v12, 0x0

    .line 99
    const/4 v8, 0x0

    .line 100
    const/4 v9, 0x0

    .line 101
    invoke-static/range {v7 .. v12}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, v6, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->z:Lkotlinx/coroutines/l;

    .line 106
    .line 107
    :cond_3
    :goto_0
    return-void
.end method

.method public L()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->c0()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->d0()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final T(Landroidx/camera/lifecycle/ProcessCameraProvider;Lag8;Landroidx/camera/view/PreviewView;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "build(...)"

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->V()Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->k()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance p2, Ljava/lang/Exception;

    .line 15
    .line 16
    const-string p3, "CameraX back and front camera are unavailable"

    .line 17
    .line 18
    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x0

    .line 40
    :goto_0
    sget-object v4, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->a:Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;

    .line 41
    .line 42
    invoke-virtual {v4}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->p()Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    new-instance v5, Landroidx/camera/core/Preview$Builder;

    .line 47
    .line 48
    invoke-direct {v5}, Landroidx/camera/core/Preview$Builder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v3}, Landroidx/camera/core/Preview$Builder;->r(I)Landroidx/camera/core/Preview$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5, v4}, Landroidx/camera/core/Preview$Builder;->l(Landroidx/camera/core/resolutionselector/ResolutionSelector;)Landroidx/camera/core/Preview$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Landroidx/camera/core/Preview$Builder;->g()Landroidx/camera/core/Preview;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    iput-object v5, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->u:Landroidx/camera/core/Preview;

    .line 64
    .line 65
    new-instance v5, Landroidx/camera/core/ImageAnalysis$Builder;

    .line 66
    .line 67
    invoke-direct {v5}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v3}, Landroidx/camera/core/ImageAnalysis$Builder;->w(I)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3, v4}, Landroidx/camera/core/ImageAnalysis$Builder;->q(Landroidx/camera/core/resolutionselector/ResolutionSelector;)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3, v0}, Landroidx/camera/core/ImageAnalysis$Builder;->k(I)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Landroidx/camera/core/ImageAnalysis$Builder;->g()Landroidx/camera/core/ImageAnalysis;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->W()Ljava/util/concurrent/ExecutorService;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    new-instance v5, Lvv1;

    .line 94
    .line 95
    invoke-direct {v5, p0}, Lvv1;-><init>(Lteam/opay/opb/qrcode/scanner/controller/CameraXController;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4, v5}, Landroidx/camera/core/ImageAnalysis;->q0(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$a;)V

    .line 99
    .line 100
    .line 101
    new-instance v4, Landroidx/camera/core/CameraSelector$Builder;

    .line 102
    .line 103
    invoke-direct {v4}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-virtual {v4, v2}, Landroidx/camera/core/CameraSelector$Builder;->b(I)Landroidx/camera/core/CameraSelector$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2}, Landroidx/camera/core/CameraSelector$Builder;->a()Landroidx/camera/core/CameraSelector;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->G()V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->u:Landroidx/camera/core/Preview;

    .line 125
    .line 126
    const/4 v4, 0x2

    .line 127
    new-array v4, v4, [Landroidx/camera/core/UseCase;

    .line 128
    .line 129
    aput-object v1, v4, v0

    .line 130
    .line 131
    const/4 v0, 0x1

    .line 132
    aput-object v3, v4, v0

    .line 133
    .line 134
    invoke-virtual {p1, p2, v2, v4}, Landroidx/camera/lifecycle/ProcessCameraProvider;->r(Lag8;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Lzq1;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->t:Lzq1;

    .line 139
    .line 140
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->u:Landroidx/camera/core/Preview;

    .line 141
    .line 142
    if-eqz p1, :cond_2

    .line 143
    .line 144
    invoke-virtual {p3}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$a;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p1, p2}, Landroidx/camera/core/Preview;->n0(Landroidx/camera/core/Preview$a;)V

    .line 149
    .line 150
    .line 151
    :cond_2
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->t:Lzq1;

    .line 152
    .line 153
    if-eqz p1, :cond_3

    .line 154
    .line 155
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->w:Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;

    .line 156
    .line 157
    if-eqz p2, :cond_3

    .line 158
    .line 159
    iget-object p3, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->v:Landroidx/camera/view/PreviewView;

    .line 160
    .line 161
    invoke-virtual {p2, p1, p3}, Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;->V(Lzq1;Landroidx/camera/view/PreviewView;)V

    .line 162
    .line 163
    .line 164
    :cond_3
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->l()Landroidx/lifecycle/MutableLiveData;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->v()Z

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    .line 182
    .line 183
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    .line 184
    .line 185
    if-nez p2, :cond_4

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    new-instance p3, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v0, "CameraX bindCameraUseCases Exception: "

    .line 197
    .line 198
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    new-instance p3, Ljava/lang/RuntimeException;

    .line 209
    .line 210
    invoke-direct {p3, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    .line 212
    .line 213
    sget-object p1, Lere;->a:Lere;

    .line 214
    .line 215
    invoke-virtual {p1, p3}, Lere;->b(Ljava/lang/Throwable;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->k()Landroidx/lifecycle/MutableLiveData;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    :cond_4
    :goto_2
    return-void
.end method

.method public final V()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->Y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->Z()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0
.end method

.method public final X(Landroidx/camera/core/l;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->u()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->n()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->w()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->w:Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->I()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :catch_0
    move-exception v1

    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->r()Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 48
    .line 49
    .line 50
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->w()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Landroidx/camera/core/l;->close()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    :try_start_1
    invoke-interface {p1}, Landroidx/camera/core/l;->Q0()Landroid/media/Image;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-nez v1, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->h()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/4 v4, 0x2

    .line 76
    const/4 v5, 0x0

    .line 77
    if-nez v3, :cond_5

    .line 78
    .line 79
    sget-object v1, Luk8;->c:Luk8;

    .line 80
    .line 81
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->r:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, " \u9650\u6d41\u4e86=========================="

    .line 92
    .line 93
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v1, v2, v5, v4, v5}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->w()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->C()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    sget-object v2, Luk8;->c:Luk8;

    .line 123
    .line 124
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->r:Ljava/lang/String;

    .line 125
    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v3, " CameraX setAnalyzer width: "

    .line 135
    .line 136
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v3, "   height: "

    .line 143
    .line 144
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-static {v2, v3, v5, v4, v5}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v9, v10}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->B(II)V

    .line 158
    .line 159
    .line 160
    sget-object v6, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->a:Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;

    .line 161
    .line 162
    iget-object v7, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->v:Landroidx/camera/view/PreviewView;

    .line 163
    .line 164
    if-eqz v7, :cond_6

    .line 165
    .line 166
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    goto :goto_1

    .line 171
    :cond_6
    move-object v2, v5

    .line 172
    :goto_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 173
    .line 174
    if-eqz v3, :cond_7

    .line 175
    .line 176
    move-object v5, v2

    .line 177
    check-cast v5, Landroid/view/ViewGroup;

    .line 178
    .line 179
    :cond_7
    invoke-virtual {p0, v5}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->o(Landroid/view/View;)Landroid/graphics/Rect;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    invoke-interface {p1}, Landroidx/camera/core/l;->L0()Lgd7;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-interface {v2}, Lgd7;->c()I

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    invoke-virtual/range {v6 .. v11}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->n(Landroidx/camera/view/PreviewView;Landroid/graphics/Rect;III)Landroid/graphics/Rect;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->r()Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    if-eqz v3, :cond_8

    .line 200
    .line 201
    invoke-direct {p0}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->a0()Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    new-instance v5, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$a;

    .line 206
    .line 207
    invoke-direct {v5, p0}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$a;-><init>(Lteam/opay/opb/qrcode/scanner/controller/CameraXController;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v1, v4, v2, v5}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->analyseImage(Landroid/media/Image;ZLandroid/graphics/Rect;Lxka;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .line 212
    .line 213
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->w()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 218
    .line 219
    .line 220
    invoke-interface {p1}, Landroidx/camera/core/l;->close()V

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :goto_3
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    .line 226
    .line 227
    sget-object v2, Lere;->a:Lere;

    .line 228
    .line 229
    invoke-virtual {v2, v1}, Lere;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :goto_4
    return-void

    .line 234
    :goto_5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->w()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 239
    .line 240
    .line 241
    invoke-interface {p1}, Landroidx/camera/core/l;->close()V

    .line 242
    .line 243
    .line 244
    throw v1
.end method

.method public final Y()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->s:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v2, Landroidx/camera/core/CameraSelector;->d:Landroidx/camera/core/CameraSelector;

    .line 7
    .line 8
    const-string v3, "DEFAULT_BACK_CAMERA"

    .line 9
    .line 10
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->B(Landroidx/camera/core/CameraSelector;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_0
    return v1
.end method

.method public final Z()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->s:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v2, Landroidx/camera/core/CameraSelector;->c:Landroidx/camera/core/CameraSelector;

    .line 7
    .line 8
    const-string v3, "DEFAULT_FRONT_CAMERA"

    .line 9
    .line 10
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->B(Landroidx/camera/core/CameraSelector;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_0
    return v1
.end method

.method public final c0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->v()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->t:Lzq1;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lzq1;->c()Landroidx/camera/core/CameraControl;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {v0, v1}, Landroidx/camera/core/CameraControl;->h(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final d0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->v()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->t:Lzq1;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lzq1;->c()Landroidx/camera/core/CameraControl;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-interface {v0, v1}, Landroidx/camera/core/CameraControl;->h(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->t:Lzq1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Lzq1;->a()Lbu1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Lbu1;->n()Landroidx/lifecycle/LiveData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x1

    .line 32
    if-ne v0, v2, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_1
    :goto_0
    return v1
.end method

.method public t(Ljava/lang/String;Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "scanType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->J(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->I(Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;

    .line 13
    .line 14
    invoke-direct {p1}, Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->w:Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->P(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->w:Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, p4}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->Q(Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public v()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->t:Lzq1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lzq1;->a()Lbu1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lbu1;->i()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_0
    return v1
.end method

.method public x()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->y:Z

    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->u:Landroidx/camera/core/Preview;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview;->n0(Landroidx/camera/core/Preview$a;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public y()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->n()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->w:Lteam/opay/opb/qrcode/scanner/controller/CameraXZoomController;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->R(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
