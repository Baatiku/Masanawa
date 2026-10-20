.class public final Lteam/opay/camera/CameraActivity$a$b;
.super Ljava/lang/Object;
.source "CameraActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/camera/CameraActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/camera/CameraActivity$a;

.field public final synthetic b:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Lteam/opay/camera/CameraActivity$a;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/camera/CameraActivity$a$b;->a:Lteam/opay/camera/CameraActivity$a;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/camera/CameraActivity$a$b;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lteam/opay/camera/CameraActivity$a$b;->a:Lteam/opay/camera/CameraActivity$a;

    .line 3
    .line 4
    iget-object v1, v1, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 5
    .line 6
    iget-object v2, p0, Lteam/opay/camera/CameraActivity$a$b;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    .line 8
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "cameraProviderFuture.get()"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v2, Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 18
    .line 19
    sget v3, Lteam/opay/camera/R$id;->camera_preview_layout:I

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Landroidx/camera/view/PreviewView;

    .line 26
    .line 27
    const-string v5, "camera_preview_layout"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$a;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v1, v4}, Lteam/opay/camera/CameraActivity;->N(Lteam/opay/camera/CameraActivity;Landroidx/camera/core/Preview$a;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Landroidx/camera/core/Preview$Builder;

    .line 40
    .line 41
    invoke-direct {v4}, Landroidx/camera/core/Preview$Builder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Landroidx/camera/core/Preview$Builder;->g()Landroidx/camera/core/Preview;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-static {v1}, Lteam/opay/camera/CameraActivity;->B(Lteam/opay/camera/CameraActivity;)Landroidx/camera/core/Preview$a;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v4, v6}, Landroidx/camera/core/Preview;->n0(Landroidx/camera/core/Preview$a;)V

    .line 53
    .line 54
    .line 55
    const-string v6, "Preview.Builder()\n      \u2026                        }"

    .line 56
    .line 57
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget-object v6, Landroidx/camera/core/CameraSelector;->d:Landroidx/camera/core/CameraSelector;

    .line 61
    .line 62
    const-string v7, "CameraSelector.DEFAULT_BACK_CAMERA"

    .line 63
    .line 64
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :try_start_0
    invoke-virtual {v2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->G()V

    .line 68
    .line 69
    .line 70
    new-instance v7, Landroidx/camera/core/ImageCapture$Builder;

    .line 71
    .line 72
    invoke-direct {v7}, Landroidx/camera/core/ImageCapture$Builder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v0}, Landroidx/camera/core/ImageCapture$Builder;->q(I)Landroidx/camera/core/ImageCapture$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-virtual {v1, v3}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Landroidx/camera/view/PreviewView;

    .line 84
    .line 85
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const-string v5, "camera_preview_layout.display"

    .line 93
    .line 94
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-virtual {v7, v3}, Landroidx/camera/core/ImageCapture$Builder;->u(I)Landroidx/camera/core/ImageCapture$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3}, Landroidx/camera/core/ImageCapture$Builder;->g()Landroidx/camera/core/ImageCapture;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-static {v1, v3}, Lteam/opay/camera/CameraActivity;->J(Lteam/opay/camera/CameraActivity;Landroidx/camera/core/ImageCapture;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Lteam/opay/camera/CameraActivity;->y(Lteam/opay/camera/CameraActivity;)Landroidx/camera/core/ImageCapture;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const/4 v5, 0x2

    .line 117
    new-array v5, v5, [Landroidx/camera/core/UseCase;

    .line 118
    .line 119
    aput-object v4, v5, v0

    .line 120
    .line 121
    const/4 v0, 0x1

    .line 122
    aput-object v3, v5, v0

    .line 123
    .line 124
    invoke-virtual {v2, v1, v6, v5}, Landroidx/camera/lifecycle/ProcessCameraProvider;->r(Lag8;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Lzq1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catch_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 129
    .line 130
    :goto_0
    return-void
.end method
