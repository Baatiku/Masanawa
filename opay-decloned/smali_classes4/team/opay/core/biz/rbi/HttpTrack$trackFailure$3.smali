.class final Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpTrack.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
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
    c = "team.opay.core.biz.rbi.HttpTrack$trackFailure$3"
    f = "HttpTrack.kt"
    l = {
        0xd0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $duration:Ljava/lang/String;

.field final synthetic $message:Ljava/lang/String;

.field final synthetic $request:Lokhttp3/Request;

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
.method public constructor <init>(Ljava/lang/String;Lokhttp3/Request;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/biz/rbi/HttpTrack;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/Request;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/biz/rbi/HttpTrack;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->$requestUrl:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->$request:Lokhttp3/Request;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->$duration:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->$message:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 7
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
    new-instance p1, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->$requestUrl:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->$request:Lokhttp3/Request;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->$duration:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->$message:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;-><init>(Ljava/lang/String;Lokhttp3/Request;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/biz/rbi/HttpTrack;Ljr2;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->label:I

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
    iget v0, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->I$0:I

    .line 13
    .line 14
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->L$5:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->L$4:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, [Lkotlin/Pair;

    .line 21
    .line 22
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->L$3:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v3, Ljava/lang/String;

    .line 25
    .line 26
    iget-object v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->L$2:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v4, Landroid/content/Context;

    .line 29
    .line 30
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->L$1:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v5, Lteam/opay/core/common/spi/a;

    .line 33
    .line 34
    iget-object v6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->L$0:Ljava/lang/Object;

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
    const/4 v6, 0x5

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
    iget-object v7, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->$requestUrl:Ljava/lang/String;

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
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->$request:Lokhttp3/Request;

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
    const/4 v3, 0x2

    .line 104
    aput-object v1, p1, v3

    .line 105
    .line 106
    new-instance v1, Lkotlin/Pair;

    .line 107
    .line 108
    const/16 v3, -0x3ec

    .line 109
    .line 110
    invoke-static {v3}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const-string v7, "code"

    .line 115
    .line 116
    invoke-direct {v1, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    const/4 v3, 0x3

    .line 120
    aput-object v1, p1, v3

    .line 121
    .line 122
    new-instance v1, Lkotlin/Pair;

    .line 123
    .line 124
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->$request:Lokhttp3/Request;

    .line 125
    .line 126
    const-string v7, "trans_id"

    .line 127
    .line 128
    invoke-virtual {v3, v7}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-direct {v1, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    const/4 v3, 0x4

    .line 136
    aput-object v1, p1, v3

    .line 137
    .line 138
    new-instance v1, Lkotlin/Pair;

    .line 139
    .line 140
    const-string v3, "duration"

    .line 141
    .line 142
    iget-object v7, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->$duration:Ljava/lang/String;

    .line 143
    .line 144
    invoke-direct {v1, v3, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    aput-object v1, p1, v6

    .line 148
    .line 149
    new-instance v1, Lkotlin/Pair;

    .line 150
    .line 151
    const-string v3, "errorMsg"

    .line 152
    .line 153
    iget-object v6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->$message:Ljava/lang/String;

    .line 154
    .line 155
    invoke-direct {v1, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    const/4 v3, 0x6

    .line 159
    aput-object v1, p1, v3

    .line 160
    .line 161
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 162
    .line 163
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->$requestUrl:Ljava/lang/String;

    .line 164
    .line 165
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->L$0:Ljava/lang/Object;

    .line 166
    .line 167
    iput-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->L$1:Ljava/lang/Object;

    .line 168
    .line 169
    iput-object v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->L$2:Ljava/lang/Object;

    .line 170
    .line 171
    const-string v6, "net_monitor_failed"

    .line 172
    .line 173
    iput-object v6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->L$3:Ljava/lang/Object;

    .line 174
    .line 175
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->L$4:Ljava/lang/Object;

    .line 176
    .line 177
    const-string v7, "host_ip"

    .line 178
    .line 179
    iput-object v7, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->L$5:Ljava/lang/Object;

    .line 180
    .line 181
    const/4 v8, 0x7

    .line 182
    iput v8, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->I$0:I

    .line 183
    .line 184
    iput v2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$3;->label:I

    .line 185
    .line 186
    invoke-static {v1, v3, p0}, Lteam/opay/core/biz/rbi/HttpTrack;->d(Lteam/opay/core/biz/rbi/HttpTrack;Ljava/lang/String;Ljr2;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    if-ne v1, v0, :cond_2

    .line 191
    .line 192
    return-object v0

    .line 193
    :cond_2
    move-object v2, p1

    .line 194
    move-object v3, v6

    .line 195
    const/4 v0, 0x7

    .line 196
    move-object v6, v2

    .line 197
    move-object p1, v1

    .line 198
    move-object v1, v7

    .line 199
    :goto_0
    new-instance v7, Lkotlin/Pair;

    .line 200
    .line 201
    invoke-direct {v7, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    aput-object v7, v2, v0

    .line 205
    .line 206
    invoke-virtual {v5, v4, v3, v6}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 207
    .line 208
    .line 209
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 210
    .line 211
    return-object p1
.end method
