.class public Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;
.super Ljava/lang/Object;
.source "OFaceLiveNew1Activity.java"

# interfaces
.implements Lr3a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->J0(IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/opay/face/common/view/dialog/BaseDialog;

.field public final synthetic d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;


# direct methods
.method public constructor <init>(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;ILjava/lang/String;Lcom/opay/face/common/view/dialog/BaseDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 2
    .line 3
    iput p2, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->c:Lcom/opay/face/common/view/dialog/BaseDialog;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "try_other_method"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->j0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 35
    .line 36
    const-string v4, "Dynamic_living_other_method_click"

    .line 37
    .line 38
    invoke-static {v4, v0, v1, v2, v3}, Lcom/opay/face/common/util/TraceUtils;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 42
    .line 43
    const/16 v1, 0x44c

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->m0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "positive"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->j0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 35
    .line 36
    const-string v4, "Dynamic_living_positive_click"

    .line 37
    .line 38
    invoke-static {v4, v0, v1, v2, v3}, Lcom/opay/face/common/util/TraceUtils;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->k0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->a:I

    .line 47
    .line 48
    const/16 v1, -0x3ee

    .line 49
    .line 50
    if-ne v0, v1, :cond_0

    .line 51
    .line 52
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->l0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 58
    .line 59
    iget v1, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->a:I

    .line 60
    .line 61
    invoke-static {v0, v1}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->m0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->H0()V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "neutral"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->j0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 35
    .line 36
    const-string v4, "Dynamic_living_neutral_click"

    .line 37
    .line 38
    invoke-static {v4, v0, v1, v2, v3}, Lcom/opay/face/common/util/TraceUtils;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 42
    .line 43
    iget v1, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->a:I

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->m0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "switch_camera"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->j0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 35
    .line 36
    const-string v4, "Dynamic_living_switch_camera_click"

    .line 37
    .line 38
    invoke-static {v4, v0, v1, v2, v3}, Lcom/opay/face/common/util/TraceUtils;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->k0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-static {v0, v1}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->f0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;I)I

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->H0()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public e()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "close"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->j0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 35
    .line 36
    const-string v4, "Dynamic_living_close_click"

    .line 37
    .line 38
    invoke-static {v4, v0, v1, v2, v3}, Lcom/opay/face/common/util/TraceUtils;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->k0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->a:I

    .line 47
    .line 48
    const/16 v1, -0x3ee

    .line 49
    .line 50
    if-ne v0, v1, :cond_0

    .line 51
    .line 52
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->l0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 58
    .line 59
    iget v1, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->a:I

    .line 60
    .line 61
    invoke-static {v0, v1}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->m0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->c:Lcom/opay/face/common/view/dialog/BaseDialog;

    .line 66
    .line 67
    instance-of v1, v0, Lcom/opay/face/common/view/dialog/CameraDamagedDialog;

    .line 68
    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    instance-of v1, v0, Lcom/opay/face/common/view/dialog/SwitchCameraDialog;

    .line 72
    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    instance-of v0, v0, Lcom/opay/face/common/view/dialog/OtherMethodDialog;

    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->H0()V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->n0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;)Lcom/opay/face/common/view/OFaceNewDialog;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/opay/face/common/view/OFaceNewDialog;->a()V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    sget v2, Lcom/opay/face/R$color;->live_white:I

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-static {v0, v1}, Lcom/opay/face/common/util/ScreenTools;->d(Landroid/app/Activity;I)V

    .line 108
    .line 109
    .line 110
    :goto_1
    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "negative"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->j0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 35
    .line 36
    const-string v4, "Dynamic_living_negative_click"

    .line 37
    .line 38
    invoke-static {v4, v0, v1, v2, v3}, Lcom/opay/face/common/util/TraceUtils;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->d:Lcom/opay/face/common/activity/OFaceLiveNew1Activity;

    .line 42
    .line 43
    iget v1, p0, Lcom/opay/face/common/activity/OFaceLiveNew1Activity$b;->a:I

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/opay/face/common/activity/OFaceLiveNew1Activity;->m0(Lcom/opay/face/common/activity/OFaceLiveNew1Activity;I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
