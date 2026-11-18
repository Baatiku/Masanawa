.class final Lteam/opay/pay/cashio/CashViewModel$setServices$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CashViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/cashio/CashViewModel;->M(Lteam/opay/core/api/GraphQL$ServiceId;Lag8;Lkotlin/jvm/functions/Function1;)V
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
    c = "team.opay.pay.cashio.CashViewModel$setServices$1"
    f = "CashViewModel.kt"
    l = {
        0x69
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $serviceId:Lteam/opay/core/api/GraphQL$ServiceId;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/cashio/CashViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/cashio/CashViewModel;Lteam/opay/core/api/GraphQL$ServiceId;Lkotlin/jvm/functions/Function1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashio/CashViewModel;",
            "Lteam/opay/core/api/GraphQL$ServiceId;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/cashio/CashViewModel$setServices$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashio/CashViewModel$setServices$1;->this$0:Lteam/opay/pay/cashio/CashViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/cashio/CashViewModel$setServices$1;->$serviceId:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/cashio/CashViewModel$setServices$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 3
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
    new-instance p1, Lteam/opay/pay/cashio/CashViewModel$setServices$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/cashio/CashViewModel$setServices$1;->this$0:Lteam/opay/pay/cashio/CashViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/cashio/CashViewModel$setServices$1;->$serviceId:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/cashio/CashViewModel$setServices$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/cashio/CashViewModel$setServices$1;-><init>(Lteam/opay/pay/cashio/CashViewModel;Lteam/opay/core/api/GraphQL$ServiceId;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashio/CashViewModel$setServices$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashio/CashViewModel$setServices$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/cashio/CashViewModel$setServices$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/cashio/CashViewModel$setServices$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/pay/cashio/CashViewModel$setServices$1;->label:I

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
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/pay/cashio/CashViewModel$setServices$1;->this$0:Lteam/opay/pay/cashio/CashViewModel;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/pay/cashio/CashViewModel;->A(Lteam/opay/pay/cashio/CashViewModel;)Lteam/opay/pay/home/pay/ServicesDao;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v4, p0, Lteam/opay/pay/cashio/CashViewModel$setServices$1;->$serviceId:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 37
    .line 38
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$ServiceId;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v1, v4}, Lteam/opay/pay/home/pay/ServicesDao;->d(Ljava/lang/String;)Lteam/opay/pay/home/pay/Service;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v1, v3

    .line 48
    :goto_0
    invoke-virtual {p1, v1}, Lteam/opay/pay/payment/ServiceViewModel;->y(Lteam/opay/pay/home/pay/Service;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v1, Lteam/opay/pay/cashio/CashViewModel$setServices$1$1;

    .line 56
    .line 57
    iget-object v4, p0, Lteam/opay/pay/cashio/CashViewModel$setServices$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 58
    .line 59
    iget-object v5, p0, Lteam/opay/pay/cashio/CashViewModel$setServices$1;->this$0:Lteam/opay/pay/cashio/CashViewModel;

    .line 60
    .line 61
    invoke-direct {v1, v4, v5, v3}, Lteam/opay/pay/cashio/CashViewModel$setServices$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/cashio/CashViewModel;Ljr2;)V

    .line 62
    .line 63
    .line 64
    iput v2, p0, Lteam/opay/pay/cashio/CashViewModel$setServices$1;->label:I

    .line 65
    .line 66
    invoke-static {p1, v1, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, v0, :cond_3

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p1
.end method
