.class public final Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;
.super Lteam/opay/opb/qrcode/scanner/view/AutoFitTextureView;
.source "Camera1Preview.kt"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\'\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\r\u0010\u001b\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J\r\u0010\u001c\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u001e\u0010\u001dJ\r\u0010\u001f\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001f\u0010\u0019J\r\u0010 \u001a\u00020\u000f\u00a2\u0006\u0004\u0008 \u0010\u0019J\r\u0010!\u001a\u00020\u000f\u00a2\u0006\u0004\u0008!\u0010\u0019J\r\u0010\"\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\r\u0010$\u001a\u00020\u0013\u00a2\u0006\u0004\u0008$\u0010\u001dJ\r\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008&\u0010\'J\r\u0010(\u001a\u00020%\u00a2\u0006\u0004\u0008(\u0010\'J\u0015\u0010*\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020%\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010,\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008,\u0010\u0017J\u0011\u0010-\u001a\u0004\u0018\u00010\u0007H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\'\u00102\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\u00072\u0006\u00101\u001a\u000200H\u0002\u00a2\u0006\u0004\u00082\u00103R\u0018\u00105\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u00104R$\u0010<\u001a\u0004\u0018\u0001068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\"\u0010C\u001a\u00020=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\u0016\u0010E\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010DR\u0016\u0010F\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010DR\u0016\u0010H\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010GR\u0016\u0010J\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010DR\u0016\u0010K\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010DR\u0016\u0010L\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010D\u00a8\u0006M"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;",
        "Lteam/opay/opb/qrcode/scanner/view/AutoFitTextureView;",
        "Landroid/view/TextureView$SurfaceTextureListener;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyle",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Landroid/graphics/SurfaceTexture;",
        "surface",
        "width",
        "height",
        "",
        "onSurfaceTextureAvailable",
        "(Landroid/graphics/SurfaceTexture;II)V",
        "onSurfaceTextureSizeChanged",
        "",
        "onSurfaceTextureDestroyed",
        "(Landroid/graphics/SurfaceTexture;)Z",
        "onSurfaceTextureUpdated",
        "(Landroid/graphics/SurfaceTexture;)V",
        "n",
        "()V",
        "k",
        "o",
        "f",
        "()Z",
        "e",
        "p",
        "j",
        "l",
        "getDisplayOrientation",
        "()I",
        "g",
        "",
        "getMaxZoomRatio",
        "()F",
        "getCurrentZoom",
        "zoomRatio",
        "c",
        "(F)V",
        "h",
        "d",
        "()Ljava/lang/Integer;",
        "cameraId",
        "Landroid/hardware/Camera;",
        "camera",
        "m",
        "(Landroid/content/Context;ILandroid/hardware/Camera;)V",
        "Landroid/hardware/Camera;",
        "mCamera",
        "Lhv1;",
        "Lhv1;",
        "getCameraPreviewListener",
        "()Lhv1;",
        "setCameraPreviewListener",
        "(Lhv1;)V",
        "cameraPreviewListener",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "getPerformance",
        "()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "setPerformance",
        "(Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;)V",
        "performance",
        "Z",
        "isPreviewing",
        "flashIsOn",
        "I",
        "mDisplayOrientation",
        "i",
        "isOpeningCamera",
        "isDestroyed",
        "isStopPreviewed",
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
.field public c:Landroid/hardware/Camera;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lhv1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z

.field public g:Z

.field public h:I

.field public i:Z

.field public volatile j:Z

