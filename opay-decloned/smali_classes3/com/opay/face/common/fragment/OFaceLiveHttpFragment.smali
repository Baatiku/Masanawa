.class public Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;
.super Lcom/opay/face/common/fragment/BaseLiveFragment;
.source "OFaceLiveHttpFragment.java"

# interfaces
.implements Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView$a;


# static fields
.field public static final s0:Ljava/lang/String; = "OFaceLiveHttpFragment"


# instance fields
.field public J:Landroid/widget/ImageView;

.field public K:Landroid/widget/TextView;

.field public L:Lcom/opay/face/common/view/OFaceNewDialog;

.field public M:Landroid/widget/ImageSwitcher;

.field public N:I

.field public O:I

.field public P:Z

.field public Q:Lretrofit2/Call;

.field public R:Lcom/opay/face/common/util/MediaThread;

.field public S:Ljava/lang/String;

.field public T:I

.field public volatile U:Z

.field public V:Landroid/widget/RelativeLayout;

.field public W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

.field public X:Landroid/widget/ImageView;

.field public Y:Landroid/widget/ImageView;

.field public Z:Lcom/opay/face/common/view/RoundImageView;

.field public volatile a0:Ljava/lang/String;

.field public b0:I

.field public c0:I

.field public k0:Z

.field public q0:I

