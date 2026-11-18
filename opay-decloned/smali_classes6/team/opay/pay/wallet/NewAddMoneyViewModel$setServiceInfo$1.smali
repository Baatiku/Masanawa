.class final Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewAddMoneyViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/wallet/NewAddMoneyViewModel;->a0(Lag8;Ljava/lang/String;)V
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
    c = "team.opay.pay.wallet.NewAddMoneyViewModel$setServiceInfo$1"
    f = "NewAddMoneyViewModel.kt"
    l = {
        0x12a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $owner:Lag8;

.field final synthetic $serviceId:Lteam/opay/core/api/GraphQL$ServiceId;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/wallet/NewAddMoneyViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lteam/opay/core/api/GraphQL$ServiceId;Lag8;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/wallet/NewAddMoneyViewModel;",
            "Lteam/opay/core/api/GraphQL$ServiceId;",
            "Lag8;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;->this$0:Lteam/opay/pay/wallet/NewAddMoneyViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;->$serviceId:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;->$owner:Lag8;

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
    new-instance p1, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;->this$0:Lteam/opay/pay/wallet/NewAddMoneyViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;->$serviceId:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;->$owner:Lag8;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;-><init>(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lteam/opay/core/api/GraphQL$ServiceId;Lag8;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;->label:I

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
    iget-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;->this$0:Lteam/opay/pay/wallet/NewAddMoneyViewModel;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->v(Lteam/opay/pay/wallet/NewAddMoneyViewModel;)Lteam/opay/pay/home/pay/ServicesDao;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object v3, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;->$serviceId:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {p1, v3}, Lteam/opay/pay/home/pay/ServicesDao;->d(Ljava/lang/String;)Lteam/opay/pay/home/pay/Service;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object p1, v1

    .line 48
    :goto_0
    iget-object v3, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;->this$0:Lteam/opay/pay/wallet/NewAddMoneyViewModel;

    .line 49
    .line 50
    invoke-virtual {v3, p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->b0(Lteam/opay/pay/home/pay/Service;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance v3, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1$1;

    .line 58
    .line 59
    iget-object v4, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;->this$0:Lteam/opay/pay/wallet/NewAddMoneyViewModel;

    .line 60
    .line 61
    iget-object v5, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;->$owner:Lag8;

    .line 62
    .line 63
    invoke-direct {v3, v4, v5, v1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1$1;-><init>(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lag8;Ljr2;)V

    .line 64
    .line 65
    .line 66
    iput v2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;->label:I

    .line 67
    .line 68
    invoke-static {p1, v3, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-ne p1, v0, :cond_3

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p1
.end method