.field public k:Z


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

    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/view/AutoFitTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget-object p1, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_LOW:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->e:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    const/16 p1, 0x5a

    .line 6
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->h:I

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
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic b(Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;[BLandroid/hardware/Camera;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->i(Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;[BLandroid/hardware/Camera;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final i(Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;[BLandroid/hardware/Camera;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->j:Z

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->d:Lhv1;

    .line 28
    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    .line 32
    .line 33
    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    .line 34
    .line 35
    invoke-interface {p0, p1, v0, p2}, Lhv1;->a([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    return-void

    .line 42
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lere;->a:Lere;

    .line 46
    .line 47
    new-instance p2, Ljava/lang/RuntimeException;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "Camera1 setPreviewCallback failed: "

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {p2, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lere;->b(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final c(F)V
    .locals 8

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->c:Landroid/hardware/Camera;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/16 v3, 0x64

    .line 27
    .line 28
    int-to-float v3, v3

    .line 29
    mul-float p1, p1, v3

    .line 30
    .line 31
    float-to-int p1, p1

    .line 32
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x0

    .line 37
    const v5, 0x7fffffff

    .line 38
    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    const v6, 0x7fffffff

    .line 42
    .line 43
    .line 44
    :goto_0
    if-ge v4, v3, :cond_4

    .line 45
    .line 46
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    check-cast v7, Ljava/lang/Number;

    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    sub-int/2addr v7, p1

    .line 57
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-ge v7, v6, :cond_3

    .line 62
    .line 63
    move v5, v4

    .line 64
    move v6, v7

    .line 65
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {v1, v5}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :goto_2
    return-void
.end method

.method public final d()Ljava/lang/Integer;
    .locals 5

    .line 1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v0, :cond_2

    .line 12
    .line 13
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    .line 14
    .line 15
    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v3, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 19
    .line 20
    .line 21
    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    :goto_1
    if-ge v2, v0, :cond_4

    .line 34
    .line 35
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    .line 36
    .line 37
    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 41
    .line 42
    .line 43
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    if-ne v3, v4, :cond_3

    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    return-object v1
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v2, "torch"

    .line 19
    .line 20
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_0
    return v1
.end method

.method public final g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

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

.method public final getCameraPreviewListener()Lhv1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->d:Lhv1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentZoom()F
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Number;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    int-to-float v0, v0

    .line 40
    const/high16 v1, 0x42c80000    # 100.0f

    .line 41
    .line 42
    div-float/2addr v0, v1

    .line 43
    return v0

    .line 44
    :cond_2
    :goto_0
    return v1
.end method

.method public final getDisplayOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxZoomRatio()F
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    int-to-float v0, v0

    .line 39
    const/high16 v1, 0x42c80000    # 100.0f

    .line 40
    .line 41
    div-float/2addr v0, v1

    .line 42
    return v0

    .line 43
    :cond_2
    :goto_0
    return v1
.end method

.method public final getPerformance()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->e:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Landroid/graphics/SurfaceTexture;)V
    .locals 9

    .line 1
    const-string v0, "continuous-picture"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-boolean v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->j:Z

    .line 5
    .line 6
    if-nez v2, :cond_b

    .line 7
    .line 8
    iget-boolean v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->i:Z

    .line 9
    .line 10
    if-nez v2, :cond_b

    .line 11
    .line 12
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->c:Landroid/hardware/Camera;

    .line 13
    .line 14
    if-nez v2, :cond_b

    .line 15
    .line 16
    iget-boolean v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->k:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_0
    const/4 v2, 0x1

    .line 23
    iput-boolean v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->i:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "android.permission.CAMERA"

    .line 30
    .line 31
    invoke-static {v3, v4}, Lzq2;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->d:Lhv1;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    new-instance v0, Ljava/lang/Exception;

    .line 42
    .line 43
    const-string v2, "Camera1 open no permission"

    .line 44
    .line 45
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lhv1;->c(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto/16 :goto_6

    .line 54
    .line 55
    :catch_0
    move-exception p1

    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->i:Z

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->d()Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-nez v3, :cond_4

    .line 66
    .line 67
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->d:Lhv1;

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    new-instance v0, Ljava/lang/Exception;

    .line 72
    .line 73
    const-string v2, "Camera1 no camera available"

    .line 74
    .line 75
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v0}, Lhv1;->c(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    :cond_3
    iput-boolean v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->i:Z

    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iput-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->c:Landroid/hardware/Camera;

    .line 93
    .line 94
    if-nez v4, :cond_6

    .line 95
    .line 96
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->d:Lhv1;

    .line 97
    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    new-instance v0, Ljava/lang/Exception;

    .line 101
    .line 102
    const-string v2, "Camera1 open fail"

    .line 103
    .line 104
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v0}, Lhv1;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .line 109
    .line 110
    :cond_5
    iput-boolean v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->i:Z

    .line 111
    .line 112
    return-void

    .line 113
    :cond_6
    if-eqz v4, :cond_a

    .line 114
    .line 115
    :try_start_3
    invoke-virtual {v4, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 119
    .line 120
    .line 121
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    if-nez p1, :cond_7

    .line 123
    .line 124
    iput-boolean v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->i:Z

    .line 125
    .line 126
    return-void

    .line 127
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_8

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_8
    const/16 v0, 0x11

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v5, "getSupportedPreviewSizes(...)"

    .line 150
    .line 151
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v5, Ljava/util/ArrayList;

    .line 155
    .line 156
    const/16 v6, 0xa

    .line 157
    .line 158
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .line 164
    .line 165
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-eqz v6, :cond_9

    .line 174
    .line 175
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    check-cast v6, Landroid/hardware/Camera$Size;

    .line 180
    .line 181
    new-instance v7, Landroid/util/Size;

    .line 182
    .line 183
    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    .line 184
    .line 185
    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    .line 186
    .line 187
    invoke-direct {v7, v8, v6}, Landroid/util/Size;-><init>(II)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_9
    new-array v0, v1, [Landroid/util/Size;

    .line 195
    .line 196
    invoke-interface {v5, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, [Landroid/util/Size;

    .line 201
    .line 202
    sget-object v5, Ltxb;->a:Ltxb;

    .line 203
    .line 204
    iget-object v6, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->e:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 205
    .line 206
    const-wide v7, 0x3fc3333333333333L    # 0.15

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    invoke-virtual {v5, v0, v6, v7, v8}, Ltxb;->d([Landroid/util/Size;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;D)Landroid/util/Size;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    invoke-virtual {p0, v5, v0}, Lteam/opay/opb/qrcode/scanner/view/AutoFitTextureView;->a(II)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    const-string v5, "getContext(...)"

    .line 242
    .line 243
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    invoke-virtual {p0, v0, v3, v4}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->m(Landroid/content/Context;ILandroid/hardware/Camera;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 254
    .line 255
    .line 256
    new-instance p1, Lon1;

    .line 257
    .line 258
    invoke-direct {p1, p0}, Lon1;-><init>(Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 265
    .line 266
    .line 267
    iput-boolean v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->f:Z

    .line 268
    .line 269
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->d:Lhv1;

    .line 270
    .line 271
    if-eqz p1, :cond_a

    .line 272
    .line 273
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->f()Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    invoke-interface {p1, v0}, Lhv1;->b(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 278
    .line 279
    .line 280
    :cond_a
    :goto_2
    iput-boolean v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->i:Z

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_b
    :goto_3
    iput-boolean v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->i:Z

    .line 284
    .line 285
    return-void

    .line 286
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->o()V

    .line 287
    .line 288
    .line 289
    new-instance v0, Ljava/lang/RuntimeException;

    .line 290
    .line 291
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    const-string v4, "Camera1 open failed: "

    .line 301
    .line 302
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-direct {v0, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    .line 314
    .line 315
    sget-object p1, Lere;->a:Lere;

    .line 316
    .line 317
    invoke-virtual {p1, v0}, Lere;->b(Ljava/lang/Throwable;)V

    .line 318
    .line 319
    .line 320
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->d:Lhv1;

    .line 321
    .line 322
    if-eqz p1, :cond_a

    .line 323
    .line 324
    invoke-interface {p1, v0}, Lhv1;->c(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 325
    .line 326
    .line 327
    goto :goto_2

    .line 328
    :goto_5
    return-void

    .line 329
    :goto_6
    iput-boolean v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->i:Z

    .line 330
    .line 331
    throw p1
.end method

.method public final j()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->f:Z

    .line 3
    .line 4
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->j:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->d:Lhv1;

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->o()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->f:Z

    .line 3
    .line 4
    return-void
.end method

.method public final m(Landroid/content/Context;ILandroid/hardware/Camera;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 7
    .line 8
    .line 9
    const-string p2, "window"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    .line 16
    .line 17
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Landroid/view/WindowManager;

    .line 21
    .line 22
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 p2, 0x0

    .line 31
    const/4 v1, 0x1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    if-eq p1, v1, :cond_2

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    if-eq p1, v2, :cond_1

    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    if-eq p1, v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/16 p2, 0x10e

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/16 p2, 0xb4

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/16 p2, 0x5a

    .line 50
    .line 51
    :cond_3
    :goto_0
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 52
    .line 53
    if-ne p1, v1, :cond_4

    .line 54
    .line 55
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 56
    .line 57
    add-int/2addr p1, p2

    .line 58
    rem-int/lit16 p1, p1, 0x168

    .line 59
    .line 60
    rsub-int p1, p1, 0x168

    .line 61
    .line 62
    rem-int/lit16 p1, p1, 0x168

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 66
    .line 67
    sub-int/2addr p1, p2

    .line 68
    add-int/lit16 p1, p1, 0x168

    .line 69
    .line 70
    rem-int/lit16 p1, p1, 0x168

    .line 71
    .line 72
    :goto_1
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->h:I

    .line 73
    .line 74
    invoke-virtual {p3, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->i:Z

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->c:Landroid/hardware/Camera;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->k:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->h(Landroid/graphics/SurfaceTexture;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->f:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->k:Z

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->c:Landroid/hardware/Camera;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->c:Landroid/hardware/Camera;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->c:Landroid/hardware/Camera;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 30
    .line 31
    .line 32
    :cond_2
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->c:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    sget-object v1, Lere;->a:Lere;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lere;->b(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lz3d;->a:Lz3d;

    .line 44
    .line 45
    const-string v2, "3"

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v3, "camera1"

    .line 52
    .line 53
    invoke-virtual {v1, v3, v2, v0}, Lz3d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_2
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "surface"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->h(Landroid/graphics/SurfaceTexture;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "surface"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->k()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "surface"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "surface"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final p()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->c:Landroid/hardware/Camera;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-boolean v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->g:Z

    .line 16
    .line 17
    xor-int/lit8 v3, v2, 0x1

    .line 18
    .line 19
    iput-boolean v3, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->g:Z

    .line 20
    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    const-string v2, "torch"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const-string v2, "off"

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :goto_2
    return-void
.end method

.method public final setCameraPreviewListener(Lhv1;)V
    .locals 0
    .param p1    # Lhv1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->d:Lhv1;

    .line 2
    .line 3
    return-void
.end method

.method public final setPerformance(Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;)V
    .locals 1
    .param p1    # Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera1Preview;->e:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 7
    .line 8
    return-void
.end method
