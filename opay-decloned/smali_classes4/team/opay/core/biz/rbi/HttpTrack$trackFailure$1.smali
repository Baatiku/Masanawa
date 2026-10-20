.class final Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;
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
    c = "team.opay.core.biz.rbi.HttpTrack$trackFailure$1"
    f = "HttpTrack.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $duration:Ljava/lang/String;

.field final synthetic $he:Lteam/opay/core/http/arch/HttpException;

.field final synthetic $newRequest:Lokhttp3/Request;

.field final synthetic $requestUrl:Ljava/lang/String;

.field final synthetic $t:Ljava/lang/Throwable;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/Request;Lteam/opay/core/http/arch/HttpException;Ljava/lang/String;Ljava/lang/Throwable;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/Request;",
            "Lteam/opay/core/http/arch/HttpException;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->$requestUrl:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->$newRequest:Lokhttp3/Request;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->$he:Lteam/opay/core/http/arch/HttpException;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->$duration:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->$t:Ljava/lang/Throwable;

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
    new-instance p1, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->$requestUrl:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->$newRequest:Lokhttp3/Request;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->$he:Lteam/opay/core/http/arch/HttpException;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->$duration:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->$t:Ljava/lang/Throwable;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;-><init>(Ljava/lang/String;Lokhttp3/Request;Lteam/opay/core/http/arch/HttpException;Ljava/lang/String;Ljava/lang/Throwable;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->label:I

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 13
    .line 14
    invoke-static {}, Lvbe;->d()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lkotlin/Pair;

    .line 19
    .line 20
    invoke-static {v0}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "source"

    .line 25
    .line 26
    invoke-direct {v2, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lkotlin/Pair;

    .line 30
    .line 31
    const-string v4, "url"

    .line 32
    .line 33
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->$requestUrl:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance v4, Lkotlin/Pair;

    .line 39
    .line 40
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->$newRequest:Lokhttp3/Request;

    .line 41
    .line 42
    invoke-virtual {v5}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v6, "method"

    .line 47
    .line 48
    invoke-direct {v4, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    new-instance v5, Lkotlin/Pair;

    .line 52
    .line 53
    iget-object v6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->$he:Lteam/opay/core/http/arch/HttpException;

    .line 54
    .line 55
    invoke-virtual {v6}, Lteam/opay/core/http/arch/HttpException;->getApiCode()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const-string v7, "code"

    .line 60
    .line 61
    invoke-direct {v5, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    new-instance v6, Lkotlin/Pair;

    .line 65
    .line 66
    iget-object v7, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->$newRequest:Lokhttp3/Request;

    .line 67
    .line 68
    const-string v8, "trans_id"

    .line 69
    .line 70
    invoke-virtual {v7, v8}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-direct {v6, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    new-instance v7, Lkotlin/Pair;

    .line 78
    .line 79
    const-string v8, "duration"

    .line 80
    .line 81
    iget-object v9, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->$duration:Ljava/lang/String;

    .line 82
    .line 83
    invoke-direct {v7, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    new-instance v8, Lkotlin/Pair;

    .line 87
    .line 88
    iget-object v9, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;->$t:Ljava/lang/Throwable;

    .line 89
    .line 90
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    const-string v10, "errorMsg"

    .line 95
    .line 96
    invoke-direct {v8, v10, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const/4 v9, 0x7

    .line 100
    new-array v9, v9, [Lkotlin/Pair;

    .line 101
    .line 102
    const/4 v10, 0x0

    .line 103
    aput-object v2, v9, v10

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    aput-object v3, v9, v2

    .line 107
    .line 108
    const/4 v2, 0x2

    .line 109
    aput-object v4, v9, v2

    .line 110
    .line 111
    const/4 v2, 0x3

    .line 112
    aput-object v5, v9, v2

    .line 113
    .line 114
    aput-object v6, v9, v0

    .line 115
    .line 116
    const/4 v0, 0x5

    .line 117
    aput-object v7, v9, v0

    .line 118
    .line 119
    const/4 v0, 0x6

    .line 120
    aput-object v8, v9, v0

    .line 121
    .line 122
    const-string v0, "biz_request_no_network"

    .line 123
    .line 124
    invoke-virtual {p1, v1, v0, v9}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 125
    .line 126
    .line 127
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 128
    .line 129
    return-object p1

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 131
    .line 132
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 133
    .line 134
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1
.end method
