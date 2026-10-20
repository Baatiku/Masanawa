.class final Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NetworkDiagnosisManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->q(Ljr2;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lteam/opay/core/networkstatus/result/NetworkConnectionResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "Lteam/opay/core/networkstatus/result/NetworkConnectionResult;",
        "<anonymous>",
        "(Lzr2;)Lteam/opay/core/networkstatus/result/NetworkConnectionResult;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.core.networkstatus.NetworkDiagnosisManager$runCheck$2"
    f = "NetworkDiagnosisManager.kt"
    l = {
        0xb2,
        0xc4,
        0xcc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;


# direct methods
.method public constructor <init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/networkstatus/NetworkDiagnosisManager;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;-><init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljr2;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/networkstatus/result/NetworkConnectionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->label:I

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    if-eq v2, v6, :cond_2

    .line 17
    .line 18
    if-eq v2, v5, :cond_1

    .line 19
    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    iget-object v1, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 25
    .line 26
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v1

    .line 39
    :cond_1
    iget-object v2, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 42
    .line 43
    iget-object v8, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v8, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 46
    .line 47
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    move-object v9, v2

    .line 51
    move-object v2, v8

    .line 52
    move-object/from16 v8, p1

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_2
    iget-object v2, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 59
    .line 60
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    move-object/from16 v8, p1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object v2, Lqk8;->c:Lqk8;

    .line 70
    .line 71
    const-string v8, "NetworkConnectionWatcher runCheck start"

    .line 72
    .line 73
    invoke-static {v2, v8, v7, v5, v7}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 77
    .line 78
    const/16 v20, 0x3ff

    .line 79
    .line 80
    const/16 v21, 0x0

    .line 81
    .line 82
    const/4 v10, 0x0

    .line 83
    const/4 v11, 0x0

    .line 84
    const/4 v12, 0x0

    .line 85
    const/4 v13, 0x0

    .line 86
    const/4 v14, 0x0

    .line 87
    const/4 v15, 0x0

    .line 88
    const/16 v16, 0x0

    .line 89
    .line 90
    const/16 v17, 0x0

    .line 91
    .line 92
    const/16 v18, 0x0

    .line 93
    .line 94
    const/16 v19, 0x0

    .line 95
    .line 96
    move-object v9, v2

    .line 97
    invoke-direct/range {v9 .. v21}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;-><init>(ZLteam/opay/core/networkstatus/result/WifiInfo;Lteam/opay/core/networkstatus/result/CellularInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lteam/opay/core/networkstatus/result/ProxyInfoResult;Lteam/opay/core/networkstatus/result/CellularPingResult;Lteam/opay/core/networkstatus/result/HttpSpeedResult;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 98
    .line 99
    .line 100
    new-instance v8, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;

    .line 101
    .line 102
    invoke-direct {v8, v7}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;-><init>(Ljr2;)V

    .line 103
    .line 104
    .line 105
    iput-object v2, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->L$0:Ljava/lang/Object;

    .line 106
    .line 107
    iput v6, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->label:I

    .line 108
    .line 109
    invoke-static {v8, v0}, Lkotlinx/coroutines/g;->f(Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    if-ne v8, v1, :cond_4

    .line 114
    .line 115
    return-object v1

    .line 116
    :cond_4
    :goto_0
    check-cast v8, Lkotlin/Triple;

    .line 117
    .line 118
    invoke-virtual {v8}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    check-cast v9, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 123
    .line 124
    invoke-virtual {v8}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    check-cast v10, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 129
    .line 130
    invoke-virtual {v8}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    check-cast v8, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 135
    .line 136
    invoke-virtual {v9}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;->a()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    check-cast v11, Lteam/opay/core/networkstatus/result/WifiInfo;

    .line 141
    .line 142
    invoke-virtual {v2, v11}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->setWifiInfo(Lteam/opay/core/networkstatus/result/WifiInfo;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v10}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;->a()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    check-cast v10, Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 150
    .line 151
    invoke-virtual {v2, v10}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->setCellularInfo(Lteam/opay/core/networkstatus/result/CellularInfo;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;->a()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    check-cast v8, Lteam/opay/core/networkstatus/result/ProxyInfoResult;

    .line 159
    .line 160
    invoke-virtual {v2, v8}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->setProxyResult(Lteam/opay/core/networkstatus/result/ProxyInfoResult;)V

    .line 161
    .line 162
    .line 163
    sget-object v8, Lwl9;->a:Lwl9;

    .line 164
    .line 165
    invoke-virtual {v8}, Lwl9;->h()Z

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    if-nez v8, :cond_5

    .line 170
    .line 171
    invoke-virtual {v2, v4}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->setOPayApiConnected(Z)V

    .line 172
    .line 173
    .line 174
    return-object v2

    .line 175
    :cond_5
    new-instance v8, Lteam/opay/core/networkstatus/task/HttpTask;

    .line 176
    .line 177
    const-string v10, "https://nf-api-posp.opayweb.com/api/pos/check"

    .line 178
    .line 179
    invoke-direct {v8, v10}, Lteam/opay/core/networkstatus/task/HttpTask;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iput-object v2, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->L$0:Ljava/lang/Object;

    .line 183
    .line 184
    iput-object v9, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->L$1:Ljava/lang/Object;

    .line 185
    .line 186
    iput v5, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->label:I

    .line 187
    .line 188
    invoke-virtual {v8, v0}, Lteam/opay/core/networkstatus/task/HttpTask;->a(Ljr2;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    if-ne v8, v1, :cond_6

    .line 193
    .line 194
    return-object v1

    .line 195
    :cond_6
    :goto_1
    check-cast v8, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 196
    .line 197
    invoke-virtual {v8}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;->b()Z

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    if-eqz v10, :cond_7

    .line 202
    .line 203
    invoke-virtual {v8}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;->a()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    check-cast v10, Lteam/opay/core/networkstatus/result/HttpResult;

    .line 208
    .line 209
    invoke-virtual {v10}, Lteam/opay/core/networkstatus/result/HttpResult;->isConnection()Z

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    if-eqz v10, :cond_7

    .line 214
    .line 215
    const/4 v10, 0x1

    .line 216
    goto :goto_2

    .line 217
    :cond_7
    const/4 v10, 0x0

    .line 218
    :goto_2
    invoke-virtual {v8}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;->b()Z

    .line 219
    .line 220
    .line 221
    move-result v11

    .line 222
    if-eqz v11, :cond_8

    .line 223
    .line 224
    invoke-virtual {v8}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;->a()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    check-cast v11, Lteam/opay/core/networkstatus/result/HttpResult;

    .line 229
    .line 230
    invoke-virtual {v11}, Lteam/opay/core/networkstatus/result/HttpResult;->isConnection()Z

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    if-eqz v11, :cond_8

    .line 235
    .line 236
    const/4 v4, 0x1

    .line 237
    :cond_8
    invoke-virtual {v2, v4}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->setOPayApiConnected(Z)V

    .line 238
    .line 239
    .line 240
    if-eqz v10, :cond_9

    .line 241
    .line 242
    invoke-virtual {v2}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->getHttpResult()Ljava/util/ArrayList;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v8}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;->a()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    return-object v2

    .line 254
    :cond_9
    new-instance v4, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;

    .line 255
    .line 256
    iget-object v6, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 257
    .line 258
    invoke-direct {v4, v2, v9, v6, v7}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;-><init>(Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljr2;)V

    .line 259
    .line 260
    .line 261
    iput-object v2, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->L$0:Ljava/lang/Object;

    .line 262
    .line 263
    iput-object v7, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->L$1:Ljava/lang/Object;

    .line 264
    .line 265
    iput v3, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->label:I

    .line 266
    .line 267
    invoke-static {v4, v0}, Lkotlinx/coroutines/g;->f(Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    if-ne v3, v1, :cond_a

    .line 272
    .line 273
    return-object v1

    .line 274
    :cond_a
    move-object v1, v2

    .line 275
    :goto_3
    sget-object v2, Lqk8;->c:Lqk8;

    .line 276
    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    const-string v4, "NetworkConnectionWatcher runCheck result: "

    .line 283
    .line 284
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-static {v2, v3, v7, v5, v7}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    return-object v1
.end method
