.class final Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpTrack.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/biz/rbi/HttpTrack;->r(Lokhttp3/Request;Ljava/lang/Throwable;)V
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
    c = "team.opay.core.biz.rbi.HttpTrack$trackFailure$2"
    f = "HttpTrack.kt"
    l = {
        0xb6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $duration:Ljava/lang/String;

.field final synthetic $he:Lteam/opay/core/http/arch/HttpException;

.field final synthetic $newRequest:Lokhttp3/Request;

.field final synthetic $requestUrl:Ljava/lang/String;

.field final synthetic $t:Ljava/lang/Throwable;

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
.method public constructor <init>(Ljava/lang/String;Lokhttp3/Request;Lteam/opay/core/http/arch/HttpException;Ljava/lang/String;Ljava/lang/Throwable;Lteam/opay/core/biz/rbi/HttpTrack;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/Request;",
            "Lteam/opay/core/http/arch/HttpException;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Lteam/opay/core/biz/rbi/HttpTrack;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$requestUrl:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$newRequest:Lokhttp3/Request;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$he:Lteam/opay/core/http/arch/HttpException;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$duration:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$t:Ljava/lang/Throwable;

    .line 10
    .line 11
    iput-object p6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

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
    new-instance p1, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$requestUrl:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$newRequest:Lokhttp3/Request;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$he:Lteam/opay/core/http/arch/HttpException;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$duration:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$t:Ljava/lang/Throwable;

    .line 12
    .line 13
    iget-object v6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;-><init>(Ljava/lang/String;Lokhttp3/Request;Lteam/opay/core/http/arch/HttpException;Ljava/lang/String;Ljava/lang/Throwable;Lteam/opay/core/biz/rbi/HttpTrack;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->label:I

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
    iget v0, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->I$0:I

    .line 13
    .line 14
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->L$5:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->L$4:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, [Lkotlin/Pair;

    .line 21
    .line 22
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->L$3:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v3, Ljava/lang/String;

    .line 25
    .line 26
    iget-object v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->L$2:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v4, Landroid/content/Context;

    .line 29
    .line 30
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->L$1:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v5, Lteam/opay/core/common/spi/a;

    .line 33
    .line 34
    iget-object v6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->L$0:Ljava/lang/Object;

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
    const/4 v6, 0x4

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
    iget-object v7, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$requestUrl:Ljava/lang/String;

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
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$newRequest:Lokhttp3/Request;

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
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$he:Lteam/opay/core/http/arch/HttpException;

    .line 109
    .line 110
    invoke-virtual {v3}, Lteam/opay/core/http/arch/HttpException;->getApiCode()Ljava/lang/String;

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
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$newRequest:Lokhttp3/Request;

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
    aput-object v1, p1, v6

    .line 136
    .line 137
    new-instance v1, Lkotlin/Pair;

    .line 138
    .line 139
    const-string v3, "duration"

    .line 140
    .line 141
    iget-object v6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$duration:Ljava/lang/String;

    .line 142
    .line 143
    invoke-direct {v1, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    const/4 v3, 0x5

    .line 147
    aput-object v1, p1, v3

    .line 148
    .line 149
    new-instance v1, Lkotlin/Pair;

    .line 150
    .line 151
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$t:Ljava/lang/Throwable;

    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    const-string v6, "errorMsg"

    .line 158
    .line 159
    invoke-direct {v1, v6, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    const/4 v3, 0x6

    .line 163
    aput-object v1, p1, v3

    .line 164
    .line 165
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 166
    .line 167
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->$requestUrl:Ljava/lang/String;

    .line 168
    .line 169
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->L$0:Ljava/lang/Object;

    .line 170
    .line 171
    iput-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->L$1:Ljava/lang/Object;

    .line 172
    .line 173
    iput-object v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->L$2:Ljava/lang/Object;

    .line 174
    .line 175
    const-string v6, "net_monitor_failed"

    .line 176
    .line 177
    iput-object v6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->L$3:Ljava/lang/Object;

    .line 178
    .line 179
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->L$4:Ljava/lang/Object;

    .line 180
    .line 181
    const-string v7, "host_ip"

    .line 182
    .line 183
    iput-object v7, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->L$5:Ljava/lang/Object;

    .line 184
    .line 185
    const/4 v8, 0x7

    .line 186
    iput v8, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->I$0:I

    .line 187
    .line 188
    iput v2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;->label:I

    .line 189
    .line 190
    invoke-static {v1, v3, p0}, Lteam/opay/core/biz/rbi/HttpTrack;->d(Lteam/opay/core/biz/rbi/HttpTrack;Ljava/lang/String;Ljr2;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    if-ne v1, v0, :cond_2

    .line 195
    .line 196
    return-object v0

    .line 197
    :cond_2
    move-object v2, p1

    .line 198
    move-object v3, v6

    .line 199
    const/4 v0, 0x7

    .line 200
    move-object v6, v2

    .line 201
    move-object p1, v1

    .line 202
    move-object v1, v7

    .line 203
    :goto_0
    new-instance v7, Lkotlin/Pair;

    .line 204
    .line 205
    invoke-direct {v7, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    aput-object v7, v2, v0

    .line 209
    .line 210
    invoke-virtual {v5, v4, v3, v6}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 211
    .line 212
    .line 213
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 214
    .line 215
    return-object p1
.end method
