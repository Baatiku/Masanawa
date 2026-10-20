.class final Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpTrack.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/biz/rbi/HttpTrack;->q(Lokhttp3/Request;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "team.opay.core.biz.rbi.HttpTrack$trackApiFailure$1"
    f = "HttpTrack.kt"
    l = {
        0x71
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $code:Ljava/lang/String;

.field final synthetic $duration:Ljava/lang/String;

.field final synthetic $message:Ljava/lang/String;

.field final synthetic $newRequest:Lokhttp3/Request;

.field final synthetic $requestUrl:Ljava/lang/String;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/core/biz/rbi/HttpTrack;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/biz/rbi/HttpTrack;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/Request;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/biz/rbi/HttpTrack;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$requestUrl:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$newRequest:Lokhttp3/Request;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$code:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$duration:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$message:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 8
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
    new-instance p1, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$requestUrl:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$newRequest:Lokhttp3/Request;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$code:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$duration:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$message:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;-><init>(Ljava/lang/String;Lokhttp3/Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/biz/rbi/HttpTrack;Ljr2;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->I$0:I

    .line 13
    .line 14
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->L$5:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->L$4:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, [Lkotlin/Pair;

    .line 21
    .line 22
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->L$3:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v3, Ljava/lang/String;

    .line 25
    .line 26
    iget-object v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->L$2:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v4, Landroid/content/Context;

    .line 29
    .line 30
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->L$1:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v5, Lteam/opay/core/common/spi/a;

    .line 33
    .line 34
    iget-object v6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v6, [Lkotlin/Pair;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget-object v5, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 55
    .line 56
    invoke-static {}, Lvbe;->d()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const/16 p1, 0x8

    .line 61
    .line 62
    new-array p1, p1, [Lkotlin/Pair;

    .line 63
    .line 64
    new-instance v1, Lkotlin/Pair;

    .line 65
    .line 66
    const-string v3, "source"

    .line 67
    .line 68
    const/4 v6, 0x2

    .line 69
    invoke-static {v6}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-direct {v1, v3, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    aput-object v1, p1, v3

    .line 78
    .line 79
    new-instance v1, Lkotlin/Pair;

    .line 80
    .line 81
    const-string v3, "url"

    .line 82
    .line 83
    iget-object v7, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$requestUrl:Ljava/lang/String;

    .line 84
    .line 85
    invoke-direct {v1, v3, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    aput-object v1, p1, v2

    .line 89
    .line 90
    new-instance v1, Lkotlin/Pair;

    .line 91
    .line 92
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$newRequest:Lokhttp3/Request;

    .line 93
    .line 94
    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const-string v7, "method"

    .line 99
    .line 100
    invoke-direct {v1, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    aput-object v1, p1, v6

    .line 104
    .line 105
    new-instance v1, Lkotlin/Pair;

    .line 106
    .line 107
    const-string v3, "code"

    .line 108
    .line 109
    iget-object v6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$code:Ljava/lang/String;

    .line 110
    .line 111
    invoke-direct {v1, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    const/4 v3, 0x3

    .line 115
    aput-object v1, p1, v3

    .line 116
    .line 117
    new-instance v1, Lkotlin/Pair;

    .line 118
    .line 119
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$newRequest:Lokhttp3/Request;

    .line 120
    .line 121
    const-string v6, "trans_id"

    .line 122
    .line 123
    invoke-virtual {v3, v6}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-direct {v1, v6, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    const/4 v3, 0x4

    .line 131
    aput-object v1, p1, v3

    .line 132
    .line 133
    new-instance v1, Lkotlin/Pair;

    .line 134
    .line 135
    const-string v3, "duration"

    .line 136
    .line 137
    iget-object v6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$duration:Ljava/lang/String;

    .line 138
    .line 139
    invoke-direct {v1, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    const/4 v3, 0x5

    .line 143
    aput-object v1, p1, v3

    .line 144
    .line 145
    new-instance v1, Lkotlin/Pair;

    .line 146
    .line 147
    const-string v3, "errorMsg"

    .line 148
    .line 149
    iget-object v6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$message:Ljava/lang/String;

    .line 150
    .line 151
    invoke-direct {v1, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    const/4 v3, 0x6

    .line 155
    aput-object v1, p1, v3

    .line 156
    .line 157
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 158
    .line 159
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$requestUrl:Ljava/lang/String;

    .line 160
    .line 161
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->L$0:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->L$1:Ljava/lang/Object;

    .line 164
    .line 165
    iput-object v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->L$2:Ljava/lang/Object;

    .line 166
    .line 167
    const-string v6, "net_monitor_failed"

    .line 168
    .line 169
    iput-object v6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->L$3:Ljava/lang/Object;

    .line 170
    .line 171
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->L$4:Ljava/lang/Object;

    .line 172
    .line 173
    const-string v7, "host_ip"

    .line 174
    .line 175
    iput-object v7, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->L$5:Ljava/lang/Object;

    .line 176
    .line 177
    const/4 v8, 0x7

    .line 178
    iput v8, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->I$0:I

    .line 179
    .line 180
    iput v2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->label:I

    .line 181
    .line 182
    invoke-static {v1, v3, p0}, Lteam/opay/core/biz/rbi/HttpTrack;->d(Lteam/opay/core/biz/rbi/HttpTrack;Ljava/lang/String;Ljr2;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-ne v1, v0, :cond_2

    .line 187
    .line 188
    return-object v0

    .line 189
    :cond_2
    move-object v2, p1

    .line 190
    move-object v3, v6

    .line 191
    const/4 v0, 0x7

    .line 192
    move-object v6, v2

    .line 193
    move-object p1, v1

    .line 194
    move-object v1, v7

    .line 195
    :goto_0
    new-instance v7, Lkotlin/Pair;

    .line 196
    .line 197
    invoke-direct {v7, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    aput-object v7, v2, v0

    .line 201
    .line 202
    invoke-virtual {v5, v4, v3, v6}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 203
    .line 204
    .line 205
    sget-object p1, Lteam/opay/core/ab/HttpABConfig;->Companion:Lteam/opay/core/ab/HttpABConfig$Companion;

    .line 206
    .line 207
    invoke-virtual {p1}, Lteam/opay/core/ab/HttpABConfig$Companion;->l()Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_4

    .line 212
    .line 213
    iget-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 214
    .line 215
    iget-object v0, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$requestUrl:Ljava/lang/String;

    .line 216
    .line 217
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$code:Ljava/lang/String;

    .line 218
    .line 219
    if-nez v1, :cond_3

    .line 220
    .line 221
    const-string v1, ""

    .line 222
    .line 223
    :cond_3
    iget-object v2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;->$message:Ljava/lang/String;

    .line 224
    .line 225
    invoke-static {p1, v0, v1, v2}, Lteam/opay/core/biz/rbi/HttpTrack;->f(Lteam/opay/core/biz/rbi/HttpTrack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 229
    .line 230
    return-object p1
.end method
