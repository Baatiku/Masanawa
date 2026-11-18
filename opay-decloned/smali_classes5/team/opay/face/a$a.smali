.class public final Lteam/opay/face/a$a;
.super Ljava/lang/Object;
.source "CameraActivity.kt"

# interfaces
.implements Lp4a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/face/a;->i(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "team/opay/face/a$a",
        "Lp4a;",
        "Lcom/opay/face/phoneface/model/OFaceLiveResult;",
        "liveResult",
        "",
        "b",
        "(Lcom/opay/face/phoneface/model/OFaceLiveResult;)V",
        "Lcom/opay/face/phoneface/model/OFaceLiveError;",
        "faceLiveError",
        "a",
        "(Lcom/opay/face/phoneface/model/OFaceLiveError;)V",
        "sdk_release"
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
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/face/a$a;->a:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/opay/face/phoneface/model/OFaceLiveError;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/opay/face/phoneface/model/OFaceLiveError;->a()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/opay/face/phoneface/model/OFaceLiveError;->b()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v2, v0

    .line 22
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "errorCode="

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", errorMessage="

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget-object v1, Lps;->a:Lps;

    .line 44
    .line 45
    sget-object v2, Lteam/opay/face/CameraActivity;->n:Lteam/opay/face/CameraActivity$Companion;

    .line 46
    .line 47
    invoke-virtual {v2}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lteam/opay/face/FaceCameraData;->b()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const-string v4, "call_code"

    .line 56
    .line 57
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4}, Lteam/opay/face/FaceCameraData;->j()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string v5, "trace_id"

    .line 70
    .line 71
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/opay/face/phoneface/model/OFaceLiveError;->a()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    move-object v5, v0

    .line 87
    :goto_2
    const-string v6, "errorCode"

    .line 88
    .line 89
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/opay/face/phoneface/model/OFaceLiveError;->b()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    move-object v6, v0

    .line 101
    :goto_3
    const-string v7, "errorMessage"

    .line 102
    .line 103
    invoke-static {v7, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v2}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lteam/opay/face/FaceCameraData;->g()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v7, "kycLevel"

    .line 116
    .line 117
    invoke-static {v7, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const/4 v7, 0x5

    .line 122
    new-array v7, v7, [Lkotlin/Pair;

    .line 123
    .line 124
    const/4 v8, 0x0

    .line 125
    aput-object v3, v7, v8

    .line 126
    .line 127
    const/4 v3, 0x1

    .line 128
    aput-object v4, v7, v3

    .line 129
    .line 130
    const/4 v3, 0x2

    .line 131
    aput-object v5, v7, v3

    .line 132
    .line 133
    const/4 v3, 0x3

    .line 134
    aput-object v6, v7, v3

    .line 135
    .line 136
    const/4 v3, 0x4

    .line 137
    aput-object v2, v7, v3

    .line 138
    .line 139
    const-string v2, "camera_living_face_error_return"

    .line 140
    .line 141
    invoke-virtual {v1, v2, v7}, Lps;->a(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lteam/opay/face/a$a;->a:Landroidx/fragment/app/FragmentActivity;

    .line 145
    .line 146
    if-eqz p1, :cond_4

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/opay/face/phoneface/model/OFaceLiveError;->a()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    goto :goto_4

    .line 157
    :cond_4
    move-object v2, v0

    .line 158
    :goto_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    if-eqz p1, :cond_5

    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/opay/face/phoneface/model/OFaceLiveError;->b()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    goto :goto_5

    .line 169
    :cond_5
    move-object v3, v0

    .line 170
    :goto_5
    if-eqz p1, :cond_6

    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/opay/face/phoneface/model/OFaceLiveError;->c()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-static {v1, v2, v3, p1}, Lteam/opay/face/a;->e(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public b(Lcom/opay/face/phoneface/model/OFaceLiveResult;)V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/face/CameraActivity;->n:Lteam/opay/face/CameraActivity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Lteam/opay/face/FaceCameraData;->r(Lcom/opay/face/phoneface/model/OFaceLiveResult;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lteam/opay/face/FaceCameraData;->i()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lteam/opay/face/a$a;->a:Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    invoke-static {p1}, Lteam/opay/face/a;->c(Landroidx/fragment/app/FragmentActivity;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lteam/opay/face/a$a;->a:Landroidx/fragment/app/FragmentActivity;

    .line 27
    .line 28
    invoke-static {p1}, Lteam/opay/face/a;->g(Landroid/app/Activity;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method
