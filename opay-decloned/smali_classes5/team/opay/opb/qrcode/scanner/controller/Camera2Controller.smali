.class public final Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;
.super Lteam/opay/opb/qrcode/scanner/controller/ICameraController;
.source "Camera2Controller.kt"

# interfaces
.implements Lhv1;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J1\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ;\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\'\u0010$\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010\'\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u0019\u0010+\u001a\u00020\u000c2\u0008\u0010*\u001a\u0004\u0018\u00010)H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u0015\u0010-\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008-\u0010\u001eJ\u000f\u0010.\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008.\u0010\u0004J\u000f\u0010/\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008/\u0010\u0004J\u000f\u00100\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u00080\u0010\u0004J\u000f\u00101\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u00081\u0010\u0004J\u000f\u00102\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00084\u00103J\u000f\u00105\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u00085\u0010\u0004J\u000f\u00106\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u00086\u0010\u0004J\u0017\u00107\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u00087\u0010\u001eJ\u000f\u00108\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u00088\u00103R\u0014\u0010;\u001a\u00020\u00058\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010B\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010AR#\u0010I\u001a\n D*\u0004\u0018\u00010C0C8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010HR\u0011\u0010L\u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010K\u00a8\u0006M"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;",
        "Lteam/opay/opb/qrcode/scanner/controller/ICameraController;",
        "Lhv1;",
        "<init>",
        "()V",
        "",
        "scanType",
        "Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;",
        "imageAnalyzer",
        "",
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
        "Landroid/media/Image;",
        "image",
        "d",
        "(Landroid/media/Image;)V",
        "",
        "data",
        "",
        "width",
        "height",
        "a",
        "([BII)V",
        "flashSupported",
        "b",
        "(Z)V",
        "",
        "e",
        "c",
        "(Ljava/lang/Throwable;)V",
        "W",
        "y",
        "E",
        "x",
        "D",
        "v",
        "()Z",
        "i",
        "L",
        "A",
        "S",
        "U",
        "r",
        "Ljava/lang/String;",
        "tag",
        "Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;",
        "s",
        "Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;",
        "mPreview",
        "Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;",
        "Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;",
        "mCameraZoomController",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "u",
        "Lid8;",
        "Q",
        "()Ljava/util/concurrent/ExecutorService;",
        "mAnalyzerExecutor",
        "R",
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
.field public final r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final u:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->r:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ltq1;

    .line 9
    .line 10
    invoke-direct {v0}, Ltq1;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->u:Lid8;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic M(Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;IILandroid/media/Image;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->T(Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;IILandroid/media/Image;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic N()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->V()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic O(Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;)Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->t:Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic P(Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->U()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final T(Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;IILandroid/media/Image;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->a:Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;

    .line 3
    .line 4
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->s:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_4

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    move-object v4, v3

    .line 19
    :goto_0
    instance-of v5, v4, Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    move-object v3, v4

    .line 24
    check-cast v3, Landroid/view/ViewGroup;

    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0, v3}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->o(Landroid/view/View;)Landroid/graphics/Rect;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->R()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    move v4, p1

    .line 35
    move v5, p2

    .line 36
    invoke-virtual/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->m(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;Landroid/graphics/Rect;III)Landroid/graphics/Rect;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->r()Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->U()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    new-instance v2, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller$a;

    .line 51
    .line 52
    invoke-direct {v2, p0}, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller$a;-><init>(Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p3, v1, p1, v2}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->analyseImage(Landroid/media/Image;ZLandroid/graphics/Rect;Lxka;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_1
    invoke-virtual {p0, p3}, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->W(Landroid/media/Image;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->w()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :goto_3
    return-void

    .line 74
    :goto_4
    invoke-virtual {p0, p3}, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->W(Landroid/media/Image;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->w()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    .line 83
    .line 84
    throw p1
.end method

.method public static final V()Ljava/util/concurrent/ExecutorService;
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
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->G(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->s:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->K()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->t:Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->K()V

    .line 17
    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->t:Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->Q()Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->Q()Ljava/util/concurrent/ExecutorService;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->s:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->S()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->s:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->M()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->n()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->t:Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->R(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public K(Landroid/app/Activity;Lag8;Landroid/view/ViewGroup;Leb7;Landroid/graphics/Rect;)V
    .locals 1
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
    const-string p2, "viewGroup"

    .line 12
    .line 13
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_4

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0, p5}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->F(Landroid/graphics/Rect;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p4}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->H(Leb7;)V

    .line 33
    .line 34
    .line 35
    new-instance p2, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 36
    .line 37
    invoke-direct {p2, p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->s:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 41
    .line 42
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->s()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p2, p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->setPerformance(Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->s:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->setCameraPreviewListener(Lhv1;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->s:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 60
    .line 61
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->q()Leb7;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    instance-of p1, p1, Landroid/view/View;

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->q()Leb7;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->t:Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;

    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->s:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;->V(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->s:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->S()V

    .line 95
    .line 96
    .line 97
    :cond_4
    :goto_0
    return-void
.end method

.method public L()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->s:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->W()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final Q()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->u:Lid8;

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

.method public final R()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->s:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->getDisplayOrientation()I

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
    div-int/lit8 v0, v0, 0x5a

    .line 12
    .line 13
    return v0
.end method

.method public final S(Landroid/media/Image;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->u()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->n()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->w()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_4

    .line 27
    .line 28
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->t:Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->I()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->r()Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->h()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->w()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->C()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    sget-object v2, Luk8;->c:Luk8;

    .line 79
    .line 80
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->r:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v3, " Camera2Controller setAnalyzer width: "

    .line 91
    .line 92
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v3, "   height: "

    .line 99
    .line 100
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const/4 v4, 0x2

    .line 111
    const/4 v5, 0x0

    .line 112
    invoke-static {v2, v3, v5, v4, v5}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0, v1}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->B(II)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->Q()Ljava/util/concurrent/ExecutorService;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    new-instance v3, Luq1;

    .line 123
    .line 124
    invoke-direct {v3, p0, v0, v1, p1}, Luq1;-><init>(Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;IILandroid/media/Image;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public final U()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->t:Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;

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

.method public final W(Landroid/media/Image;)V
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
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public a([BII)V
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "data"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->l()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->v()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->t:Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;->W()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->k()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->S(Landroid/media/Image;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->s:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->z()Z

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
    new-instance p1, Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;

    .line 13
    .line 14
    invoke-direct {p1}, Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->t:Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->P(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->t:Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->s:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->A()Z

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

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->s:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->V()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->s:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->J()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->n()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2Controller;->t:Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->R(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method
