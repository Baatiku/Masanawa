.class public Lcom/opay/face/common/net/FaceUploadApi$a;
.super Ljava/lang/Object;
.source "FaceUploadApi.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/face/common/net/FaceUploadApi;->n(Landroid/content/Context;Ljava/lang/String;Lcom/opay/face/common/net/FaceUploadApi$b;)Lokhttp3/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/opay/face/common/net/FaceUploadApi$b;


# direct methods
.method public constructor <init>(JLcom/opay/face/common/net/FaceUploadApi$b;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/opay/face/common/net/FaceUploadApi$a;->a:J

    .line 2
    .line 3
    iput-object p3, p0, Lcom/opay/face/common/net/FaceUploadApi$a;->b:Lcom/opay/face/common/net/FaceUploadApi$b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4
    .param p1    # Lokhttp3/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/opay/face/common/net/FaceUploadApi;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "onFailure..."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-class v0, Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iget-wide v2, p0, Lcom/opay/face/common/net/FaceUploadApi$a;->a:J

    .line 29
    .line 30
    sub-long/2addr v0, v2

    .line 31
    iput-wide v0, p1, Lcom/opay/face/common/net/model/NetworkMetrics;->total:J

    .line 32
    .line 33
    invoke-static {}, Lcom/opay/face/util/GsonUtils;->a()Lcom/google/gson/Gson;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p1, ""

    .line 43
    .line 44
    :goto_0
    iget-object v0, p0, Lcom/opay/face/common/net/FaceUploadApi$a;->b:Lcom/opay/face/common/net/FaceUploadApi$b;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "Error:"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const/4 v1, 0x1

    .line 68
    const-string v2, "-2001"

    .line 69
    .line 70
    invoke-static {v0, v2, p2, p1, v1}, Lcom/opay/face/common/net/FaceUploadApi;->e(Lcom/opay/face/common/net/FaceUploadApi$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .param p1    # Lokhttp3/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/opay/face/common/net/FaceUploadApi;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "onResponse..."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-class v0, Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iget-wide v2, p0, Lcom/opay/face/common/net/FaceUploadApi$a;->a:J

    .line 29
    .line 30
    sub-long/2addr v0, v2

    .line 31
    iput-wide v0, p1, Lcom/opay/face/common/net/model/NetworkMetrics;->total:J

    .line 32
    .line 33
    invoke-static {}, Lcom/opay/face/util/GsonUtils;->a()Lcom/google/gson/Gson;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p1, ""

    .line 43
    .line 44
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x1

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {}, Lcom/opay/face/util/GsonUtils;->a()Lcom/google/gson/Gson;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-class v2, Lcom/opay/face/common/net/model/FaceUploadRes;

    .line 70
    .line 71
    invoke-virtual {v0, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Lcom/opay/face/common/net/model/FaceUploadRes;

    .line 76
    .line 77
    const-string v0, "OK"

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/opay/face/common/net/model/FaceUploadRes;->getStatus()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    iget-object v0, p0, Lcom/opay/face/common/net/FaceUploadApi$a;->b:Lcom/opay/face/common/net/FaceUploadApi$b;

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/opay/face/common/net/model/FaceUploadRes;->getFaceToken()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-static {v0, p2, p1}, Lcom/opay/face/common/net/FaceUploadApi;->f(Lcom/opay/face/common/net/FaceUploadApi$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_3

    .line 99
    .line 100
    :catch_0
    move-exception p2

    .line 101
    goto :goto_2

    .line 102
    :cond_1
    const-string v0, "ERROR"

    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/opay/face/common/net/model/FaceUploadRes;->getStatus()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    iget-object v0, p0, Lcom/opay/face/common/net/FaceUploadApi$a;->b:Lcom/opay/face/common/net/FaceUploadApi$b;

    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/opay/face/common/net/model/FaceUploadRes;->getErrorCode()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {p2}, Lcom/opay/face/common/net/model/FaceUploadRes;->getErrorMsg()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {p2}, Lcom/opay/face/common/net/model/FaceUploadRes;->isRetry()Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-static {v0, v2, v3, p1, p2}, Lcom/opay/face/common/net/FaceUploadApi;->e(Lcom/opay/face/common/net/FaceUploadApi$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_2
    invoke-virtual {p2}, Lcom/opay/face/common/net/model/FaceUploadRes;->getMessage()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_3

    .line 141
    .line 142
    const-string v0, "System is busy now, please try again later."

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    invoke-virtual {p2}, Lcom/opay/face/common/net/model/FaceUploadRes;->getMessage()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    :goto_1
    iget-object v2, p0, Lcom/opay/face/common/net/FaceUploadApi$a;->b:Lcom/opay/face/common/net/FaceUploadApi$b;

    .line 150
    .line 151
    invoke-virtual {p2}, Lcom/opay/face/common/net/model/FaceUploadRes;->getCode()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-static {v2, p2, v0, p1, v1}, Lcom/opay/face/common/net/FaceUploadApi;->e(Lcom/opay/face/common/net/FaceUploadApi$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :goto_2
    iget-object v0, p0, Lcom/opay/face/common/net/FaceUploadApi$a;->b:Lcom/opay/face/common/net/FaceUploadApi$b;

    .line 160
    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v3, "Exception"

    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    const-string v2, "-2003"

    .line 183
    .line 184
    invoke-static {v0, v2, p2, p1, v1}, Lcom/opay/face/common/net/FaceUploadApi;->e(Lcom/opay/face/common/net/FaceUploadApi$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_4
    iget-object v0, p0, Lcom/opay/face/common/net/FaceUploadApi$a;->b:Lcom/opay/face/common/net/FaceUploadApi$b;

    .line 189
    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string v3, "Http Code:"

    .line 196
    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    const-string v2, "-2002"

    .line 212
    .line 213
    invoke-static {v0, v2, p2, p1, v1}, Lcom/opay/face/common/net/FaceUploadApi;->e(Lcom/opay/face/common/net/FaceUploadApi$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 214
    .line 215
    .line 216
    :goto_3
    return-void
.end method
