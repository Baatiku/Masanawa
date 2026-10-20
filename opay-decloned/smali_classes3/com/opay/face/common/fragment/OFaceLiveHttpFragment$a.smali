.class public Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;
.super Ljava/lang/Object;
.source "OFaceLiveHttpFragment.java"

# interfaces
.implements Lcom/opay/face/common/net/FaceConfigApi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;


# direct methods
.method public constructor <init>(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;->b:Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;->a:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->n0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iget-wide v3, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;->a:J

    .line 10
    .line 11
    sub-long/2addr v1, v3

    .line 12
    long-to-float v1, v1

    .line 13
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 14
    .line 15
    div-float/2addr v1, v2

    .line 16
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/16 v2, -0x7d0

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x3

    .line 27
    new-array v4, v4, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    aput-object v1, v4, v5

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    aput-object v3, v4, v1

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    aput-object p1, v4, v1

    .line 37
    .line 38
    const-string v1, "getConfig:%.3fs, code:%d, msg:%s"

    .line 39
    .line 40
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;->b:Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->M()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;->b:Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->o0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v5}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->m(Z)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;->b:Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/opay/face/common/fragment/BaseLiveFragment;->q:Lcom/opay/face/common/config/OAppConfig;

    .line 71
    .line 72
    invoke-static {v0, p1, v1}, Lcom/opay/face/common/util/TraceUtils;->k(Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/config/OAppConfig;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 76
    .line 77
    invoke-direct {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;-><init>()V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;->b:Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->h0()Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, v0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 87
    .line 88
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;->b:Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->q0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V

    .line 91
    .line 92
    .line 93
    :cond_0
    return-void
.end method

.method public b(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;->b:Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/opay/face/common/fragment/BaseLiveFragment;->m:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/opay/face/common/OFaceLiveConfigManager;->putConfigBuilder(Ljava/lang/String;Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->n0()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-wide v3, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;->a:J

    .line 17
    .line 18
    sub-long/2addr v1, v3

    .line 19
    long-to-float v1, v1

    .line 20
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 21
    .line 22
    div-float/2addr v1, v2

    .line 23
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/16 v2, 0x3e8

    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x3

    .line 34
    new-array v3, v3, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    aput-object v1, v3, v4

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    aput-object v2, v3, v1

    .line 41
    .line 42
    const-string v1, "success"

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    aput-object v1, v3, v2

    .line 46
    .line 47
    const-string v1, "getConfig:%.3fs, code:%d, msg:%s"

    .line 48
    .line 49
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;->b:Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/opay/face/common/fragment/BaseLiveFragment;->M()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;->b:Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->o0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)Lcom/opay/face/common/view/CameraNewPreviewLayout;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, v4}, Lcom/opay/face/common/view/CameraNewPreviewLayout;->m(Z)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;->b:Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->h0()Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, v0, Lcom/opay/face/common/fragment/BaseLiveFragment;->l:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 80
    .line 81
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;->b:Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->q0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;->b:Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->r0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;I)I

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment$a;->b:Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;->s0(Lcom/opay/face/common/fragment/OFaceLiveHttpFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    return-void
.end method
