.class public Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;
.super Ljava/lang/Object;
.source "OFaceLiveUploadActivity.java"

# interfaces
.implements Lcom/opay/face/common/net/FaceUploadApi$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/face/common/activity/OFaceLiveUploadActivity;->G0(Lcom/opay/face/phoneface/model/OFaceLiveResult;JLcom/opay/face/common/view/dialog/UploadingDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/opay/face/phoneface/model/OFaceLiveResult;

.field public final synthetic c:Lcom/opay/face/common/view/dialog/UploadingDialog;

.field public final synthetic d:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;


# direct methods
.method public constructor <init>(Lcom/opay/face/common/activity/OFaceLiveUploadActivity;JLcom/opay/face/phoneface/model/OFaceLiveResult;Lcom/opay/face/common/view/dialog/UploadingDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->d:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->a:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->b:Lcom/opay/face/phoneface/model/OFaceLiveResult;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->c:Lcom/opay/face/common/view/dialog/UploadingDialog;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic c(Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;Lcom/opay/face/phoneface/model/OFaceLiveResult;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->d(Lcom/opay/face/phoneface/model/OFaceLiveResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iget-wide v3, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->a:J

    .line 11
    .line 12
    sub-long/2addr v1, v3

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->d:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 26
    .line 27
    iget-object v7, v0, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 28
    .line 29
    const-string v2, "Dynamic_living_face_upload"

    .line 30
    .line 31
    move-object v3, p1

    .line 32
    move-object v4, p2

    .line 33
    move-object v6, p3

    .line 34
    invoke-static/range {v2 .. v7}, Lcom/opay/face/common/util/TraceUtils;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/config/OAppConfig;)V

    .line 35
    .line 36
    .line 37
    iget-object p3, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->b:Lcom/opay/face/phoneface/model/OFaceLiveResult;

    .line 38
    .line 39
    invoke-virtual {p3}, Lcom/opay/face/phoneface/model/OFaceLiveResult;->c()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->d:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 46
    .line 47
    invoke-static {p3, v0}, Lcom/opay/face/common/util/TraceUtils;->s(Ljava/util/List;Lcom/opay/face/common/config/OAppConfig;)V

    .line 48
    .line 49
    .line 50
    iget-object p3, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->b:Lcom/opay/face/phoneface/model/OFaceLiveResult;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p3, v0}, Lcom/opay/face/phoneface/model/OFaceLiveResult;->i(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    iget-object p3, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->d:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 57
    .line 58
    iget-object p3, p3, Lcom/opay/face/common/activity/BaseLiveActivity;->I:Ljava/lang/ref/WeakReference;

    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    move-object v1, p3

    .line 65
    check-cast v1, Landroid/app/Activity;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-nez p3, :cond_2

    .line 74
    .line 75
    iget-object p3, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->d:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 76
    .line 77
    invoke-static {p3}, Lcom/opay/face/common/activity/OFaceLiveUploadActivity;->h0(Lcom/opay/face/common/activity/OFaceLiveUploadActivity;)Lcom/opay/face/common/view/OFaceNewDialog;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-virtual {p3}, Lcom/opay/face/common/view/OFaceNewDialog;->getCurrentDialog()Lcom/opay/face/common/view/dialog/BaseDialog;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    if-eqz p3, :cond_2

    .line 86
    .line 87
    instance-of p3, p3, Lcom/opay/face/common/view/dialog/UploadingDialog;

    .line 88
    .line 89
    if-eqz p3, :cond_2

    .line 90
    .line 91
    const-string p3, "-2001"

    .line 92
    .line 93
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    if-nez p3, :cond_1

    .line 98
    .line 99
    const-string p3, "-2002"

    .line 100
    .line 101
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    if-nez p3, :cond_1

    .line 106
    .line 107
    const-string p3, "-2003"

    .line 108
    .line 109
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    if-eqz p3, :cond_0

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->d:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 117
    .line 118
    iget-object p3, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->b:Lcom/opay/face/phoneface/model/OFaceLiveResult;

    .line 119
    .line 120
    invoke-virtual {p3}, Lcom/opay/face/phoneface/model/OFaceLiveResult;->a()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    move-object v2, p1

    .line 125
    move-object v3, p2

    .line 126
    move v5, p4

    .line 127
    invoke-static/range {v0 .. v5}, Lcom/opay/face/common/activity/OFaceLiveUploadActivity;->j0(Lcom/opay/face/common/activity/OFaceLiveUploadActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->d:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 132
    .line 133
    invoke-static {p3, v1, p1, p2}, Lcom/opay/face/common/activity/OFaceLiveUploadActivity;->i0(Lcom/opay/face/common/activity/OFaceLiveUploadActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_2
    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iget-wide v3, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->a:J

    .line 11
    .line 12
    sub-long/2addr v1, v3

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->d:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 26
    .line 27
    iget-object v7, v0, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 28
    .line 29
    const-string v2, "Dynamic_living_face_upload"

    .line 30
    .line 31
    const-string v3, "0"

    .line 32
    .line 33
    const-string v4, "success"

    .line 34
    .line 35
    move-object v6, p2

    .line 36
    invoke-static/range {v2 .. v7}, Lcom/opay/face/common/util/TraceUtils;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/config/OAppConfig;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->b:Lcom/opay/face/phoneface/model/OFaceLiveResult;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/opay/face/phoneface/model/OFaceLiveResult;->c()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->d:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 48
    .line 49
    invoke-static {p2, v0}, Lcom/opay/face/common/util/TraceUtils;->s(Ljava/util/List;Lcom/opay/face/common/config/OAppConfig;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->b:Lcom/opay/face/phoneface/model/OFaceLiveResult;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p2, v0}, Lcom/opay/face/phoneface/model/OFaceLiveResult;->i(Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->b:Lcom/opay/face/phoneface/model/OFaceLiveResult;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Lcom/opay/face/phoneface/model/OFaceLiveResult;->e(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->c:Lcom/opay/face/common/view/dialog/UploadingDialog;

    .line 64
    .line 65
    iget-object p2, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->b:Lcom/opay/face/phoneface/model/OFaceLiveResult;

    .line 66
    .line 67
    new-instance v0, Lz5a;

    .line 68
    .line 69
    invoke-direct {v0, p0, p2}, Lz5a;-><init>(Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;Lcom/opay/face/phoneface/model/OFaceLiveResult;)V

    .line 70
    .line 71
    .line 72
    const/16 p2, 0x3e8

    .line 73
    .line 74
    const-wide/16 v1, 0xfa

    .line 75
    .line 76
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/opay/face/common/view/dialog/UploadingDialog;->f(IJLcom/opay/face/common/view/ProgressSeekBar$b;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final synthetic d(Lcom/opay/face/phoneface/model/OFaceLiveResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/activity/OFaceLiveUploadActivity$c;->d:Lcom/opay/face/common/activity/OFaceLiveUploadActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/opay/face/common/activity/BaseLiveActivity;->I:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/opay/face/common/OFaceLiveSender;->b()Lcom/opay/face/common/OFaceLiveSender;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p1}, Lcom/opay/face/common/OFaceLiveSender;->f(Lcom/opay/face/phoneface/model/OFaceLiveResult;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
