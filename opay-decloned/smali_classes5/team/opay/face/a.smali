.class public final Lteam/opay/face/a;
.super Ljava/lang/Object;
.source "CameraActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u000f\u0010\u0001\u001a\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u001a\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\t\u0010\n\u001a;\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00002\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00002\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a\u001f\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u000b2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001a\u0015\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "",
        "d",
        "()Ljava/lang/String;",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "traceId",
        "",
        "i",
        "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V",
        "k",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "Landroid/app/Activity;",
        "code",
        "msg",
        "extraCode",
        "e",
        "(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Lteam/opay/face/net/rsp/OPayFaceRsp$FaceData;",
        "data",
        "h",
        "(Landroid/app/Activity;Lteam/opay/face/net/rsp/OPayFaceRsp$FaceData;)V",
        "g",
        "(Landroid/app/Activity;)V",
        "sdk_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic a(Landroidx/fragment/app/FragmentActivity;Lteam/opay/face/net/rsp/OPayFaceRsp$FaceData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/face/a;->l(Landroidx/fragment/app/FragmentActivity;Lteam/opay/face/net/rsp/OPayFaceRsp$FaceData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/face/a;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/face/a;->k(Landroidx/fragment/app/FragmentActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final d()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lteam/opay/face/CameraActivity;->n:Lteam/opay/face/CameraActivity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/face/CameraActivity$Companion;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    const-string v4, "yyyyMMddHHmmssSSS"

    .line 22
    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v3, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    add-int/lit8 v2, v2, -0x6

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    add-int/lit8 v3, v3, -0x2

    .line 58
    .line 59
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "substring(...)"

    .line 64
    .line 65
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    :goto_1
    const-string v0, ""

    .line 70
    .line 71
    :goto_2
    new-instance v2, Ljava/util/Random;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 74
    .line 75
    .line 76
    const v3, 0x1869f

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/16 v3, 0x2710

    .line 84
    .line 85
    if-ge v2, v3, :cond_3

    .line 86
    .line 87
    add-int/lit16 v2, v2, 0x2710

    .line 88
    .line 89
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0
.end method

