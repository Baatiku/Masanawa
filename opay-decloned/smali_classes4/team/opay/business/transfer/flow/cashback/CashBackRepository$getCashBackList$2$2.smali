.class final Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CashBackViewModel.kt"

# interfaces
.implements Lhm6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/cashback/CashBackRepository;->b(Lteam/opay/business/transfer/flow/api/CashBackReq;Lteam/opay/core/http/internal/PagingResultWrapper2;Ljava/util/ArrayList;)Lv56;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lhm6<",
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        "Ljr2<",
        "-",
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        "before",
        "after"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Ln33;
    c = "team.opay.business.transfer.flow.cashback.CashBackRepository$getCashBackList$2$2"
    f = "CashBackViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $request:Lteam/opay/business/transfer/flow/api/CashBackReq;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/api/CashBackReq;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/CashBackReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$2;->$request:Lteam/opay/business/transfer/flow/api/CashBackReq;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/business/transfer/flow/api/CashBackBean;

    check-cast p2, Lteam/opay/business/transfer/flow/api/CashBackBean;

    check-cast p3, Ljr2;

    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$2;->invoke(Lteam/opay/business/transfer/flow/api/CashBackBean;Lteam/opay/business/transfer/flow/api/CashBackBean;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lteam/opay/business/transfer/flow/api/CashBackBean;Lteam/opay/business/transfer/flow/api/CashBackBean;Ljr2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    new-instance v0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$2;

    iget-object v1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$2;->$request:Lteam/opay/business/transfer/flow/api/CashBackReq;

    invoke-direct {v0, v1, p3}, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$2;-><init>(Lteam/opay/business/transfer/flow/api/CashBackReq;Ljr2;)V

    iput-object p1, v0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$2;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lteam/opay/business/transfer/flow/api/CashBackBean;

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$2;->L$1:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lteam/opay/business/transfer/flow/api/CashBackBean;

    .line 18
    .line 19
    const-string v1, "MMM. yyyy"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/CashBackBean;->b()Lteam/opay/business/transfer/flow/api/CashBackItem;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/CashBackItem;->g()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    sget-object p1, Lxa6;->a:Lxa6;

    .line 35
    .line 36
    invoke-virtual {p1, v3, v4, v1}, Lxa6;->b(JLjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object p1, v2

    .line 42
    :goto_0
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/CashBackBean;->b()Lteam/opay/business/transfer/flow/api/CashBackItem;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3}, Lteam/opay/business/transfer/flow/api/CashBackItem;->g()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    sget-object v5, Lxa6;->a:Lxa6;

    .line 55
    .line 56
    invoke-virtual {v5, v3, v4, v1}, Lxa6;->b(JLjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object v1, v2

    .line 62
    :goto_1
    if-eqz v0, :cond_6

    .line 63
    .line 64
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_6

    .line 69
    .line 70
    new-instance p1, Lteam/opay/business/transfer/flow/api/CashBackBean;

    .line 71
    .line 72
    new-instance v1, Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;

    .line 73
    .line 74
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/CashBackBean;->b()Lteam/opay/business/transfer/flow/api/CashBackItem;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    invoke-virtual {v3}, Lteam/opay/business/transfer/flow/api/CashBackItem;->f()Lteam/opay/core/common/amount/MoneyAmount;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    move-object v4, v3

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    move-object v4, v2

    .line 87
    :goto_2
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/CashBackBean;->b()Lteam/opay/business/transfer/flow/api/CashBackItem;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    invoke-virtual {v3}, Lteam/opay/business/transfer/flow/api/CashBackItem;->i()Lteam/opay/core/common/amount/MoneyAmount;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :cond_3
    move-object v5, v2

    .line 98
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/CashBackBean;->b()Lteam/opay/business/transfer/flow/api/CashBackItem;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/CashBackItem;->g()J

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    :goto_3
    move-wide v6, v2

    .line 109
    goto :goto_4

    .line 110
    :cond_4
    const-wide/16 v2, 0x0

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :goto_4
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$2;->$request:Lteam/opay/business/transfer/flow/api/CashBackReq;

    .line 114
    .line 115
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/CashBackReq;->b()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-nez v0, :cond_5

    .line 120
    .line 121
    const-string v0, ""

    .line 122
    .line 123
    :cond_5
    move-object v8, v0

    .line 124
    move-object v3, v1

    .line 125
    invoke-direct/range {v3 .. v8}, Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;-><init>(Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;JLjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const/4 v7, 0x2

    .line 129
    const/4 v8, 0x0

    .line 130
    const/4 v4, 0x1

    .line 131
    const/4 v5, 0x0

    .line 132
    move-object v3, p1

    .line 133
    move-object v6, v1

    .line 134
    invoke-direct/range {v3 .. v8}, Lteam/opay/business/transfer/flow/api/CashBackBean;-><init>(ILteam/opay/business/transfer/flow/api/CashBackItem;Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 135
    .line 136
    .line 137
    move-object v2, p1

    .line 138
    :cond_6
    return-object v2

    .line 139
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 140
    .line 141
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 142
    .line 143
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p1
.end method
