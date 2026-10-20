.class public final Lteam/opay/core/networkstatus/task/TelnetTask;
.super Lteam/opay/core/networkstatus/task/INetworkDetectTask;
.source "TelnetTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/networkstatus/task/INetworkDetectTask<",
        "Lteam/opay/core/networkstatus/result/TelnetResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0096@\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/core/networkstatus/task/TelnetTask;",
        "Lteam/opay/core/networkstatus/task/INetworkDetectTask;",
        "Lteam/opay/core/networkstatus/result/TelnetResult;",
        "",
        "host",
        "",
        "port",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;",
        "a",
        "(Ljr2;)Ljava/lang/Object;",
        "b",
        "Ljava/lang/String;",
        "c",
        "I",
        "network-status-ping_release"
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
.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "telnet"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lteam/opay/core/networkstatus/task/INetworkDetectTask;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/core/networkstatus/task/TelnetTask;->b:Ljava/lang/String;

    .line 12
    .line 13
    iput p2, p0, Lteam/opay/core/networkstatus/task/TelnetTask;->c:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(Ljr2;)Ljava/lang/Object;
    .locals 19
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse<",
            "Lteam/opay/core/networkstatus/result/TelnetResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Lqk8;->c:Lqk8;

    .line 4
    .line 5
    iget-object v2, v1, Lteam/opay/core/networkstatus/task/TelnetTask;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, v1, Lteam/opay/core/networkstatus/task/TelnetTask;->c:I

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "Telnet ----- "

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ":"

    .line 23
    .line 24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, " "

    .line 31
    .line 32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x2

    .line 41
    invoke-static {v0, v2, v3, v4, v3}, Lteam/opay/core/common/GenericLogger;->p(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    new-instance v2, Lorg/apache/commons/net/telnet/TelnetClient;

    .line 49
    .line 50
    invoke-direct {v2}, Lorg/apache/commons/net/telnet/TelnetClient;-><init>()V

    .line 51
    .line 52
    .line 53
    const/16 v7, 0x1388

    .line 54
    .line 55
    invoke-virtual {v2, v7}, Lorg/apache/commons/net/SocketClient;->s(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v7}, Lorg/apache/commons/net/SocketClient;->u(I)V

    .line 59
    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    :try_start_0
    iget-object v8, v1, Lteam/opay/core/networkstatus/task/TelnetTask;->b:Ljava/lang/String;

    .line 63
    .line 64
    iget v9, v1, Lteam/opay/core/networkstatus/task/TelnetTask;->c:I

    .line 65
    .line 66
    invoke-virtual {v2, v8, v9}, Lorg/apache/commons/net/SocketClient;->g(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    new-instance v8, Ljava/io/PrintStream;

    .line 70
    .line 71
    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->h0()Ljava/io/OutputStream;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    const-string v10, "UTF-8"

    .line 76
    .line 77
    const/4 v11, 0x1

    .line 78
    invoke-direct {v8, v9, v11, v10}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v9, "GET / HTTP/1.1"

    .line 82
    .line 83
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v9, v1, Lteam/opay/core/networkstatus/task/TelnetTask;->b:Ljava/lang/String;

    .line 87
    .line 88
    new-instance v10, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v12, "Host: "

    .line 94
    .line 95
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v9, "Connection: close"

    .line 109
    .line 110
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8}, Ljava/io/PrintStream;->println()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8}, Ljava/io/PrintStream;->flush()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->g0()Ljava/io/InputStream;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    const-string v9, "getInputStream(...)"

    .line 124
    .line 125
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 129
    .line 130
    new-instance v10, Ljava/io/InputStreamReader;

    .line 131
    .line 132
    invoke-direct {v10, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 133
    .line 134
    .line 135
    new-instance v8, Ljava/io/BufferedReader;

    .line 136
    .line 137
    const/16 v9, 0x2000

    .line 138
    .line 139
    invoke-direct {v8, v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    new-instance v9, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v10, "telnet task response: "

    .line 152
    .line 153
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    invoke-static {v0, v9, v3, v4, v3}, Lteam/opay/core/common/GenericLogger;->p(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->g0()Ljava/io/InputStream;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-gtz v0, :cond_1

    .line 175
    .line 176
    if-eqz v8, :cond_0

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_0
    const/4 v11, 0x0

    .line 180
    :cond_1
    :goto_0
    new-instance v0, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 181
    .line 182
    iget-object v14, v1, Lteam/opay/core/networkstatus/task/TelnetTask;->b:Ljava/lang/String;

    .line 183
    .line 184
    iget v15, v1, Lteam/opay/core/networkstatus/task/TelnetTask;->c:I

    .line 185
    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 187
    .line 188
    .line 189
    move-result-wide v9

    .line 190
    sub-long/2addr v9, v5

    .line 191
    long-to-int v5, v9

    .line 192
    new-instance v6, Lteam/opay/core/networkstatus/result/TelnetResult;

    .line 193
    .line 194
    const-string v18, ""

    .line 195
    .line 196
    move-object v12, v6

    .line 197
    move v13, v11

    .line 198
    move/from16 v16, v5

    .line 199
    .line 200
    move-object/from16 v17, v8

    .line 201
    .line 202
    invoke-direct/range {v12 .. v18}, Lteam/opay/core/networkstatus/result/TelnetResult;-><init>(ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-direct {v0, v11, v6}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;-><init>(ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->j()V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    goto :goto_2

    .line 214
    :catch_0
    move-exception v0

    .line 215
    :try_start_1
    sget-object v5, Lqk8;->c:Lqk8;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    new-instance v8, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v9, "telnet task execute failed : "

    .line 227
    .line 228
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-static {v5, v6, v3, v4, v3}, Lteam/opay/core/common/GenericLogger;->p(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    new-instance v3, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 242
    .line 243
    iget-object v10, v1, Lteam/opay/core/networkstatus/task/TelnetTask;->b:Ljava/lang/String;

    .line 244
    .line 245
    iget v11, v1, Lteam/opay/core/networkstatus/task/TelnetTask;->c:I

    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v14

    .line 251
    new-instance v0, Lteam/opay/core/networkstatus/result/TelnetResult;

    .line 252
    .line 253
    const-string v13, ""

    .line 254
    .line 255
    const/16 v15, 0x8

    .line 256
    .line 257
    const/16 v16, 0x0

    .line 258
    .line 259
    const/4 v9, 0x0

    .line 260
    const/4 v12, 0x0

    .line 261
    move-object v8, v0

    .line 262
    invoke-direct/range {v8 .. v16}, Lteam/opay/core/networkstatus/result/TelnetResult;-><init>(ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 263
    .line 264
    .line 265
    invoke-direct {v3, v7, v0}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;-><init>(ZLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->j()V

    .line 269
    .line 270
    .line 271
    move-object v0, v3

    .line 272
    :goto_1
    return-object v0

    .line 273
    :goto_2
    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->j()V

    .line 274
    .line 275
    .line 276
    throw v0
.end method
