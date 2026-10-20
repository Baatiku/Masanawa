.class final Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebSocketApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/websocket/WebSocketApi;->C(Ljava/util/Map;Lteam/opay/pay/websocket/IWsMessageDelegate;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010\u0000*\u00020\u0001H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "T",
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.websocket.WebSocketApi$subscriber$1"
    f = "WebSocketApi.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $ext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $listener:Lteam/opay/pay/websocket/IWsMessageDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/websocket/IWsMessageDelegate<",
            "TT;>;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Lteam/opay/pay/websocket/IWsMessageDelegate;Ljava/util/Map;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/websocket/IWsMessageDelegate<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;->$listener:Lteam/opay/pay/websocket/IWsMessageDelegate;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;->$ext:Ljava/util/Map;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;->$listener:Lteam/opay/pay/websocket/IWsMessageDelegate;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;->$ext:Ljava/util/Map;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;-><init>(Lteam/opay/pay/websocket/IWsMessageDelegate;Ljava/util/Map;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lzr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "Lock"

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;->$listener:Lteam/opay/pay/websocket/IWsMessageDelegate;

    .line 14
    .line 15
    iget-object v6, p0, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;->$ext:Ljava/util/Map;

    .line 16
    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-static {}, Lteam/opay/pay/websocket/WebSocketApi;->c()Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0}, Lteam/opay/pay/websocket/IWsMessageDelegate;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-static {}, Lteam/opay/pay/websocket/WebSocketApi;->c()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0}, Lteam/opay/pay/websocket/IWsMessageDelegate;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/util/List;

    .line 45
    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {v1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    :goto_0
    const-string v1, "subscriber add receiver to contains listReceivers "

    .line 62
    .line 63
    invoke-virtual {v0}, Lteam/opay/pay/websocket/IWsMessageDelegate;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 80
    .line 81
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lteam/opay/pay/websocket/WebSocketApi;->c()Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v0}, Lteam/opay/pay/websocket/IWsMessageDelegate;->a()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    const-string v1, "subscriber add receiver to new listReceivers "

    .line 99
    .line 100
    invoke-virtual {v0}, Lteam/opay/pay/websocket/IWsMessageDelegate;->a()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-virtual {v0}, Lteam/opay/pay/websocket/IWsMessageDelegate;->c()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_3

    .line 112
    .line 113
    invoke-static {}, Lteam/opay/pay/websocket/WebSocketApi;->e()Ljava/util/HashMap;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0}, Lteam/opay/pay/websocket/IWsMessageDelegate;->a()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    const-string v1, "subscriber already send listener "

    .line 128
    .line 129
    invoke-virtual {v0}, Lteam/opay/pay/websocket/IWsMessageDelegate;->a()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    monitor-exit p1

    .line 139
    return-object v0

    .line 140
    :cond_2
    :try_start_1
    const-string v1, "subscriber add channel to map listener "

    .line 141
    .line 142
    invoke-virtual {v0}, Lteam/opay/pay/websocket/IWsMessageDelegate;->a()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lteam/opay/pay/websocket/WebSocketApi;->e()Ljava/util/HashMap;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v0}, Lteam/opay/pay/websocket/IWsMessageDelegate;->a()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    new-instance v11, Lteam/opay/pay/websocket/SubTask;

    .line 158
    .line 159
    const-string v3, "SUBSCRIBE"

    .line 160
    .line 161
    invoke-virtual {v0}, Lteam/opay/pay/websocket/IWsMessageDelegate;->a()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    const/16 v7, 0x8

    .line 166
    .line 167
    const/4 v8, 0x0

    .line 168
    const/4 v2, 0x0

    .line 169
    const/4 v5, 0x0

    .line 170
    move-object v1, v11

    .line 171
    invoke-direct/range {v1 .. v8}, Lteam/opay/pay/websocket/SubTask;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .line 179
    monitor-exit p1

    .line 180
    invoke-static {}, Lteam/opay/pay/websocket/WebSocketApi;->i()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    const/4 v0, 0x3

    .line 189
    if-eq p1, v0, :cond_4

    .line 190
    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v0, "subscriber websocket has not CONNECTED!!! wsStatus.get() = "

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-static {}, Lteam/opay/pay/websocket/WebSocketApi;->i()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v0, " listener "

    .line 213
    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;->$listener:Lteam/opay/pay/websocket/IWsMessageDelegate;

    .line 218
    .line 219
    invoke-virtual {v0}, Lteam/opay/pay/websocket/IWsMessageDelegate;->a()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    sget-object p1, Lteam/opay/pay/websocket/WebSocketApi;->a:Lteam/opay/pay/websocket/WebSocketApi;

    .line 227
    .line 228
    const/4 v0, 0x1

    .line 229
    invoke-static {p1, v0}, Lteam/opay/pay/websocket/WebSocketApi;->b(Lteam/opay/pay/websocket/WebSocketApi;Z)Z

    .line 230
    .line 231
    .line 232
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 233
    .line 234
    return-object p1

    .line 235
    :cond_4
    iget-object p1, p0, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;->$listener:Lteam/opay/pay/websocket/IWsMessageDelegate;

    .line 236
    .line 237
    invoke-virtual {p1}, Lteam/opay/pay/websocket/IWsMessageDelegate;->c()Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_5

    .line 242
    .line 243
    sget-object p1, Lteam/opay/pay/websocket/WebSocketApi;->a:Lteam/opay/pay/websocket/WebSocketApi;

    .line 244
    .line 245
    new-instance v8, Lteam/opay/pay/websocket/SubTask;

    .line 246
    .line 247
    const-string v2, "SUBSCRIBE"

    .line 248
    .line 249
    iget-object v0, p0, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;->$listener:Lteam/opay/pay/websocket/IWsMessageDelegate;

    .line 250
    .line 251
    invoke-virtual {v0}, Lteam/opay/pay/websocket/IWsMessageDelegate;->a()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    iget-object v5, p0, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;->$ext:Ljava/util/Map;

    .line 256
    .line 257
    const/16 v6, 0x8

    .line 258
    .line 259
    const/4 v7, 0x0

    .line 260
    const/4 v1, 0x3

    .line 261
    const/4 v4, 0x0

    .line 262
    move-object v0, v8

    .line 263
    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/websocket/SubTask;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 264
    .line 265
    .line 266
    invoke-static {p1, v8}, Lteam/opay/pay/websocket/WebSocketApi;->m(Lteam/opay/pay/websocket/WebSocketApi;Lteam/opay/pay/websocket/SubTask;)V

    .line 267
    .line 268
    .line 269
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 270
    .line 271
    return-object p1

    .line 272
    :goto_2
    monitor-exit p1

    .line 273
    throw v0

    .line 274
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 275
    .line 276
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 277
    .line 278
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw p1
.end method