.field public r0:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->N:I

    .line 6
    .line 7
    iput v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->O:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->P:Z

    .line 11
    .line 12
    iput v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->T:I

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->U:Z

    .line 15
    .line 16
    iput v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->b0:I

    .line 17
    .line 18
    iput v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->c0:I

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->k0:Z

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method private A0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, -0x3f5

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->W(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/opay/face/common/config/OAppConfig;->getLiveConfig()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/opay/face/common/config/OAppConfig;->getFaceSecurityConfig()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, v1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->U0(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, v0, v1, v1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->T0(Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/phoneface/model/PublicKey;)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    :cond_2
    if-nez v1, :cond_3

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->B0()V

    .line 49
    .line 50
    .line 51
    :cond_3
    return-void
.end method

.method private B0()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->m:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v2}, Lcom/opay/face/common/OFaceLiveConfigManager;->getConfigBuilder(Ljava/lang/String;)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-virtual {v2}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->l0()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    sub-long/2addr v3, v5

    .line 20
    const-wide/32 v5, 0x493e0

    .line 21
    .line 22
    .line 23
    cmp-long v7, v3, v5

    .line 24
    .line 25
    if-gez v7, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->M()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    iget-object v3, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->m(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->h0()Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iput-object v2, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->a1()V

    .line 45
    .line 46
    .line 47
    :cond_0
    sget-object v2, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->s0:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/16 v4, 0x3e8

    .line 54
    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const/4 v5, 0x3

    .line 60
    new-array v5, v5, [Ljava/lang/Object;

    .line 61
    .line 62
    aput-object v3, v5, v1

    .line 63
    .line 64
    aput-object v4, v5, v0

    .line 65
    .line 66
    const-string v0, "cached config."

    .line 67
    .line 68
    const/4 v1, 0x2

    .line 69
    aput-object v0, v5, v1

    .line 70
    .line 71
    const-string v0, "getConfig:%ds, code:%d, msg:%s"

    .line 72
    .line 73
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v2, v0}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->m(Z)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    iget-object v2, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->E:Landroidx/fragment/app/FragmentActivity;

    .line 91
    .line 92
    iget v3, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->T:I

    .line 93
    .line 94
    iget-object v4, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->m:Ljava/lang/String;

    .line 95
    .line 96
    new-instance v5, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;

    .line 97
    .line 98
    invoke-direct {v5, p0, v0, v1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;-><init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;J)V

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v3, v4, v5}, Lcom/opay/face/common/net/FaceConfigApi;->k(Landroid/content/Context;ILjava/lang/String;Lcom/opay/face/common/net/FaceConfigApi$a;)Lretrofit2/Call;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Q:Lretrofit2/Call;

    .line 106
    .line 107
    return-void
.end method

.method private C0()V
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/face/phoneface/ui/config/FlashColor;->W:Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->n(Lcom/opay/face/phoneface/ui/config/FlashColor;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->o()V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->N:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->P:Z

    .line 18
    .line 19
    return-void
.end method

.method private synthetic I0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->onBackPressed()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic N0(Lcom/opay/face/phoneface/ui/config/FlashColor;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/phoneface/ui/config/FlashColor;->getValue()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p0}, Lcom/opay/face/common/util/ScreenTools;->d(Landroid/app/Activity;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic O0(Ljava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 v2, 0x100

    .line 6
    .line 7
    new-array v2, v2, [B

    .line 8
    .line 9
    invoke-static {}, Lcom/opay/face/OFaceAlg;->getInstance()Lcom/opay/face/OFaceAlg;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v3, v4, p1, v2}, Lcom/opay/face/OFaceAlg;->getSec(Landroid/content/Context;Ljava/lang/String;[B)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->T:I

    .line 26
    .line 27
    sget-object p1, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->s0:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "ACRequest:"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    sub-long/2addr v4, v0

    .line 44
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, "ms"

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->T:I

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    if-lez v0, :cond_0

    .line 63
    .line 64
    new-instance v3, Ljava/lang/String;

    .line 65
    .line 66
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 67
    .line 68
    invoke-direct {v3, v2, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 69
    .line 70
    .line 71
    iput-object v3, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->S:Ljava/lang/String;

    .line 72
    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v2, "ACRequest:Log:"

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->S:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iput-boolean v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->U:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    :catch_0
    return-void
.end method

.method private synthetic R0()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Lcom/osec/nativelib/ACRequestManager;->newInstance(Landroid/content/Context;)Lcom/osec/nativelib/ACRequestManager;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3, v2}, Lcom/osec/nativelib/ACRequestManager;->GetCInfoSec(Landroid/content/Context;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iput-object v2, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->a0:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "Dynamic_living_camera_info"

    .line 24
    .line 25
    const-string v3, "0"

    .line 26
    .line 27
    iget-object v4, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->a0:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v5, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 30
    .line 31
    invoke-static {v2, v3, v4, v5}, Lcom/opay/face/common/util/TraceUtils;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/config/OAppConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v2

    .line 36
    sget-object v3, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->s0:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v3, v2}, Lcom/opay/face/util/Logs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    sget-object v2, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->s0:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v4, "camera info:"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    sub-long/2addr v4, v0

    .line 58
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, "ms, "

    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->a0:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v2, v0}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private S0(Lcom/opay/face/common/net/model/FaceConfigRes;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/opay/face/common/net/model/FaceConfigRes;->getConfig()Lcom/opay/face/common/net/model/Config;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/opay/face/common/net/model/Config;->getFaceSetting()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/opay/face/common/net/model/Config;->getSecuritySetting()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/opay/face/common/net/model/FaceConfigRes;->getPublicKey()Lcom/opay/face/phoneface/model/PublicKey;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, v1, v0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->T0(Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/phoneface/model/PublicKey;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private T0(Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/phoneface/model/PublicKey;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/opay/face/common/util/LiveConfigParser;->a(Ljava/lang/String;Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->s0:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {}, Lcom/opay/face/common/util/LiveConfigParser;->b()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p1, v1}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/16 p1, -0x7d0

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {}, Lcom/opay/face/common/util/LiveConfigParser;->b()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 32
    .line 33
    invoke-static {p1, v1, v2}, Lcom/opay/face/common/util/TraceUtils;->k(Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/config/OAppConfig;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {v0, p3}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->d1(Lcom/opay/face/phoneface/model/PublicKey;)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->h0()Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 44
    .line 45
    sget-object p3, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->s0:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p3, p1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->a1()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isDetectFingerprint()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_1

    .line 70
    .line 71
    iget p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->T:I

    .line 72
    .line 73
    if-gez p1, :cond_1

    .line 74
    .line 75
    iget-boolean p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->U:Z

    .line 76
    .line 77
    if-nez p1, :cond_1

    .line 78
    .line 79
    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->U:Z

    .line 81
    .line 82
    new-instance p1, Lt4a;

    .line 83
    .line 84
    invoke-direct {p1, p0, p2}, Lt4a;-><init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lcom/opay/face/util/ExecutorServiceUtils;->a(Ljava/lang/Runnable;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    return-void
.end method

.method private U0(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p1, "code"

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v2, "00000"

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    const-string p1, "data"

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {}, Lcom/opay/face/util/GsonUtils;->a()Lcom/google/gson/Gson;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-class v2, Lcom/opay/face/common/net/model/FaceConfigRes;

    .line 33
    .line 34
    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/opay/face/common/net/model/FaceConfigRes;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/opay/face/common/net/model/FaceConfigRes;->getConfig()Lcom/opay/face/common/net/model/Config;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->S0(Lcom/opay/face/common/net/model/FaceConfigRes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    return v0

    .line 57
    :goto_1
    sget-object v1, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->s0:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v1, p1}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return v0
.end method

.method private V0(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->R:Lcom/opay/face/common/util/MediaThread;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/opay/face/common/util/MediaThread;->a()Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private W0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->h()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->u:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->w:Z

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/opay/face/common/fragment/BaseLiveFragment;->W(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic Y(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;Landroid/content/Intent;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->H0(Landroid/content/Intent;Landroidx/fragment/app/FragmentActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private Y0(IILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Z0(IILjava/lang/String;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic Z(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;ILjava/lang/String;ILjava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Q0(ILjava/lang/String;ILjava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private Z0(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, La5a;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move v2, p2

    .line 6
    move-object v3, p4

    .line 7
    move v4, p1

    .line 8
    move-object v5, p3

    .line 9
    invoke-direct/range {v0 .. v5}, La5a;-><init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;ILjava/lang/String;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v6}, Lcom/opay/face/common/fragment/BaseLiveFragment;->T(Lcom/opay/face/common/fragment/BaseLiveFragment$b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->R0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a1()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->c0:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getCameraId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->c0:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->setCameraId(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isDetectFarNear()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 29
    .line 30
    const/high16 v1, 0x3f000000    # 0.5f

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->setRadiusRatio(F)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isDetectCamera()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->a0:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    new-instance v0, Ls4a;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Ls4a;-><init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/opay/face/util/ExecutorServiceUtils;->a(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-static {}, Lv3a;->f()Lv3a;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lv3a;->m()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 67
    .line 68
    iget v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->q0:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->setRetryCount(I)V

    .line 71
    .line 72
    .line 73
    iget-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->u:Z

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Z:Lcom/opay/face/common/view/RoundImageView;

    .line 79
    .line 80
    const/16 v1, 0x8

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->K:Landroid/widget/TextView;

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->setFaceLiveConfig(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isAudio()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iput-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->r:Z

    .line 105
    .line 106
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->p()V

    .line 111
    .line 112
    .line 113
    :cond_4
    return-void
.end method

.method public static synthetic b0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->G0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->M:Landroid/widget/ImageSwitcher;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Landroid/widget/ImageView;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    check-cast v0, Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public static synthetic c0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->I0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c1()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->r:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Y:Landroid/widget/ImageView;

    .line 5
    .line 6
    sget v2, Lcom/opay/face/R$drawable;->icon_mute:I

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->x:Landroid/media/AudioManager;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static synthetic d0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->F0(Landroidx/fragment/app/FragmentActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d1()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->r:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Y:Landroid/widget/ImageView;

    .line 5
    .line 6
    sget v2, Lcom/opay/face/R$drawable;->icon_sound:I

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->x:Landroid/media/AudioManager;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v3, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->x:Landroid/media/AudioManager;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-gtz v3, :cond_1

    .line 27
    .line 28
    iget-object v3, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 29
    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    const/16 v3, 0x1e

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v3}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getVolume()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    :goto_0
    iget-object v4, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->x:Landroid/media/AudioManager;

    .line 40
    .line 41
    mul-int v1, v1, v3

    .line 42
    .line 43
    div-int/lit8 v1, v1, 0x64

    .line 44
    .line 45
    invoke-virtual {v4, v2, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public static synthetic e0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->O0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e1(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_6

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_5

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_4

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    const/16 v0, 0xb

    .line 14
    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    const/16 v0, 0xc

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x3f5

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    packed-switch p1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget v1, Lcom/opay/face/R$drawable;->motion_img_front:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget v1, Lcom/opay/face/R$drawable;->motion_img_frame:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget v1, Lcom/opay/face/R$drawable;->motion_img_raise:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget v1, Lcom/opay/face/R$drawable;->motion_img_move_closer:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sget v1, Lcom/opay/face/R$drawable;->motion_img_move_farther:I

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sget v1, Lcom/opay/face/R$drawable;->motion_img_nod:I

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sget v1, Lcom/opay/face/R$drawable;->motion_img_yaw:I

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    sget v1, Lcom/opay/face/R$drawable;->motion_img_mouth:I

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    sget v1, Lcom/opay/face/R$drawable;->motion_img_blink:I

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 143
    .line 144
    :goto_0
    if-eqz v0, :cond_8

    .line 145
    .line 146
    iget v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->N:I

    .line 147
    .line 148
    if-eq v1, p1, :cond_8

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->M:Landroid/widget/ImageSwitcher;

    .line 154
    .line 155
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-lez v1, :cond_7

    .line 160
    .line 161
    iget-object v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->M:Landroid/widget/ImageSwitcher;

    .line 162
    .line 163
    invoke-virtual {v1, v0}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    .line 165
    .line 166
    :cond_7
    iput p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->N:I

    .line 167
    .line 168
    :cond_8
    return-void

    .line 169
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic f0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->J0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->L0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->K0()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->D0(Landroidx/fragment/app/FragmentActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->P0(Landroidx/fragment/app/FragmentActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->E0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->M0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m0(Lcom/opay/face/phoneface/ui/config/FlashColor;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->N0(Lcom/opay/face/phoneface/ui/config/FlashColor;Landroidx/fragment/app/FragmentActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->s0:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic o0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)Lcom/opay/face/common/view/CameraNewPreviewLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->c0:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic q0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->a1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->T:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic s0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->S:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic t0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->O:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic u0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->y0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic v0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->z0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)Lcom/opay/face/common/view/OFaceNewDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->L:Lcom/opay/face/common/view/OFaceNewDialog;

    .line 2
    .line 3
    return-object p0
.end method

.method private y0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->L:Lcom/opay/face/common/view/OFaceNewDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/face/common/view/OFaceNewDialog;->a()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->u:Z

    .line 8
    .line 9
    return-void
.end method

.method private z0()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->d:Z

    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lr4a;

    .line 15
    .line 16
    invoke-direct {v1, p0, v0}, Lr4a;-><init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/opay/face/common/fragment/BaseLiveFragment;->T(Lcom/opay/face/common/fragment/BaseLiveFragment$b;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final synthetic D0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->M:Landroid/widget/ImageSwitcher;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16
    .line 17
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 18
    .line 19
    const/high16 v2, 0x41000000    # 8.0f

    .line 20
    .line 21
    invoke-static {p1, v2}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/2addr v0, v2

    .line 26
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 27
    .line 28
    const/high16 v0, 0x41e00000    # 28.0f

    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 35
    .line 36
    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 37
    .line 38
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 39
    .line 40
    const/16 v0, 0x14

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->M:Landroid/widget/ImageSwitcher;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->K:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 57
    .line 58
    const/high16 v1, 0x41c00000    # 24.0f

    .line 59
    .line 60
    invoke-static {p1, v1}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    neg-int p1, p1

    .line 65
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 66
    .line 67
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->K:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->K:Landroid/widget/TextView;

    .line 73
    .line 74
    const/high16 v0, 0x42000000    # 32.0f

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->K:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sget v1, Lcom/opay/face/R$color;->live_face_black_85:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->K:Landroid/widget/TextView;

    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final synthetic E0()V
    .locals 1

    .line 1
    new-instance v0, Lv4a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lv4a;-><init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->T(Lcom/opay/face/common/fragment/BaseLiveFragment$b;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final synthetic F0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/high16 v3, 0x42c00000    # 96.0f

    .line 22
    .line 23
    invoke-static {p1, v3}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    int-to-float v2, v2

    .line 28
    int-to-float v5, v1

    .line 29
    iget-object v6, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 30
    .line 31
    invoke-virtual {v6}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->getRadiusRatio()F

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    mul-float v5, v5, v6

    .line 36
    .line 37
    sub-float/2addr v2, v5

    .line 38
    const/high16 v5, 0x40000000    # 2.0f

    .line 39
    .line 40
    div-float/2addr v2, v5

    .line 41
    float-to-int v2, v2

    .line 42
    sub-int/2addr v4, v2

    .line 43
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 44
    .line 45
    iget-object v2, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->K:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 57
    .line 58
    invoke-static {p1, v3}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 63
    .line 64
    iget-object v2, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->K:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->K:Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    sget v3, Lcom/opay/face/R$color;->live_white:I

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->K:Landroid/widget/TextView;

    .line 85
    .line 86
    sget v2, Lcom/opay/face/R$drawable;->live_face_hint_text_bg:I

    .line 87
    .line 88
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->K:Landroid/widget/TextView;

    .line 96
    .line 97
    const/high16 v0, 0x41c00000    # 24.0f

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->M:Landroid/widget/ImageSwitcher;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 112
    .line 113
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 114
    .line 115
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 116
    .line 117
    const/16 v0, 0xe

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->M:Landroid/widget/ImageSwitcher;

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final synthetic G0()V
    .locals 1

    .line 1
    new-instance v0, Lu4a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lu4a;-><init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->T(Lcom/opay/face/common/fragment/BaseLiveFragment$b;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final synthetic H0(Landroid/content/Intent;Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "package"

    .line 7
    .line 8
    invoke-static {v1, p2, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    const/16 p2, -0x3ee

    .line 21
    .line 22
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 31
    .line 32
    invoke-static {p2, p1, v0}, Lcom/opay/face/common/util/TraceUtils;->k(Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/config/OAppConfig;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public I()I
    .locals 1

    .line 1
    sget v0, Lcom/opay/face/R$layout;->activity_oface_live_new1:I

    .line 2
    .line 3
    return v0
.end method

.method public final synthetic J0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->F:Landroid/content/Context;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v3, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->F:Landroid/content/Context;

    .line 32
    .line 33
    const/high16 v4, 0x42c00000    # 96.0f

    .line 34
    .line 35
    invoke-static {v3, v4}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    int-to-float v2, v2

    .line 40
    int-to-float v4, v1

    .line 41
    iget-object v5, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->getRadiusRatio()F

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    mul-float v4, v4, v5

    .line 48
    .line 49
    sub-float/2addr v2, v4

    .line 50
    const/high16 v4, 0x40000000    # 2.0f

    .line 51
    .line 52
    div-float/2addr v2, v4

    .line 53
    float-to-int v2, v2

    .line 54
    sub-int/2addr v3, v2

    .line 55
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 56
    .line 57
    iget-object v2, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->V:Landroid/widget/RelativeLayout;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget-object v2, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->V:Landroid/widget/RelativeLayout;

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    int-to-float v0, v0

    .line 75
    int-to-float v2, v2

    .line 76
    div-float/2addr v0, v2

    .line 77
    iget-object v2, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Z:Lcom/opay/face/common/view/RoundImageView;

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 84
    .line 85
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 86
    .line 87
    float-to-double v3, v0

    .line 88
    const-wide v5, 0x3fe147ae147ae148L    # 0.54

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    cmpg-double v0, v3, v5

    .line 94
    .line 95
    if-gez v0, :cond_0

    .line 96
    .line 97
    mul-int/lit8 v1, v1, 0x10

    .line 98
    .line 99
    div-int/lit8 v1, v1, 0x19

    .line 100
    .line 101
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    mul-int/lit8 v1, v1, 0xf

    .line 105
    .line 106
    div-int/lit8 v1, v1, 0x19

    .line 107
    .line 108
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 109
    .line 110
    :goto_0
    iget v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 111
    .line 112
    neg-int v0, v0

    .line 113
    div-int/lit8 v0, v0, 0x8

    .line 114
    .line 115
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 116
    .line 117
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Z:Lcom/opay/face/common/view/RoundImageView;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    .line 121
    .line 122
    :cond_1
    return-void
.end method

.method public K()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->K()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic K0()Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->F:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget v1, Lcom/opay/face/R$drawable;->ic_face:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public L()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->L()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/opay/face/R$id;->cameraPreviewLayout:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->E(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->setCameraCallback(Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView$a;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->setAutoDetect(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->setFaceLiveCallback(Lpt1;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->setOAppConfig(Lcom/opay/face/common/config/OAppConfig;)V

    .line 33
    .line 34
    .line 35
    sget v0, Lcom/opay/face/R$id;->faceNewDialog:I

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->E(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/opay/face/common/view/OFaceNewDialog;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->L:Lcom/opay/face/common/view/OFaceNewDialog;

    .line 44
    .line 45
    sget v0, Lcom/opay/face/R$id;->closeIcon:I

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->E(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object v2, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->J:Landroid/widget/ImageView;

    .line 54
    .line 55
    const/high16 v3, -0x1000000

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->E(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v2, Lq4a;

    .line 65
    .line 66
    invoke-direct {v2, p0}, Lq4a;-><init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    sget v0, Lcom/opay/face/R$id;->hintTv:I

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->E(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->K:Landroid/widget/TextView;

    .line 81
    .line 82
    sget v0, Lcom/opay/face/R$id;->tipsIcon:I

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->E(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/ImageSwitcher;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->M:Landroid/widget/ImageSwitcher;

    .line 91
    .line 92
    sget v0, Lcom/opay/face/R$id;->faceLayout:I

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->E(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->V:Landroid/widget/RelativeLayout;

    .line 101
    .line 102
    sget v0, Lcom/opay/face/R$id;->flipCameraIv:I

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->E(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/widget/ImageView;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->X:Landroid/widget/ImageView;

    .line 111
    .line 112
    sget v0, Lcom/opay/face/R$id;->soundIv:I

    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->E(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/ImageView;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Y:Landroid/widget/ImageView;

    .line 121
    .line 122
    sget v0, Lcom/opay/face/R$id;->openLightIv:I

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->E(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/opay/face/common/view/RoundImageView;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Z:Lcom/opay/face/common/view/RoundImageView;

    .line 131
    .line 132
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 133
    .line 134
    const/4 v2, 0x4

    .line 135
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 139
    .line 140
    new-instance v2, Lw4a;

    .line 141
    .line 142
    invoke-direct {v2, p0}, Lw4a;-><init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->M:Landroid/widget/ImageSwitcher;

    .line 149
    .line 150
    const/4 v2, 0x0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->M:Landroid/widget/ImageSwitcher;

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->M:Landroid/widget/ImageSwitcher;

    .line 162
    .line 163
    new-instance v3, Lx4a;

    .line 164
    .line 165
    invoke-direct {v3, p0}, Lx4a;-><init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v3}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    sget v3, Lcom/opay/face/R$drawable;->motion_img_raise:I

    .line 176
    .line 177
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 182
    .line 183
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 184
    .line 185
    .line 186
    iget-object v3, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->M:Landroid/widget/ImageSwitcher;

    .line 187
    .line 188
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-lez v3, :cond_0

    .line 193
    .line 194
    iget-object v3, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->M:Landroid/widget/ImageSwitcher;

    .line 195
    .line 196
    invoke-virtual {v3, v0}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    .line 198
    .line 199
    :cond_0
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->X:Landroid/widget/ImageView;

    .line 200
    .line 201
    new-instance v3, Ly4a;

    .line 202
    .line 203
    invoke-direct {v3, p0}, Ly4a;-><init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->x:Landroid/media/AudioManager;

    .line 210
    .line 211
    if-eqz v0, :cond_3

    .line 212
    .line 213
    const/4 v3, 0x3

    .line 214
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-lez v0, :cond_2

    .line 219
    .line 220
    iget-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->r:Z

    .line 221
    .line 222
    if-nez v0, :cond_1

    .line 223
    .line 224
    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Y:Landroid/widget/ImageView;

    .line 226
    .line 227
    sget v2, Lcom/opay/face/R$drawable;->icon_sound:I

    .line 228
    .line 229
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    .line 231
    .line 232
    iput-boolean v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->k0:Z

    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Y:Landroid/widget/ImageView;

    .line 236
    .line 237
    sget v1, Lcom/opay/face/R$drawable;->icon_mute:I

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    .line 241
    .line 242
    iput-boolean v2, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->k0:Z

    .line 243
    .line 244
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Y:Landroid/widget/ImageView;

    .line 245
    .line 246
    new-instance v1, Lz4a;

    .line 247
    .line 248
    invoke-direct {v1, p0}, Lz4a;-><init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method public final synthetic L0(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->o()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getCameraId()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iput v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->c0:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->c0:I

    .line 20
    .line 21
    :goto_0
    iget-object p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 22
    .line 23
    iget v2, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->c0:I

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->setCameraId(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v3, "open camera "

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v3, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->c0:I

    .line 43
    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 56
    .line 57
    const-string v2, "Dynamic_living_flip_camera_click"

    .line 58
    .line 59
    invoke-static {v2, p1, v0, v1}, Lcom/opay/face/common/util/TraceUtils;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/config/OAppConfig;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->p()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final synthetic M0(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->k0:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->c1()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->d1()V

    .line 10
    .line 11
    .line 12
    :goto_0
    iget-boolean p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->k0:Z

    .line 13
    .line 14
    xor-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->k0:Z

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "sound "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->k0:Z

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 43
    .line 44
    const-string v2, "Dynamic_living_sound_click"

    .line 45
    .line 46
    invoke-static {v2, p1, v0, v1}, Lcom/opay/face/common/util/TraceUtils;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/config/OAppConfig;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public O(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/opay/face/common/fragment/BaseLiveFragment;->O(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->A0()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 p1, -0x3ee

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    const/16 v1, 0x69

    .line 15
    .line 16
    invoke-direct {p0, v1, p1, v0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Y0(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final synthetic P0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/opay/face/R$color;->live_white:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {p1, v0}, Lcom/opay/face/common/util/ScreenTools;->d(Landroid/app/Activity;I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->A0()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final synthetic Q0(ILjava/lang/String;ILjava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->u:Z

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
    iput-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->u:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Q:Lretrofit2/Call;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v1}, Lretrofit2/Call;->cancel()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->m(Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->C0()V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v9, "show"

    .line 40
    .line 41
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget v6, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->O:I

    .line 52
    .line 53
    iget-object v7, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 54
    .line 55
    invoke-static {}, Lcom/opay/face/util/Logs;->h()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    const-string v3, "Dynamic_living_dialog_show"

    .line 60
    .line 61
    invoke-static/range {v3 .. v8}, Lcom/opay/face/common/util/TraceUtils;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 v1, 0x4

    .line 65
    const/4 v3, 0x3

    .line 66
    const/4 v4, 0x2

    .line 67
    const/16 v5, 0x50

    .line 68
    .line 69
    const/16 v6, 0x11

    .line 70
    .line 71
    packed-switch p3, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    :pswitch_0
    new-instance p3, Lcom/opay/face/common/view/dialog/QuitOneDialog;

    .line 75
    .line 76
    invoke-direct {p3, p5}, Lcom/opay/face/common/view/dialog/QuitOneDialog;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :pswitch_1
    new-instance p3, Lcom/opay/face/common/view/dialog/CameraDamagedDialog;

    .line 85
    .line 86
    invoke-direct {p3, p5}, Lcom/opay/face/common/view/dialog/CameraDamagedDialog;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 90
    .line 91
    .line 92
    iget-object p4, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 93
    .line 94
    invoke-virtual {p4}, Lcom/opay/face/common/config/OAppConfig;->hasOtherMethod()Z

    .line 95
    .line 96
    .line 97
    move-result p4

    .line 98
    if-nez p4, :cond_2

    .line 99
    .line 100
    iget-object p4, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 101
    .line 102
    invoke-virtual {p4}, Lcom/opay/face/common/config/OAppConfig;->hasDowngradeMethod()Z

    .line 103
    .line 104
    .line 105
    move-result p4

    .line 106
    if-eqz p4, :cond_c

    .line 107
    .line 108
    :cond_2
    invoke-virtual {p3}, Lcom/opay/face/common/view/dialog/CameraDamagedDialog;->i()V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_4

    .line 112
    .line 113
    :pswitch_2
    new-instance p3, Lcom/opay/face/common/view/dialog/OtherMethodDialog;

    .line 114
    .line 115
    invoke-direct {p3, p5}, Lcom/opay/face/common/view/dialog/OtherMethodDialog;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :pswitch_3
    new-instance p3, Lcom/opay/face/common/view/dialog/SwitchCameraDialog;

    .line 124
    .line 125
    invoke-direct {p3, p5}, Lcom/opay/face/common/view/dialog/SwitchCameraDialog;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_4

    .line 132
    .line 133
    :pswitch_4
    new-instance p3, Lcom/opay/face/common/view/dialog/OopsDialog;

    .line 134
    .line 135
    invoke-direct {p3, p5}, Lcom/opay/face/common/view/dialog/OopsDialog;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3, p4}, Lcom/opay/face/common/view/dialog/BaseDialog;->setMessage(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_4

    .line 145
    .line 146
    :pswitch_5
    new-instance p3, Lcom/opay/face/common/view/dialog/CameraPermissionDialog;

    .line 147
    .line 148
    invoke-direct {p3, p5}, Lcom/opay/face/common/view/dialog/CameraPermissionDialog;-><init>(Landroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_4

    .line 155
    .line 156
    :pswitch_6
    iget p3, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->b0:I

    .line 157
    .line 158
    add-int/2addr p3, v0

    .line 159
    iput p3, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->b0:I

    .line 160
    .line 161
    iget p3, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->O:I

    .line 162
    .line 163
    if-eq p3, v0, :cond_5

    .line 164
    .line 165
    if-eq p3, v4, :cond_5

    .line 166
    .line 167
    if-eq p3, v3, :cond_5

    .line 168
    .line 169
    if-eq p3, v1, :cond_5

    .line 170
    .line 171
    const/16 p4, 0x3e9

    .line 172
    .line 173
    if-ne p3, p4, :cond_3

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_3
    new-instance p3, Lcom/opay/face/common/view/dialog/TimeoutOneDialog;

    .line 177
    .line 178
    invoke-direct {p3, p5}, Lcom/opay/face/common/view/dialog/TimeoutOneDialog;-><init>(Landroid/content/Context;)V

    .line 179
    .line 180
    .line 181
    iget-object p4, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 182
    .line 183
    invoke-virtual {p4}, Lcom/opay/face/common/config/OAppConfig;->hasOtherMethod()Z

    .line 184
    .line 185
    .line 186
    move-result p4

    .line 187
    if-eqz p4, :cond_4

    .line 188
    .line 189
    invoke-virtual {p3}, Lcom/opay/face/common/view/dialog/TimeoutOneDialog;->m()V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_4
    iget p4, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->b0:I

    .line 194
    .line 195
    iget-object v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getTimeoutLimitCount()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-le p4, v1, :cond_7

    .line 202
    .line 203
    iget-object p4, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 204
    .line 205
    invoke-virtual {p4}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->getCameraId()I

    .line 206
    .line 207
    .line 208
    move-result p4

    .line 209
    if-ne p4, v0, :cond_7

    .line 210
    .line 211
    invoke-virtual {p3}, Lcom/opay/face/common/view/dialog/TimeoutOneDialog;->n()V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_5
    :goto_0
    new-instance p3, Lcom/opay/face/common/view/dialog/TimeoutOneMotionDialog;

    .line 216
    .line 217
    invoke-direct {p3, p5}, Lcom/opay/face/common/view/dialog/TimeoutOneMotionDialog;-><init>(Landroid/content/Context;)V

    .line 218
    .line 219
    .line 220
    iget-object p4, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 221
    .line 222
    invoke-virtual {p4}, Lcom/opay/face/common/config/OAppConfig;->hasOtherMethod()Z

    .line 223
    .line 224
    .line 225
    move-result p4

    .line 226
    if-eqz p4, :cond_6

    .line 227
    .line 228
    invoke-virtual {p3}, Lcom/opay/face/common/view/dialog/TimeoutOneMotionDialog;->q()V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_6
    iget p4, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->b0:I

    .line 233
    .line 234
    iget-object v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 235
    .line 236
    invoke-virtual {v1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getTimeoutLimitCount()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-le p4, v1, :cond_7

    .line 241
    .line 242
    iget-object p4, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 243
    .line 244
    invoke-virtual {p4}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->getCameraId()I

    .line 245
    .line 246
    .line 247
    move-result p4

    .line 248
    if-ne p4, v0, :cond_7

    .line 249
    .line 250
    invoke-virtual {p3}, Lcom/opay/face/common/view/dialog/TimeoutOneMotionDialog;->r()V

    .line 251
    .line 252
    .line 253
    :cond_7
    :goto_1
    iget p4, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->b0:I

    .line 254
    .line 255
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 256
    .line 257
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getTimeoutLimitCount()I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-le p4, v0, :cond_9

    .line 262
    .line 263
    iget-object p4, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->X:Landroid/widget/ImageView;

    .line 264
    .line 265
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    .line 266
    .line 267
    .line 268
    move-result p4

    .line 269
    const/16 v0, 0x8

    .line 270
    .line 271
    if-ne p4, v0, :cond_8

    .line 272
    .line 273
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p4

    .line 277
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 278
    .line 279
    const-string v1, "Dynamic_living_flip_camera_show"

    .line 280
    .line 281
    invoke-static {v1, p4, v9, v0}, Lcom/opay/face/common/util/TraceUtils;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/config/OAppConfig;)V

    .line 282
    .line 283
    .line 284
    :cond_8
    iget-object p4, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->X:Landroid/widget/ImageView;

    .line 285
    .line 286
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    .line 288
    .line 289
    :cond_9
    invoke-virtual {p3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 290
    .line 291
    .line 292
    iget p4, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->O:I

    .line 293
    .line 294
    invoke-virtual {p3, p4}, Lcom/opay/face/common/view/dialog/BaseDialog;->setMotionState(I)V

    .line 295
    .line 296
    .line 297
    goto :goto_4

    .line 298
    :pswitch_7
    iget p3, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->O:I

    .line 299
    .line 300
    if-eq p3, v0, :cond_b

    .line 301
    .line 302
    if-eq p3, v4, :cond_b

    .line 303
    .line 304
    if-eq p3, v3, :cond_b

    .line 305
    .line 306
    if-ne p3, v1, :cond_a

    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_a
    new-instance p3, Lcom/opay/face/common/view/dialog/QuitTwoDialog;

    .line 310
    .line 311
    invoke-direct {p3, p5}, Lcom/opay/face/common/view/dialog/QuitTwoDialog;-><init>(Landroid/content/Context;)V

    .line 312
    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_b
    :goto_2
    new-instance p3, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;

    .line 316
    .line 317
    invoke-direct {p3, p5}, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;-><init>(Landroid/content/Context;)V

    .line 318
    .line 319
    .line 320
    :goto_3
    invoke-virtual {p3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 321
    .line 322
    .line 323
    iget p4, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->O:I

    .line 324
    .line 325
    invoke-virtual {p3, p4}, Lcom/opay/face/common/view/dialog/BaseDialog;->setMotionState(I)V

    .line 326
    .line 327
    .line 328
    :cond_c
    :goto_4
    new-instance p4, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$b;

    .line 329
    .line 330
    move-object v0, p4

    .line 331
    move-object v1, p0

    .line 332
    move v2, p1

    .line 333
    move-object v3, p2

    .line 334
    move-object v4, p3

    .line 335
    move-object v5, p5

    .line 336
    invoke-direct/range {v0 .. v5}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$b;-><init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;ILjava/lang/String;Lcom/opay/face/common/view/dialog/BaseDialog;Landroidx/fragment/app/FragmentActivity;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p3, p4}, Lcom/opay/face/common/view/dialog/BaseDialog;->setOFaceDialogClickListener(Lr3a;)V

    .line 340
    .line 341
    .line 342
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->L:Lcom/opay/face/common/view/OFaceNewDialog;

    .line 343
    .line 344
    invoke-virtual {p1, p3}, Lcom/opay/face/common/view/OFaceNewDialog;->c(Lcom/opay/face/common/view/dialog/BaseDialog;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    sget p2, Lcom/opay/face/R$color;->live_face_black_39:I

    .line 352
    .line 353
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    invoke-static {p5, p1}, Lcom/opay/face/common/util/ScreenTools;->d(Landroid/app/Activity;I)V

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public S()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->S()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public X0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->q0:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->q0:I

    .line 6
    .line 7
    new-instance v0, Ld5a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Ld5a;-><init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->T(Lcom/opay/face/common/fragment/BaseLiveFragment$b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public d(Lcom/opay/face/phoneface/model/Motion;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->b1()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 7
    .line 8
    .line 9
    const/16 p1, 0x3e8

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->V0(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(Lcom/opay/face/phoneface/model/OFaceLiveResult;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->M()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->o()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->v:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->H()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/opay/face/phoneface/model/OFaceLiveResult;->h(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lf5a;->c()Lf5a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lf5a;->h(Lcom/opay/face/phoneface/model/OFaceLiveResult;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/opay/face/common/OFaceLiveSender;->b()Lcom/opay/face/common/OFaceLiveSender;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Lcom/opay/face/common/OFaceLiveSender;->f(Lcom/opay/face/phoneface/model/OFaceLiveResult;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->U()V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/opay/face/common/model/LiveTraceResult;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/opay/face/common/model/LiveTraceResult;-><init>()V

    .line 47
    .line 48
    .line 49
    const/16 v1, 0x3e8

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, v0, Lcom/opay/face/common/model/LiveTraceResult;->a:Ljava/lang/String;

    .line 56
    .line 57
    const-string v1, "Success"

    .line 58
    .line 59
    iput-object v1, v0, Lcom/opay/face/common/model/LiveTraceResult;->b:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->S:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v1, v0, Lcom/opay/face/common/model/LiveTraceResult;->c:Ljava/lang/String;

    .line 64
    .line 65
    iget v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->z:I

    .line 66
    .line 67
    iput v1, v0, Lcom/opay/face/common/model/LiveTraceResult;->f:I

    .line 68
    .line 69
    iget v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->A:I

    .line 70
    .line 71
    iput v1, v0, Lcom/opay/face/common/model/LiveTraceResult;->g:I

    .line 72
    .line 73
    iget-boolean v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->G:Z

    .line 74
    .line 75
    iput-boolean v1, v0, Lcom/opay/face/common/model/LiveTraceResult;->j:Z

    .line 76
    .line 77
    invoke-static {}, Lcom/opay/face/util/Logs;->h()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/4 v2, 0x0

    .line 82
    invoke-static {v2}, Lcom/opay/face/util/Logs;->r(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iput-object v1, v0, Lcom/opay/face/common/model/LiveTraceResult;->d:Ljava/lang/String;

    .line 86
    .line 87
    iget v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->B:I

    .line 88
    .line 89
    iput v1, v0, Lcom/opay/face/common/model/LiveTraceResult;->e:I

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->H()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iput v1, v0, Lcom/opay/face/common/model/LiveTraceResult;->h:I

    .line 96
    .line 97
    iget-object v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 98
    .line 99
    invoke-static {v0, v1}, Lcom/opay/face/common/util/TraceUtils;->h(Lcom/opay/face/common/model/LiveTraceResult;Lcom/opay/face/common/config/OAppConfig;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/opay/face/phoneface/model/OFaceLiveResult;->c()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 107
    .line 108
    invoke-static {v0, v1}, Lcom/opay/face/common/util/TraceUtils;->s(Ljava/util/List;Lcom/opay/face/common/config/OAppConfig;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v2}, Lcom/opay/face/phoneface/model/OFaceLiveResult;->i(Ljava/util/List;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->F()V

    .line 115
    .line 116
    .line 117
    :cond_0
    return-void
.end method

.method public i(FI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->f(FI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n(Lcom/opay/face/phoneface/ui/config/FlashColor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->setFlashColor(Lcom/opay/face/phoneface/ui/config/FlashColor;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->V:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/opay/face/phoneface/ui/config/FlashColor;->getValue()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Le5a;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Le5a;-><init>(Lcom/opay/face/phoneface/ui/config/FlashColor;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->T(Lcom/opay/face/common/fragment/BaseLiveFragment$b;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public o(Lcom/opay/face/phoneface/model/Motion;II)V
    .locals 3

    .line 1
    sget-object v0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->s0:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "progress:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p2, " max:"

    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {v0, p2}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object p2, Lcom/opay/face/phoneface/model/Motion;->FRONT:Lcom/opay/face/phoneface/model/Motion;

    .line 32
    .line 33
    if-eq p1, p2, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isDetectFlash()Z

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->P:Z

    .line 2
    .line 3
    const/16 v1, -0x3ed

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x65

    .line 8
    .line 9
    const-string v2, "1"

    .line 10
    .line 11
    invoke-direct {p0, v0, v1, v2}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Y0(IILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v0, 0x66

    .line 16
    .line 17
    const-string v2, "2"

    .line 18
    .line 19
    invoke-direct {p0, v0, v1, v2}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Y0(IILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/opay/face/common/fragment/BaseLiveFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/opay/face/common/util/MediaThread;

    .line 5
    .line 6
    const-string v0, "MediaHandlerThread"

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {p1, v0, v1}, Lcom/opay/face/common/util/MediaThread;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->R:Lcom/opay/face/common/util/MediaThread;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->R:Lcom/opay/face/common/util/MediaThread;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/opay/face/common/util/MediaThread;->a()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/16 v1, -0x3e8

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->R:Lcom/opay/face/common/util/MediaThread;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/opay/face/common/util/MediaThread;->quitSafely()Z

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->b1()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public r(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/opay/face/common/fragment/BaseLiveFragment;->r(I)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->s0:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "state:"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->O:I

    .line 27
    .line 28
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->e()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->V0(I)V

    .line 34
    .line 35
    .line 36
    const/16 v0, 0x3eb

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    .line 41
    const/16 v0, 0x3ed

    .line 42
    .line 43
    if-eq p1, v0, :cond_1

    .line 44
    .line 45
    const/16 v0, 0x3ec

    .line 46
    .line 47
    if-eq p1, v0, :cond_1

    .line 48
    .line 49
    const/16 v0, 0x3ee

    .line 50
    .line 51
    if-eq p1, v0, :cond_1

    .line 52
    .line 53
    const/16 v0, 0x3ef

    .line 54
    .line 55
    if-eq p1, v0, :cond_1

    .line 56
    .line 57
    const/16 v0, 0x3f0

    .line 58
    .line 59
    if-eq p1, v0, :cond_1

    .line 60
    .line 61
    const/16 v0, 0x3e9

    .line 62
    .line 63
    if-eq p1, v0, :cond_1

    .line 64
    .line 65
    const/16 v0, 0x3ea

    .line 66
    .line 67
    if-eq p1, v0, :cond_1

    .line 68
    .line 69
    const/16 v0, 0x3f4

    .line 70
    .line 71
    if-ne p1, v0, :cond_0

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iput-boolean v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->P:Z

    .line 75
    .line 76
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->e()V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->g()V

    .line 85
    .line 86
    .line 87
    :goto_1
    if-eqz p1, :cond_d

    .line 88
    .line 89
    if-eq p1, v1, :cond_c

    .line 90
    .line 91
    const/4 v0, 0x2

    .line 92
    if-eq p1, v0, :cond_b

    .line 93
    .line 94
    const/4 v0, 0x3

    .line 95
    if-eq p1, v0, :cond_a

    .line 96
    .line 97
    const/4 v0, 0x4

    .line 98
    if-eq p1, v0, :cond_9

    .line 99
    .line 100
    const/16 v0, 0x9

    .line 101
    .line 102
    if-eq p1, v0, :cond_8

    .line 103
    .line 104
    const/16 v0, 0xb

    .line 105
    .line 106
    const/high16 v2, 0x3f000000    # 0.5f

    .line 107
    .line 108
    if-eq p1, v0, :cond_7

    .line 109
    .line 110
    const/16 v0, 0xc

    .line 111
    .line 112
    const-string v3, "Move closer"

    .line 113
    .line 114
    if-eq p1, v0, :cond_6

    .line 115
    .line 116
    const/16 v0, 0x7d1

    .line 117
    .line 118
    if-eq p1, v0, :cond_5

    .line 119
    .line 120
    const/16 v0, 0x7d2

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    if-eq p1, v0, :cond_4

    .line 124
    .line 125
    const/16 v0, 0xbb9

    .line 126
    .line 127
    if-eq p1, v0, :cond_3

    .line 128
    .line 129
    const/16 v0, 0xbba

    .line 130
    .line 131
    if-eq p1, v0, :cond_2

    .line 132
    .line 133
    packed-switch p1, :pswitch_data_0

    .line 134
    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :pswitch_0
    const-string v0, "Raise your phone"

    .line 139
    .line 140
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 141
    .line 142
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->e1(I)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_2

    .line 146
    .line 147
    :pswitch_1
    const-string p1, "Too many faces"

    .line 148
    .line 149
    iput-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 150
    .line 151
    goto/16 :goto_2

    .line 152
    .line 153
    :pswitch_2
    sget p1, Lcom/opay/face/R$string;->tips_action_not_match:I

    .line 154
    .line 155
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iput-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 160
    .line 161
    goto/16 :goto_2

    .line 162
    .line 163
    :pswitch_3
    const-string p1, "Move to a brighter spot"

    .line 164
    .line 165
    iput-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 166
    .line 167
    iget-object p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isOpenLight()Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_e

    .line 174
    .line 175
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Z:Lcom/opay/face/common/view/RoundImageView;

    .line 176
    .line 177
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    iput-boolean v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->G:Z

    .line 181
    .line 182
    goto/16 :goto_2

    .line 183
    .line 184
    :pswitch_4
    const-string p1, "Avoid direct light"

    .line 185
    .line 186
    iput-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 187
    .line 188
    goto/16 :goto_2

    .line 189
    .line 190
    :pswitch_5
    const-string p1, "Too blurred"

    .line 191
    .line 192
    iput-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 193
    .line 194
    goto/16 :goto_2

    .line 195
    .line 196
    :pswitch_6
    const-string p1, "Close your mouth"

    .line 197
    .line 198
    iput-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 199
    .line 200
    goto/16 :goto_2

    .line 201
    .line 202
    :pswitch_7
    const-string p1, "Open your eyes"

    .line 203
    .line 204
    iput-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 205
    .line 206
    goto/16 :goto_2

    .line 207
    .line 208
    :pswitch_8
    sget p1, Lcom/opay/face/R$string;->tips_do_not_cover_face:I

    .line 209
    .line 210
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iput-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 215
    .line 216
    goto/16 :goto_2

    .line 217
    .line 218
    :pswitch_9
    const-string v0, "Face the frame"

    .line 219
    .line 220
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 221
    .line 222
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->e1(I)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_2

    .line 226
    .line 227
    :pswitch_a
    const-string v0, "Move back a little"

    .line 228
    .line 229
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 230
    .line 231
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->e1(I)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_2

    .line 235
    .line 236
    :pswitch_b
    iput-object v3, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 237
    .line 238
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->e1(I)V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_2
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 243
    .line 244
    invoke-virtual {p1, v2}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->setPlayProgress(Z)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_3
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 249
    .line 250
    invoke-virtual {p1, v1}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->setPlayProgress(Z)V

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_4
    iput-boolean v2, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->C:Z

    .line 255
    .line 256
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 257
    .line 258
    sget v0, Lcom/opay/face/common/view/NewMaskView;->J:F

    .line 259
    .line 260
    invoke-virtual {p1, v0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->setRadiusRatio(F)V

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_5
    iput-boolean v1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->C:Z

    .line 265
    .line 266
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 267
    .line 268
    invoke-virtual {p1, v2}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->setRadiusRatio(F)V

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_6
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 273
    .line 274
    sget v1, Lcom/opay/face/common/view/NewMaskView;->J:F

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->setRadiusRatio(F)V

    .line 277
    .line 278
    .line 279
    iput-object v3, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 280
    .line 281
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->e1(I)V

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_7
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 286
    .line 287
    invoke-virtual {v0, v2}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->setRadiusRatio(F)V

    .line 288
    .line 289
    .line 290
    const-string v0, "Move back"

    .line 291
    .line 292
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 293
    .line 294
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->e1(I)V

    .line 295
    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_8
    const-string v0, "Remain still"

    .line 299
    .line 300
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 301
    .line 302
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->e1(I)V

    .line 303
    .line 304
    .line 305
    goto :goto_2

    .line 306
    :cond_9
    const-string v0, "Nod"

    .line 307
    .line 308
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 309
    .line 310
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->e1(I)V

    .line 311
    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_a
    const-string v0, "Turn your head"

    .line 315
    .line 316
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 317
    .line 318
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->e1(I)V

    .line 319
    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_b
    const-string v0, "Open your mouth"

    .line 323
    .line 324
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 325
    .line 326
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->e1(I)V

    .line 327
    .line 328
    .line 329
    goto :goto_2

    .line 330
    :cond_c
    const-string v0, "Blink your eyes"

    .line 331
    .line 332
    iput-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 333
    .line 334
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->e1(I)V

    .line 335
    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_d
    :pswitch_c
    const-string p1, "Face the camera"

    .line 339
    .line 340
    iput-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 341
    .line 342
    :cond_e
    :goto_2
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->K:Landroid/widget/TextView;

    .line 343
    .line 344
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    .line 348
    .line 349
    return-void

    .line 350
    nop

    .line 351
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public v(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->B:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->d(I)V

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->d1()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 14
    .line 15
    new-instance v0, Lb5a;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lb5a;-><init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 25
    .line 26
    new-instance v0, Lc5a;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lc5a;-><init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public x(Lcom/opay/face/phoneface/model/LiveCode;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->s0:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onLivingError..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W:Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->o()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$c;->a:[I

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    aget p1, v0, p1

    .line 20
    .line 21
    const-string v0, "1"

    .line 22
    .line 23
    const/16 v1, 0x67

    .line 24
    .line 25
    const/16 v2, 0x6a

    .line 26
    .line 27
    const-string v3, ""

    .line 28
    .line 29
    packed-switch p1, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :pswitch_0
    const/16 p1, -0x3f4

    .line 35
    .line 36
    iput p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->D:I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/opay/face/common/config/OAppConfig;->hasOtherMethod()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    const/16 p1, 0x6c

    .line 47
    .line 48
    const/16 v0, 0x44c

    .line 49
    .line 50
    invoke-direct {p0, p1, v0, v3}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Y0(IILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/16 v0, 0x6b

    .line 55
    .line 56
    invoke-direct {p0, v0, p1, v3}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Y0(IILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_1
    const/16 p1, -0x3f3

    .line 61
    .line 62
    iput p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->D:I

    .line 63
    .line 64
    const/16 v0, 0x6d

    .line 65
    .line 66
    invoke-direct {p0, v0, p1, v3}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Y0(IILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_2
    const/16 p1, -0x3f2

    .line 71
    .line 72
    iput p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->D:I

    .line 73
    .line 74
    sget v0, Lcom/opay/face/R$string;->dialog_oops_link_error:I

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {p0, v2, p1, v0, v3}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Z0(IILjava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :pswitch_3
    const/16 p1, -0x3f1

    .line 85
    .line 86
    iput p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->D:I

    .line 87
    .line 88
    sget v0, Lcom/opay/face/R$string;->dialog_oops_internal_error:I

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p0, v2, p1, v0, v3}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Z0(IILjava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_4
    const/16 p1, -0x3f0

    .line 99
    .line 100
    iput p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->D:I

    .line 101
    .line 102
    sget v0, Lcom/opay/face/R$string;->dialog_oops_storage_not_available:I

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {p0, v2, p1, v0, v3}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Z0(IILjava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_5
    const/16 p1, -0x3ea

    .line 113
    .line 114
    iput p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->D:I

    .line 115
    .line 116
    invoke-direct {p0, v1, p1, v0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Y0(IILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :pswitch_6
    const/16 p1, -0x3e9

    .line 121
    .line 122
    iput p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->D:I

    .line 123
    .line 124
    invoke-direct {p0, v1, p1, v0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->Y0(IILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :pswitch_7
    const/16 p1, -0x3ef

    .line 129
    .line 130
    iput p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->D:I

    .line 131
    .line 132
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W0(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :pswitch_8
    const/16 p1, -0x3ec

    .line 137
    .line 138
    iput p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->D:I

    .line 139
    .line 140
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W0(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :pswitch_9
    const/16 p1, -0x3eb

    .line 145
    .line 146
    iput p1, p0, Lcom/opay/face/common/fragment/BaseLiveFragment;->D:I

    .line 147
    .line 148
    invoke-direct {p0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->W0(I)V

    .line 149
    .line 150
    .line 151
    :goto_0
    return-void

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
