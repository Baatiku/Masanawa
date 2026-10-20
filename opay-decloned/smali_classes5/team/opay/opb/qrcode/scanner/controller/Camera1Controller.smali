.class public final Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;
.super Lteam/opay/opb/qrcode/scanner/controller/ICameraController;
.source "Camera1Controller.kt"

# interfaces
.implements Lhv1;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0003\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J1\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ;\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\'\u0010 \u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010$\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010\'\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u0019\u0010+\u001a\u00020\u000c2\u0008\u0010*\u001a\u0004\u0018\u00010)H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008-\u0010\u0004J\u000f\u0010.\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008.\u0010\u0004J\u000f\u0010/\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008/\u0010\u0004J\u000f\u00100\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u00080\u0010\u0004J\u000f\u00101\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00083\u00102J\u000f\u00104\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u00084\u0010\u0004J\u000f\u00105\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u00085\u0010\u0004J\'\u00106\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u00086\u0010!R\u001a\u0010<\u001a\u0002078\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;R\u0014\u0010>\u001a\u00020\u00058\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008:\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010@R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u0010GR\u0011\u0010K\u001a\u00020\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010J\u00a8\u0006L"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;",
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
        "",
        "data",
        "",
        "width",
        "height",
        "a",
        "([BII)V",
        "Landroid/media/Image;",
        "image",
        "d",
        "(Landroid/media/Image;)V",
        "flashSupported",
        "b",
        "(Z)V",
        "",
        "e",
        "c",
        "(Ljava/lang/Throwable;)V",
        "y",
        "E",
        "x",
        "D",
        "v",
        "()Z",
        "i",
        "L",
        "A",
        "P",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "r",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "s",
        "()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "performance",
        "Ljava/lang/String;",
        "tag",
        "Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;",
        "Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;",
        "mPreview",
        "Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;",
        "u",
        "Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;",
        "mCameraZoomController",
        "Ljava/util/concurrent/ExecutorService;",
        "Ljava/util/concurrent/ExecutorService;",
        "mAnalysisExecutor",
        "O",
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
.field public final r:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Ljava/util/concurrent/ExecutorService;
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
    sget-object v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_HIGH:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->r:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 7
    .line 8
    const-string v0, "Camera1Controller"

    .line 9
    .line 10
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->s:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic M(Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;III[BZ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->Q(Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;III[BZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic N(Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;)Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->u:Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final Q(Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;III[BZ)V
    .locals 13

    .line 1
    move-object v1, p0

    .line 2
    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->B(II)V

    .line 4
    .line 5
    .line 6
    sget-object v3, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->a:Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;

    .line 7
    .line 8
    iget-object v4, v1, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->t:Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_4

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    move-object v5, v0

    .line 23
    :goto_0
    instance-of v6, v5, Landroid/view/ViewGroup;

    .line 24
    .line 25
    if-eqz v6, :cond_1

    .line 26
    .line 27
    move-object v0, v5

    .line 28
    check-cast v0, Landroid/view/ViewGroup;

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0, v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->o(Landroid/view/View;)Landroid/graphics/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    move v6, p1

    .line 35
    move v7, p2

    .line 36
    move/from16 v8, p3

    .line 37
    .line 38
    invoke-virtual/range {v3 .. v8}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->l(Landroid/view/View;Landroid/graphics/Rect;III)Landroid/graphics/Rect;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->r()Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    new-instance v12, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller$a;

    .line 49
    .line 50
    invoke-direct {v12, p0}, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller$a;-><init>(Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;)V

    .line 51
    .line 52
    .line 53
    move-object/from16 v7, p4

    .line 54
    .line 55
    move v8, p1

    .line 56
    move v9, p2

    .line 57
    move/from16 v10, p5

    .line 58
    .line 59
    invoke-virtual/range {v6 .. v12}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->analyseImage([BIIZLandroid/graphics/Rect;Lxka;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->w()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :goto_3
    return-void

    .line 75
    :goto_4
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->w()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    .line 81
    .line 82
    throw v0
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->G(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->v:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->v:Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->t:Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->k()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->u:Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->K()V

    .line 27
    .line 28
    .line 29
    :cond_2
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->u:Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;

    .line 30
    .line 31
    return-void
.end method

.method public D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->t:Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->n()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->t:Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->l()V

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
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->u:Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;

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
    .locals 6
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
    new-instance p2, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;

    .line 36
    .line 37
    const/4 v4, 0x6

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    move-object v0, p2

    .line 42
    move-object v1, p1

    .line 43
    invoke-direct/range {v0 .. v5}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->t:Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;

    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->s()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p2, p1}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->setPerformance(Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->t:Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->setCameraPreviewListener(Lhv1;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->t:Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;

    .line 66
    .line 67
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->q()Leb7;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    instance-of p1, p1, Landroid/view/View;

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->q()Leb7;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->u:Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;

    .line 88
    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->t:Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;->V(Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->t:Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;

    .line 97
    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->n()V

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_0
    return-void
.end method

.method public L()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->t:Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->p()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final O()I
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->t:Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;

    .line 2
    .line 3
    const/16 v1, 0x5a

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->getDisplayOrientation()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x5a

    .line 13
    .line 14
    :goto_0
    div-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public final P([BII)V
    .locals 9

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
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->w()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_5

    .line 28
    .line 29
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->u:Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->I()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ne v0, v1, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->r()Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->h()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    sget-object v0, Luk8;->c:Luk8;

    .line 56
    .line 57
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->s:Ljava/lang/String;

    .line 58
    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, " OpayScannerView setAnalyzer width: "

    .line 68
    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v2, "   height: "

    .line 76
    .line 77
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const/4 v3, 0x2

    .line 88
    const/4 v4, 0x0

    .line 89
    invoke-static {v0, v2, v4, v3, v4}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->w()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->C()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->O()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->u:Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->G()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    move v8, v0

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    const/4 v0, 0x0

    .line 117
    const/4 v8, 0x0

    .line 118
    :goto_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->v:Ljava/util/concurrent/ExecutorService;

    .line 119
    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    new-instance v1, Lnn1;

    .line 123
    .line 124
    move-object v2, v1

    .line 125
    move-object v3, p0

    .line 126
    move v4, p2

    .line 127
    move v5, p3

    .line 128
    move-object v7, p1

    .line 129
    invoke-direct/range {v2 .. v8}, Lnn1;-><init>(Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;III[BZ)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_1
    return-void
.end method

.method public a([BII)V
    .locals 1
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
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->P([BII)V

    .line 7
    .line 8
    .line 9
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
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->v()Z

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
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->u:Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;->W()V

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
    return-void
.end method

.method public i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->t:Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->e()Z

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

.method public s()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->r:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 2
    .line 3
    return-object v0
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
    new-instance p1, Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;

    .line 13
    .line 14
    invoke-direct {p1}, Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->u:Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->P(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->u:Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;

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
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->v:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 p2, 0x1

    .line 40
    if-ne p1, p2, :cond_2

    .line 41
    .line 42
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->v:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->t:Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->f()Z

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
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->t:Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->o()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->t:Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->j()V

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
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->u:Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;

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