.method public static final e(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "result"

    .line 12
    .line 13
    const-string v3, "cancel"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    sget-object v2, Lteam/opay/face/CameraActivity;->n:Lteam/opay/face/CameraActivity$Companion;

    .line 19
    .line 20
    invoke-virtual {v2}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lteam/opay/face/FaceCameraData;->j()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "traceId"

    .line 29
    .line 30
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v2, ""

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    move-object p1, v2

    .line 38
    :cond_0
    const-string v3, "code"

    .line 39
    .line 40
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    move-object p2, v2

    .line 46
    :cond_1
    const-string p1, "msg"

    .line 47
    .line 48
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    if-nez p3, :cond_2

    .line 52
    .line 53
    move-object p3, v2

    .line 54
    :cond_2
    const-string p1, "extraCode"

    .line 55
    .line 56
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    const-string p1, "data"

    .line 60
    .line 61
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    const/4 p1, -0x1

    .line 71
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    if-eqz p0, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 77
    .line 78
    .line 79
    :cond_4
    return-void
.end method

.method public static synthetic f(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x4

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    and-int/lit8 p4, p4, 0x8

    .line 13
    .line 14
    if-eqz p4, :cond_2

    .line 15
    .line 16
    move-object p3, v0

    .line 17
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lteam/opay/face/a;->e(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final g(Landroid/app/Activity;)V
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lteam/opay/face/CameraActivity;->n:Lteam/opay/face/CameraActivity$Companion;

    .line 17
    .line 18
    invoke-virtual {v2}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lteam/opay/face/FaceCameraData;->h()Lcom/opay/face/phoneface/model/OFaceLiveResult;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/opay/face/phoneface/model/OFaceLiveResult;->b()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v3, v4

    .line 35
    :goto_0
    const-string v5, "imagePath"

    .line 36
    .line 37
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lteam/opay/face/FaceCameraData;->h()Lcom/opay/face/phoneface/model/OFaceLiveResult;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/opay/face/phoneface/model/OFaceLiveResult;->a()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    :cond_1
    const-string v3, "showImagePath"

    .line 55
    .line 56
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    const-string v3, "result"

    .line 60
    .line 61
    const-string v4, "true"

    .line 62
    .line 63
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lteam/opay/face/FaceCameraData;->j()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v3, "traceId"

    .line 75
    .line 76
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    const-string v2, "data"

    .line 80
    .line 81
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    const/4 v1, -0x1

    .line 89
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public static final h(Landroid/app/Activity;Lteam/opay/face/net/rsp/OPayFaceRsp$FaceData;)V
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lteam/opay/face/net/rsp/OPayFaceRsp$FaceData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lteam/opay/face/CameraActivity;->n:Lteam/opay/face/CameraActivity$Companion;

    .line 17
    .line 18
    invoke-virtual {v2}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lteam/opay/face/FaceCameraData;->h()Lcom/opay/face/phoneface/model/OFaceLiveResult;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/opay/face/phoneface/model/OFaceLiveResult;->b()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v3, v4

    .line 35
    :goto_0
    const-string v5, "imagePath"

    .line 36
    .line 37
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lteam/opay/face/FaceCameraData;->h()Lcom/opay/face/phoneface/model/OFaceLiveResult;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/opay/face/phoneface/model/OFaceLiveResult;->a()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v3, v4

    .line 56
    :goto_1
    const-string v5, "showImagePath"

    .line 57
    .line 58
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lteam/opay/face/FaceCameraData;->j()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const-string v3, "traceId"

    .line 70
    .line 71
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    const-string v2, "result"

    .line 75
    .line 76
    const-string v3, "true"

    .line 77
    .line 78
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    invoke-virtual {p1}, Lteam/opay/face/net/rsp/OPayFaceRsp$FaceData;->f()Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    const/4 v2, 0x0

    .line 95
    :goto_2
    const-string v3, "isFinish"

    .line 96
    .line 97
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    invoke-virtual {p1}, Lteam/opay/face/net/rsp/OPayFaceRsp$FaceData;->c()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    goto :goto_3

    .line 107
    :cond_3
    move-object v2, v4

    .line 108
    :goto_3
    const-string v3, "newKycLevel"

    .line 109
    .line 110
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    invoke-virtual {p1}, Lteam/opay/face/net/rsp/OPayFaceRsp$FaceData;->d()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    goto :goto_4

    .line 120
    :cond_4
    move-object v2, v4

    .line 121
    :goto_4
    const-string v3, "nextTaskNode"

    .line 122
    .line 123
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    invoke-virtual {p1}, Lteam/opay/face/net/rsp/OPayFaceRsp$FaceData;->e()Ljava/lang/Boolean;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    goto :goto_5

    .line 133
    :cond_5
    move-object v2, v4

    .line 134
    :goto_5
    const-string v3, "realNameFinished"

    .line 135
    .line 136
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    if-eqz p1, :cond_6

    .line 140
    .line 141
    invoke-virtual {p1}, Lteam/opay/face/net/rsp/OPayFaceRsp$FaceData;->a()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    goto :goto_6

    .line 146
    :cond_6
    move-object v2, v4

    .line 147
    :goto_6
    const-string v3, "firstName"

    .line 148
    .line 149
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    if-eqz p1, :cond_7

    .line 153
    .line 154
    invoke-virtual {p1}, Lteam/opay/face/net/rsp/OPayFaceRsp$FaceData;->b()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    :cond_7
    const-string p1, "lastName"

    .line 159
    .line 160
    invoke-virtual {v1, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    .line 162
    .line 163
    const-string p1, "data"

    .line 164
    .line 165
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    const/4 p1, -0x1

    .line 173
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public static final i(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 4
    .param p0    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "traceId"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lf5a;->c()Lf5a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lf5a;->f(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/opay/face/common/config/OAppConfig;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/opay/face/common/config/OAppConfig;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 24
    .line 25
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/opay/face/common/config/OAppConfig;->setDebug(Z)Lcom/opay/face/common/config/OAppConfig;

    .line 34
    .line 35
    .line 36
    sget-object v1, Lteam/opay/face/CameraActivity;->n:Lteam/opay/face/CameraActivity$Companion;

    .line 37
    .line 38
    invoke-virtual {v1}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    invoke-static {}, Lteam/opay/face/a;->d()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :cond_0
    invoke-virtual {v2, p1}, Lteam/opay/face/FaceCameraData;->t(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lteam/opay/face/FaceCameraData;->f()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-lez p1, :cond_1

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    invoke-virtual {v0, p1}, Lcom/opay/face/common/config/OAppConfig;->setUseInternalUpload(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lteam/opay/face/FaceCameraData;->f()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Lcom/opay/face/common/config/OAppConfig;->setFaceToken(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lteam/opay/face/FaceCameraData;->c()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v0, p1}, Lcom/opay/face/common/config/OAppConfig;->setFaceCaptureConfig(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-virtual {v1}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lteam/opay/face/FaceCameraData;->j()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v0, p1}, Lcom/opay/face/common/config/OAppConfig;->setTraceId(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lteam/opay/face/FaceCameraData;->b()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v0, p1}, Lcom/opay/face/common/config/OAppConfig;->setBusiness(Ljava/lang/String;)Lcom/opay/face/common/config/OAppConfig;

    .line 115
    .line 116
    .line 117
    sget-object p1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 118
    .line 119
    const-class v2, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 120
    .line 121
    invoke-virtual {p1, v2}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 126
    .line 127
    if-eqz p1, :cond_2

    .line 128
    .line 129
    invoke-interface {p1}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->token()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    const/4 p1, 0x0

    .line 135
    :goto_0
    if-nez p1, :cond_3

    .line 136
    .line 137
    const-string p1, ""

    .line 138
    .line 139
    :cond_3
    invoke-virtual {v0, p1}, Lcom/opay/face/common/config/OAppConfig;->setToken(Ljava/lang/String;)Lcom/opay/face/common/config/OAppConfig;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Lteam/opay/face/FaceCameraData;->a()Ljava/util/Map;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0, p1}, Lcom/opay/face/common/config/OAppConfig;->setExtraMap(Ljava/util/Map;)Lcom/opay/face/common/config/OAppConfig;

    .line 151
    .line 152
    .line 153
    sget-object p1, Lteam/opay/face/LivingFaceSwitchConfig;->Companion:Lteam/opay/face/LivingFaceSwitchConfig$Companion;

    .line 154
    .line 155
    invoke-virtual {p1}, Lteam/opay/face/LivingFaceSwitchConfig$Companion;->a()Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    invoke-virtual {v0, p1}, Lcom/opay/face/common/config/OAppConfig;->setNewUI(Z)Lcom/opay/face/common/config/OAppConfig;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lteam/opay/face/FaceCameraData;->e()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const-string v2, "true"

    .line 171
    .line 172
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    invoke-virtual {v0, p1}, Lcom/opay/face/common/config/OAppConfig;->setHasOtherMethod(Z)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Lteam/opay/face/FaceCameraData;->d()Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    invoke-virtual {v0, p1}, Lcom/opay/face/common/config/OAppConfig;->setHasDowngradeMethod(Z)V

    .line 188
    .line 189
    .line 190
    invoke-static {}, Lf5a;->c()Lf5a;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    new-instance v1, Lteam/opay/face/a$a;

    .line 195
    .line 196
    invoke-direct {v1, p0}, Lteam/opay/face/a$a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v0, v1}, Lf5a;->i(Lcom/opay/face/common/config/OAppConfig;Lp4a;)V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public static synthetic j(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Lteam/opay/face/a;->i(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final k(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/face/CameraActivity;->n:Lteam/opay/face/CameraActivity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/face/FaceCameraData;->h()Lcom/opay/face/phoneface/model/OFaceLiveResult;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/opay/face/phoneface/model/OFaceLiveResult;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    :cond_1
    sget-object v1, Lteam/opay/face/PreloadFragment;->l:Lteam/opay/face/PreloadFragment$Companion;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lteam/opay/face/PreloadFragment$Companion;->a(Ljava/lang/String;)Lteam/opay/face/PreloadFragment;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Ler1;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Ler1;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lteam/opay/face/PreloadFragment;->X(Lkotlin/jvm/functions/Function1;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->z(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static final l(Landroidx/fragment/app/FragmentActivity;Lteam/opay/face/net/rsp/OPayFaceRsp$FaceData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/face/a;->h(Landroid/app/Activity;Lteam/opay/face/net/rsp/OPayFaceRsp$FaceData;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method
