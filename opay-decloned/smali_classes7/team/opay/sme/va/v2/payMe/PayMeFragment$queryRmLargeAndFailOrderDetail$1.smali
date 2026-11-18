.class final Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PayMeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/v2/payMe/PayMeFragment;->w0()V
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
    c = "team.opay.sme.va.v2.payMe.PayMeFragment$queryRmLargeAndFailOrderDetail$1"
    f = "PayMeFragment.kt"
    l = {
        0x7c,
        0x7f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/v2/payMe/PayMeFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/v2/payMe/PayMeFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

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
    new-instance p1, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1;-><init>(Lteam/opay/sme/va/v2/payMe/PayMeFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 36
    .line 37
    invoke-static {p1}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->X(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v1, Lteam/opay/business/provider/smeVa/QueryLargeTransferReq;

    .line 42
    .line 43
    iget-object v5, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 44
    .line 45
    invoke-static {v5}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->V(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    invoke-virtual {v5}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumber()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    move-object v5, v2

    .line 57
    :goto_0
    invoke-direct {v1, v5}, Lteam/opay/business/provider/smeVa/QueryLargeTransferReq;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput v4, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1;->label:I

    .line 61
    .line 62
    invoke-virtual {p1, v1, p0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->a(Lteam/opay/business/provider/smeVa/QueryLargeTransferReq;Ljr2;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v0, :cond_4

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_4
    :goto_1
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 70
    .line 71
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    new-instance v4, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1$1;

    .line 76
    .line 77
    iget-object v5, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 78
    .line 79
    invoke-direct {v4, v5, p1, v2}, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1$1;-><init>(Lteam/opay/sme/va/v2/payMe/PayMeFragment;Lteam/opay/core/http/HttpResult;Ljr2;)V

    .line 80
    .line 81
    .line 82
    iput v3, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryRmLargeAndFailOrderDetail$1;->label:I

    .line 83
    .line 84
    invoke-static {v1, v4, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-ne p1, v0, :cond_5

    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
    return-object p1
.end method
