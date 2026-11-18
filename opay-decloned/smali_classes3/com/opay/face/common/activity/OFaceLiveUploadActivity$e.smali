.class public Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;
.super Ljava/lang/Object;
.source "OFaceLiveUploadActivity.java"

# interfaces
.implements Lr3a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/face/common/activity/OFaceLiveUploadActivity;->R0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;


# direct methods
.method public constructor <init>(Lcom/opay/face/common/activity/OFaceLiveUploadActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->c:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->c:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/opay/face/common/activity/OFaceLiveUploadActivity;->n0(Lcom/opay/face/common/activity/OFaceLiveUploadActivity;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->c:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 12
    .line 13
    const-string v3, "Dynamic_living_positive_click"

    .line 14
    .line 15
    const-string v4, "positive"

    .line 16
    .line 17
    invoke-static {v3, v0, v4, v1, v2}, Lcom/opay/face/common/util/TraceUtils;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->c:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/opay/face/common/activity/OFaceLiveUploadActivity;->o0(Lcom/opay/face/common/activity/OFaceLiveUploadActivity;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->c:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/opay/face/common/activity/OFaceLiveUploadActivity;->N0()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->c:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/opay/face/common/activity/OFaceLiveUploadActivity;->n0(Lcom/opay/face/common/activity/OFaceLiveUploadActivity;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->c:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 12
    .line 13
    const-string v3, "Dynamic_living_close_click"

    .line 14
    .line 15
    const-string v4, "close"

    .line 16
    .line 17
    invoke-static {v3, v0, v4, v1, v2}, Lcom/opay/face/common/util/TraceUtils;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->c:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/opay/face/common/activity/OFaceLiveUploadActivity;->o0(Lcom/opay/face/common/activity/OFaceLiveUploadActivity;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->c:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/opay/face/common/activity/OFaceLiveUploadActivity;->N0()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->c:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/opay/face/common/activity/OFaceLiveUploadActivity;->n0(Lcom/opay/face/common/activity/OFaceLiveUploadActivity;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->c:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 12
    .line 13
    const-string v3, "Dynamic_living_negative_click"

    .line 14
    .line 15
    const-string v4, "negative"

    .line 16
    .line 17
    invoke-static {v3, v0, v4, v1, v2}, Lcom/opay/face/common/util/TraceUtils;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    :goto_0
    iget-object v1, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->c:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$e;->b:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1, v0, v2}, Lcom/opay/face/common/activity/OFaceLiveUploadActivity;->g0(Lcom/opay/face/common/activity/OFaceLiveUploadActivity;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
