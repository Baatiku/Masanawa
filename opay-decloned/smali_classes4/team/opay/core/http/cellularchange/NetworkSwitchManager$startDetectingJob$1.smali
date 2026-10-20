.class final Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NetworkSwitchManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->E()V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.core.http.cellularchange.NetworkSwitchManager$startDetectingJob$1"
    f = "NetworkSwitchManager.kt"
    l = {
        0xe3,
        0x7a,
        0x7d,
        0x7f,
        0x81
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;


# direct methods
.method public constructor <init>(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/cellularchange/NetworkSwitchManager;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

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
    .locals 2
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
    new-instance v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;-><init>(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;Ljr2;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    const/4 v3, 0x4

    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    if-eqz v1, :cond_6

    .line 14
    .line 15
    if-eq v1, v6, :cond_5

    .line 16
    .line 17
    if-eq v1, v5, :cond_3

    .line 18
    .line 19
    if-eq v1, v4, :cond_2

    .line 20
    .line 21
    if-eq v1, v3, :cond_1

    .line 22
    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$1:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lbf9;

    .line 28
    .line 29
    iget-object v8, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v8, Lzr2;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    iget-object v1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$1:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lbf9;

    .line 48
    .line 49
    iget-object v8, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v8, Lzr2;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object v1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Lbf9;

    .line 57
    .line 58
    iget-object v8, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v8, Lzr2;

    .line 61
    .line 62
    :goto_0
    :try_start_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_3
    iget-object v1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$2:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 70
    .line 71
    iget-object v8, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$1:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v8, Lbf9;

    .line 74
    .line 75
    iget-object v9, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v9, Lzr2;

    .line 78
    .line 79
    :try_start_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    .line 81
    .line 82
    move-object p1, v8

    .line 83
    :cond_4
    move-object v8, v9

    .line 84
    goto :goto_3

    .line 85
    :catchall_1
    move-exception p1

    .line 86
    move-object v1, v8

    .line 87
    goto/16 :goto_6

    .line 88
    .line 89
    :cond_5
    iget-object v1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$2:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 92
    .line 93
    iget-object v8, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v8, Lbf9;

    .line 96
    .line 97
    iget-object v9, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v9, Lzr2;

    .line 100
    .line 101
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    move-object p1, v8

    .line 105
    goto :goto_2

    .line 106
    :cond_6
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$0:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p1, Lzr2;

    .line 112
    .line 113
    move-object v9, p1

    .line 114
    :goto_1
    invoke-static {v9}, Lkotlinx/coroutines/g;->h(Lzr2;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_b

    .line 119
    .line 120
    iget-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 121
    .line 122
    invoke-static {p1}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->j(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Lbf9;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object v1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 127
    .line 128
    iput-object v9, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$0:Ljava/lang/Object;

    .line 129
    .line 130
    iput-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$1:Ljava/lang/Object;

    .line 131
    .line 132
    iput-object v1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$2:Ljava/lang/Object;

    .line 133
    .line 134
    iput v6, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->label:I

    .line 135
    .line 136
    invoke-interface {p1, v7, p0}, Lbf9;->t(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    if-ne v8, v0, :cond_7

    .line 141
    .line 142
    return-object v0

    .line 143
    :cond_7
    :goto_2
    :try_start_2
    iput-object v9, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$0:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$1:Ljava/lang/Object;

    .line 146
    .line 147
    iput-object v1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$2:Ljava/lang/Object;

    .line 148
    .line 149
    iput v5, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->label:I

    .line 150
    .line 151
    invoke-static {v1, p0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->e(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;Ljr2;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    if-ne v8, v0, :cond_4

    .line 156
    .line 157
    return-object v0

    .line 158
    :goto_3
    invoke-static {v1}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->n(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-eqz v9, :cond_9

    .line 167
    .line 168
    iput-object v8, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$0:Ljava/lang/Object;

    .line 169
    .line 170
    iput-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$1:Ljava/lang/Object;

    .line 171
    .line 172
    iput-object v7, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$2:Ljava/lang/Object;

    .line 173
    .line 174
    iput v4, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->label:I

    .line 175
    .line 176
    const-wide/32 v9, 0xea60

    .line 177
    .line 178
    .line 179
    invoke-static {v9, v10, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    if-ne v1, v0, :cond_8

    .line 184
    .line 185
    return-object v0

    .line 186
    :cond_8
    move-object v1, p1

    .line 187
    :goto_4
    move-object v9, v8

    .line 188
    goto :goto_5

    .line 189
    :catchall_2
    move-exception v0

    .line 190
    move-object v1, p1

    .line 191
    move-object p1, v0

    .line 192
    goto :goto_6

    .line 193
    :cond_9
    invoke-static {v1}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->f(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-eqz v1, :cond_a

    .line 202
    .line 203
    iput-object v8, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$0:Ljava/lang/Object;

    .line 204
    .line 205
    iput-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$1:Ljava/lang/Object;

    .line 206
    .line 207
    iput-object v7, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$2:Ljava/lang/Object;

    .line 208
    .line 209
    iput v3, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->label:I

    .line 210
    .line 211
    const-wide/16 v9, 0x7530

    .line 212
    .line 213
    invoke-static {v9, v10, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    if-ne v1, v0, :cond_8

    .line 218
    .line 219
    return-object v0

    .line 220
    :cond_a
    iput-object v8, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$0:Ljava/lang/Object;

    .line 221
    .line 222
    iput-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$1:Ljava/lang/Object;

    .line 223
    .line 224
    iput-object v7, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->L$2:Ljava/lang/Object;

    .line 225
    .line 226
    iput v2, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;->label:I

    .line 227
    .line 228
    const-wide/16 v9, 0x1388

    .line 229
    .line 230
    invoke-static {v9, v10, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 234
    if-ne v1, v0, :cond_8

    .line 235
    .line 236
    return-object v0

    .line 237
    :goto_5
    :try_start_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    .line 239
    invoke-interface {v1, v7}, Lbf9;->u(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :goto_6
    invoke-interface {v1, v7}, Lbf9;->u(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    throw p1

    .line 248
    :cond_b
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 249
    .line 250
    return-object p1
.end method
