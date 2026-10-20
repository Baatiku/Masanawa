.class public final Lteam/opay/core/networkstatus/task/CellularPingTask;
.super Lteam/opay/core/networkstatus/task/INetworkDetectTask;
.source "CellularPingTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/networkstatus/task/INetworkDetectTask<",
        "Lteam/opay/core/networkstatus/result/CellularPingResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0096@\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/core/networkstatus/task/CellularPingTask;",
        "Lteam/opay/core/networkstatus/task/INetworkDetectTask;",
        "Lteam/opay/core/networkstatus/result/CellularPingResult;",
        "",
        "url",
        "Landroid/net/Network;",
        "cellularNetwork",
        "<init>",
        "(Ljava/lang/String;Landroid/net/Network;)V",
        "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;",
        "a",
        "(Ljr2;)Ljava/lang/Object;",
        "b",
        "Ljava/lang/String;",
        "c",
        "Landroid/net/Network;",
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

.field public final c:Landroid/net/Network;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Network;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Network;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cellular_ping"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lteam/opay/core/networkstatus/task/INetworkDetectTask;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/core/networkstatus/task/CellularPingTask;->b:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lteam/opay/core/networkstatus/task/CellularPingTask;->c:Landroid/net/Network;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(Ljr2;)Ljava/lang/Object;
    .locals 16
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
            "Lteam/opay/core/networkstatus/result/CellularPingResult;",
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
    const-string v2, "CellularPingTask -----  "

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    invoke-static {v0, v2, v3, v4, v3}, Lteam/opay/core/common/GenericLogger;->p(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v1, Lteam/opay/core/networkstatus/task/CellularPingTask;->c:Landroid/net/Network;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v0, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 18
    .line 19
    new-instance v2, Lteam/opay/core/networkstatus/result/CellularPingResult;

    .line 20
    .line 21
    iget-object v9, v1, Lteam/opay/core/networkstatus/task/CellularPingTask;->b:Ljava/lang/String;

    .line 22
    .line 23
    const/16 v13, 0x18

    .line 24
    .line 25
    const/4 v14, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v10, 0x0

    .line 29
    const/4 v11, 0x0

    .line 30
    const-string v12, "cellular network is null"

    .line 31
    .line 32
    move-object v6, v2

    .line 33
    invoke-direct/range {v6 .. v14}, Lteam/opay/core/networkstatus/result/CellularPingResult;-><init>(ZZLjava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v5, v2}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;-><init>(ZLjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    :try_start_0
    iget-object v2, v1, Lteam/opay/core/networkstatus/task/CellularPingTask;->c:Landroid/net/Network;

    .line 45
    .line 46
    new-instance v8, Ljava/net/URL;

    .line 47
    .line 48
    iget-object v9, v1, Lteam/opay/core/networkstatus/task/CellularPingTask;->b:Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v8}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v8, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 58
    .line 59
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    .line 64
    const/16 v8, 0x1388

    .line 65
    .line 66
    :try_start_1
    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 76
    .line 77
    .line 78
    move-result v14

    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v9, "CellularNetworkHelper-> network Response: "

    .line 85
    .line 86
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-static {v0, v8, v3, v4, v3}, Lteam/opay/core/common/GenericLogger;->p(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 100
    .line 101
    new-instance v8, Lteam/opay/core/networkstatus/result/CellularPingResult;

    .line 102
    .line 103
    const/16 v9, 0xc8

    .line 104
    .line 105
    const/4 v15, 0x1

    .line 106
    if-gt v9, v14, :cond_1

    .line 107
    .line 108
    const/16 v9, 0x190

    .line 109
    .line 110
    if-ge v14, v9, :cond_1

    .line 111
    .line 112
    const/4 v11, 0x1

    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const/4 v11, 0x0

    .line 115
    :goto_0
    iget-object v12, v1, Lteam/opay/core/networkstatus/task/CellularPingTask;->b:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v9

    .line 121
    sub-long/2addr v9, v6

    .line 122
    long-to-int v13, v9

    .line 123
    const-string v6, ""

    .line 124
    .line 125
    const/4 v10, 0x1

    .line 126
    move-object v9, v8

    .line 127
    const/4 v7, 0x1

    .line 128
    move-object v15, v6

    .line 129
    invoke-direct/range {v9 .. v15}, Lteam/opay/core/networkstatus/result/CellularPingResult;-><init>(ZZLjava/lang/String;IILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {v0, v7, v8}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;-><init>(ZLjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    .line 137
    .line 138
    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    move-object v3, v2

    .line 141
    goto :goto_2

    .line 142
    :catch_0
    move-exception v0

    .line 143
    goto :goto_1

    .line 144
    :catchall_1
    move-exception v0

    .line 145
    goto :goto_2

    .line 146
    :catch_1
    move-exception v0

    .line 147
    move-object v2, v3

    .line 148
    :goto_1
    :try_start_2
    sget-object v6, Lqk8;->c:Lqk8;

    .line 149
    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v8, "CellularNetworkHelper-> network Response error: "

    .line 156
    .line 157
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    invoke-static {v6, v7, v3, v4, v3}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    new-instance v3, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 171
    .line 172
    new-instance v4, Lteam/opay/core/networkstatus/result/CellularPingResult;

    .line 173
    .line 174
    iget-object v9, v1, Lteam/opay/core/networkstatus/task/CellularPingTask;->b:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    const/16 v13, 0x18

    .line 181
    .line 182
    const/4 v14, 0x0

    .line 183
    const/4 v7, 0x1

    .line 184
    const/4 v8, 0x0

    .line 185
    const/4 v10, 0x0

    .line 186
    const/4 v11, 0x0

    .line 187
    move-object v6, v4

    .line 188
    invoke-direct/range {v6 .. v14}, Lteam/opay/core/networkstatus/result/CellularPingResult;-><init>(ZZLjava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 189
    .line 190
    .line 191
    invoke-direct {v3, v5, v4}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;-><init>(ZLjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    .line 193
    .line 194
    if-eqz v2, :cond_2

    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 197
    .line 198
    .line 199
    :cond_2
    return-object v3

    .line 200
    :goto_2
    if-eqz v3, :cond_3

    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 203
    .line 204
    .line 205
    :cond_3
    throw v0
.end method
