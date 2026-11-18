.class final Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewWalletDetailsViewModel.kt"

# interfaces
.implements Lhm6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lhm6<",
        "Lteam/opay/core/android/arch/Resource<",
        "+",
        "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
        ">;",
        "Lteam/opay/core/android/arch/Resource<",
        "+",
        "Lteam/opay/pay/transaction/TransactionsHistoryRspV2;",
        ">;",
        "Ljr2<",
        "-",
        "Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0010\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00032\u0010\u0010\u0005\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;",
        "accountDetail",
        "Lteam/opay/core/android/arch/Resource;",
        "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
        "transaction",
        "Lteam/opay/pay/transaction/TransactionsHistoryRspV2;"
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
    c = "com.opay.team.newhome.account.NewWalletDetailsViewModel$observeData$1$1"
    f = "NewWalletDetailsViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljr2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/android/arch/Resource;

    check-cast p2, Lteam/opay/core/android/arch/Resource;

    check-cast p3, Ljr2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$1;->invoke(Lteam/opay/core/android/arch/Resource;Lteam/opay/core/android/arch/Resource;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lteam/opay/core/android/arch/Resource;Lteam/opay/core/android/arch/Resource;Ljr2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/android/arch/Resource<",
            "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
            ">;",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/transaction/TransactionsHistoryRspV2;",
            ">;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$1;

    invoke-direct {v0, p3}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$1;-><init>(Ljr2;)V

    iput-object p1, v0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$1;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lteam/opay/core/android/arch/Resource;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$1;->L$1:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lteam/opay/core/android/arch/Resource;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v2, v1

    .line 28
    :goto_0
    sget-object v3, Lteam/opay/core/android/arch/Status;->ERROR:Lteam/opay/core/android/arch/Status;

    .line 29
    .line 30
    if-ne v2, v3, :cond_1

    .line 31
    .line 32
    move-object v2, v1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lteam/opay/pay/transaction/TransactionsHistoryRspV2;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Lteam/opay/pay/transaction/TransactionsHistoryRspV2;->d()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_4

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lteam/opay/pay/transaction/TransactionListV2;

    .line 70
    .line 71
    invoke-virtual {v3}, Lteam/opay/pay/transaction/TransactionListV2;->c()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-nez v3, :cond_2

    .line 76
    .line 77
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    :cond_2
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    :cond_4
    :goto_2
    new-instance v0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    move-object v3, v1

    .line 101
    :goto_3
    if-eqz p1, :cond_6

    .line 102
    .line 103
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    goto :goto_4

    .line 108
    :cond_6
    move-object p1, v1

    .line 109
    :goto_4
    sget-object v4, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 110
    .line 111
    if-ne p1, v4, :cond_7

    .line 112
    .line 113
    const/4 p1, 0x1

    .line 114
    goto :goto_5

    .line 115
    :cond_7
    const/4 p1, 0x0

    .line 116
    :goto_5
    invoke-direct {v0, v3, v1, v2, p1}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;-><init>(Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;Ljava/util/List;Z)V

    .line 117
    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 121
    .line 122
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 123
    .line 124
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1
.end method
