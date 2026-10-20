.class public final Lteam/opay/opb/qrcode/scanner/view/CameraPreview$c;
.super Ljava/lang/Object;
.source "CameraPreview.kt"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/scanner/view/CameraPreview;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\'\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\n\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "team/opay/opb/qrcode/scanner/view/CameraPreview$c",
        "Landroid/view/TextureView$SurfaceTextureListener;",
        "Landroid/graphics/SurfaceTexture;",
        "texture",
        "",
        "width",
        "height",
        "",
        "onSurfaceTextureAvailable",
        "(Landroid/graphics/SurfaceTexture;II)V",
        "onSurfaceTextureSizeChanged",
        "surface",
        "",
        "onSurfaceTextureDestroyed",
        "(Landroid/graphics/SurfaceTexture;)Z",
        "onSurfaceTextureUpdated",
        "(Landroid/graphics/SurfaceTexture;)V",
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
.field public final synthetic a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/scanner/view/CameraPreview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$c;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 1
    const-string v0, "texture"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Luk8;->c:Luk8;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "onTextureAvailable texture width: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", height: "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-static {p1, v0, v1, v2, v1}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$c;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 39
    .line 40
    invoke-static {p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->r(Lteam/opay/opb/qrcode/scanner/view/CameraPreview;II)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 1
    const-string v0, "surface"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Luk8;->c:Luk8;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const-string v1, "onSurfaceTextureDestroyed"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p1, v1, v2, v0, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$c;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-static {p1, v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->v(Lteam/opay/opb/qrcode/scanner/view/CameraPreview;Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$c;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 22
    .line 23
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->o(Lteam/opay/opb/qrcode/scanner/view/CameraPreview;)Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$c;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 33
    .line 34
    invoke-static {p1, v2}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->x(Lteam/opay/opb/qrcode/scanner/view/CameraPreview;Landroid/animation/ValueAnimator;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$c;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$c;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 43
    .line 44
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->f(Lteam/opay/opb/qrcode/scanner/view/CameraPreview;)V

    .line 45
    .line 46
    .line 47
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .line 1
    const-string v0, "texture"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Luk8;->c:Luk8;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onSurfaceTextureSizeChanged texture width: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", height: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x2

    .line 35
    invoke-static {v0, v1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$c;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 39
    .line 40
    invoke-static {v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->n(Lteam/opay/opb/qrcode/scanner/view/CameraPreview;)Landroid/util/Size;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$c;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    :goto_0
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$c;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 58
    .line 59
    invoke-static {v1}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->n(Lteam/opay/opb/qrcode/scanner/view/CameraPreview;)Landroid/util/Size;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$c;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$c;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 80
    .line 81
    invoke-static {p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->g(Lteam/opay/opb/qrcode/scanner/view/CameraPreview;II)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    const-string v0, "texture"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
