.class public Lcom/opay/face/common/view/CameraNewPreviewLayout;
.super Landroid/widget/FrameLayout;
.source "CameraNewPreviewLayout.java"


# static fields
.field public static final s:Ljava/lang/String; = "CameraNewPreviewLayout"


# instance fields
.field public a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

.field public b:Landroid/view/View;

.field public c:Lcom/opay/face/common/view/NewMaskView;

.field public d:I

.field public e:I

.field public f:F

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Landroid/os/Handler;

.field public o:I

.field public p:I

.field public q:I

.field public r:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x3f53f7cf    # 0.828f

    .line 2
    iput v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->f:F

    const/16 v0, 0x280

    .line 3
    iput v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->g:I

    const/16 v0, 0x1e0

    .line 4
    iput v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->h:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->k:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->l:Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->i(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x3f53f7cf    # 0.828f

    .line 9
    iput p2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->f:F

    const/16 p2, 0x280

    .line 10
    iput p2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->g:I

    const/16 p2, 0x1e0

    .line 11
    iput p2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->h:I

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->k:Z

    const/4 p2, 0x0

    .line 13
    iput-boolean p2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->l:Z

    .line 14
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->i(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x3f53f7cf    # 0.828f

    .line 16
    iput p2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->f:F

    const/16 p2, 0x280

    .line 17
    iput p2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->g:I

    const/16 p2, 0x1e0

    .line 18
    iput p2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->h:I

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->k:Z

    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->l:Z

    .line 21
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->i(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/opay/face/common/view/CameraNewPreviewLayout;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/opay/face/common/view/CameraNewPreviewLayout;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->b:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne p0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-ne p0, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->o:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/opay/face/common/view/NewMaskView;->setBackCamera(Z)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lcom/opay/face/common/view/NewMaskView;->setBackCamera(Z)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-object p1, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->n:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v0, Lxu1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lxu1;-><init>(Lcom/opay/face/common/view/CameraNewPreviewLayout;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v1, 0xfa

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 2
    .line 3
    invoke-static {}, Lcom/opay/face/common/util/ColorUtils;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/opay/face/common/view/NewMaskView;->setRoundColor(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f(FI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/opay/face/common/view/NewMaskView;->k(FI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 2
    .line 3
    invoke-static {}, Lcom/opay/face/common/util/ColorUtils;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/opay/face/common/view/NewMaskView;->setRoundColor(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public getBoxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getBoxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public getCameraId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public getRadiusRatio()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/face/common/view/NewMaskView;->getRadiusRatio()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->b:Landroid/view/View;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->b:Landroid/view/View;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v1, 0x17

    .line 17
    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    if-lt v0, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "android.permission.CAMERA"

    .line 27
    .line 28
    invoke-static {v0, v1}, Loie;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method public final i(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->s:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "-----------initView-----------"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/opay/face/common/util/ScreenTools;->b(Landroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput v1, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->p:I

    .line 13
    .line 14
    invoke-static {p1}, Lcom/opay/face/common/util/ScreenTools;->a(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->q:I

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "screen ["

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->p:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ", "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->q:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, "]"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Landroid/os/Handler;

    .line 58
    .line 59
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->n:Landroid/os/Handler;

    .line 67
    .line 68
    new-instance v0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 69
    .line 70
    invoke-direct {v0, p1}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->r:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView$a;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->setCameraCallback(Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView$a;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Landroid/view/View;

    .line 81
    .line 82
    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->b:Landroid/view/View;

    .line 86
    .line 87
    const-string v1, "#FFFFFF"

    .line 88
    .line 89
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Lcom/opay/face/common/view/NewMaskView;

    .line 97
    .line 98
    invoke-direct {v0, p1}, Lcom/opay/face/common/view/NewMaskView;-><init>(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 102
    .line 103
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->b:Landroid/view/View;

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 125
    .line 126
    const/4 v1, 0x1

    .line 127
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 128
    .line 129
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 130
    .line 131
    iget-object v1, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 132
    .line 133
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p1}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->j(Landroid/content/Context;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    iput-boolean p1, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->k:Z

    .line 141
    .line 142
    return-void
.end method

.method public final synthetic k()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->l()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->q()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->d:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->e:I

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    div-float/2addr v0, v1

    .line 8
    sget-object v1, Lcom/opay/face/common/view/CameraNewPreviewLayout;->s:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "frameLayout size:["

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v3, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->d:I

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v4, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->e:I

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v4, "], ratio:"

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v1, v0}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->k:Z

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->getCameraManager()Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->g()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->g:I

    .line 65
    .line 66
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->getCameraManager()Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->f()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iput v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->h:I

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->getCameraManager()Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->g()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iput v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->h:I

    .line 90
    .line 91
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->getCameraManager()Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->f()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->g:I

    .line 102
    .line 103
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v2, "preview size:["

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->g:I

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->h:I

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v2, "]"

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v1, v0}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->g:I

    .line 139
    .line 140
    int-to-float v0, v0

    .line 141
    iget v4, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->h:I

    .line 142
    .line 143
    int-to-float v4, v4

    .line 144
    div-float/2addr v0, v4

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v5, "preview ratio:"

    .line 151
    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-static {v1, v4}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v5, "mask view box size:["

    .line 171
    .line 172
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object v5, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 176
    .line 177
    invoke-virtual {v5}, Lcom/opay/face/common/view/NewMaskView;->getBoxWidth()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object v5, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 188
    .line 189
    invoke-virtual {v5}, Lcom/opay/face/common/view/NewMaskView;->getBoxHeight()I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-static {v1, v4}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v4, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 207
    .line 208
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 213
    .line 214
    const/16 v5, 0x11

    .line 215
    .line 216
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 217
    .line 218
    iget v5, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->e:I

    .line 219
    .line 220
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 221
    .line 222
    int-to-float v5, v5

    .line 223
    mul-float v5, v5, v0

    .line 224
    .line 225
    float-to-int v0, v5

    .line 226
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 227
    .line 228
    iget v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->h:I

    .line 229
    .line 230
    int-to-float v0, v0

    .line 231
    iget-object v5, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 232
    .line 233
    invoke-virtual {v5}, Lcom/opay/face/common/view/NewMaskView;->getBoxHeight()I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    int-to-float v5, v5

    .line 238
    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 239
    .line 240
    int-to-float v6, v6

    .line 241
    div-float/2addr v5, v6

    .line 242
    mul-float v0, v0, v5

    .line 243
    .line 244
    float-to-int v0, v0

    .line 245
    iput v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->j:I

    .line 246
    .line 247
    int-to-float v0, v0

    .line 248
    iget-object v5, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 249
    .line 250
    invoke-virtual {v5}, Lcom/opay/face/common/view/NewMaskView;->getBoxWidth()I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    int-to-float v5, v5

    .line 255
    iget-object v6, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 256
    .line 257
    invoke-virtual {v6}, Lcom/opay/face/common/view/NewMaskView;->getBoxHeight()I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    int-to-float v6, v6

    .line 262
    div-float/2addr v5, v6

    .line 263
    mul-float v0, v0, v5

    .line 264
    .line 265
    float-to-int v0, v0

    .line 266
    iput v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->i:I

    .line 267
    .line 268
    rem-int/lit8 v5, v0, 0x2

    .line 269
    .line 270
    const/4 v6, 0x1

    .line 271
    if-ne v5, v6, :cond_1

    .line 272
    .line 273
    add-int/2addr v0, v6

    .line 274
    iput v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->i:I

    .line 275
    .line 276
    :cond_1
    iget v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->j:I

    .line 277
    .line 278
    rem-int/lit8 v5, v0, 0x2

    .line 279
    .line 280
    if-ne v5, v6, :cond_2

    .line 281
    .line 282
    add-int/2addr v0, v6

    .line 283
    iput v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->j:I

    .line 284
    .line 285
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    const-string v5, "camera preview view size:["

    .line 291
    .line 292
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 296
    .line 297
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 304
    .line 305
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-static {v1, v0}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string v5, "camera preview box size:["

    .line 324
    .line 325
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    iget v5, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->i:I

    .line 329
    .line 330
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    iget v3, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->j:I

    .line 337
    .line 338
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-static {v1, v0}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 352
    .line 353
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    .line 355
    .line 356
    return-void
.end method

.method public m(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->h()V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/opay/face/common/view/NewMaskView;->setLoading(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    sget-object v0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->s:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onDestroy..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->n:Landroid/os/Handler;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->m:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->f()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->p:I

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    iget p2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->q:I

    .line 5
    .line 6
    int-to-float p2, p2

    .line 7
    div-float/2addr p1, p2

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/high16 v0, 0x42200000    # 40.0f

    .line 13
    .line 14
    invoke-static {p2, v0}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const/high16 v0, 0x3f400000    # 0.75f

    .line 19
    .line 20
    cmpl-float v0, p1, v0

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    iget v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->q:I

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x9

    .line 27
    .line 28
    div-int/lit8 v0, v0, 0x10

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->p:I

    .line 32
    .line 33
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sub-int p2, v0, p2

    .line 40
    .line 41
    mul-int/lit8 p2, p2, 0x4

    .line 42
    .line 43
    div-int/lit8 p2, p2, 0x3

    .line 44
    .line 45
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    iput p2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->d:I

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    iput p2, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->e:I

    .line 63
    .line 64
    sget-object p2, Lcom/opay/face/common/view/CameraNewPreviewLayout;->s:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v1, "layout size: ["

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->d:I

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, ", "

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget v1, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->e:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, "] screenRadio:"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p2, p1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->m:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->g()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [F

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput v1, v2, v3

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    aput v1, v2, v3

    .line 16
    .line 17
    const-string v1, "alpha"

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-wide/16 v1, 0xfa

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/opay/face/common/view/CameraNewPreviewLayout$a;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/opay/face/common/view/CameraNewPreviewLayout$a;-><init>(Lcom/opay/face/common/view/CameraNewPreviewLayout;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public setAutoDetect(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->setAutoDetect(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/opay/face/common/view/NewMaskView;->setBackgroundColor(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setCameraCallback(Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView$a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->r:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->setCameraCallback(Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView$a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setFaceLiveCallback(Lpt1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->setFaceCallback(Lpt1;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setFaceLiveConfig(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->setFaceLiveConfig(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setFlashColor(Lcom/opay/face/phoneface/ui/config/FlashColor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->setFlashColor(Lcom/opay/face/phoneface/ui/config/FlashColor;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/opay/face/phoneface/ui/config/FlashColor;->getValue()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->setBackgroundColor(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setLandscape(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOAppConfig(Lcom/opay/face/common/config/OAppConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->a:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->setOAppConfig(Lcom/opay/face/common/config/OAppConfig;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setPlayProgress(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/opay/face/common/view/NewMaskView;->setPlayProgress(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRadiusRatio(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c:Lcom/opay/face/common/view/NewMaskView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/opay/face/common/view/NewMaskView;->j(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
