.class final Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BankTransferViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "team.opay.pay.home.tabs.BankTransferViewModel$serviceLiveData$2$1$1$1"
    f = "BankTransferViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/home/pay/Service;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $service:Lteam/opay/pay/home/pay/Service;

.field label:I


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/pay/Service;Landroidx/lifecycle/MutableLiveData;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/pay/Service;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/home/pay/Service;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1$1;->$service:Lteam/opay/pay/home/pay/Service;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1$1;->$it:Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
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
    new-instance p1, Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1$1;->$service:Lteam/opay/pay/home/pay/Service;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1$1;->$it:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1$1;-><init>(Lteam/opay/pay/home/pay/Service;Landroidx/lifecycle/MutableLiveData;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1$1;->$service:Lteam/opay/pay/home/pay/Service;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1$1;->$it:Landroidx/lifecycle/MutableLiveData;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/home/tabs/BankTransferViewModel$serviceLiveData$2$1$1$1;->$it:Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    new-instance v8, Lteam/opay/pay/home/pay/Service;

    .line 24
    .line 25
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceId;->BANK:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 26
    .line 27
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceId;->getValue()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->BANK:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 32
    .line 33
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v5, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 38
    .line 39
    const-string v0, "100"

    .line 40
    .line 41
    const-string v3, "NGN"

    .line 42
    .line 43
    invoke-direct {v5, v0, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v6, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 47
    .line 48
    const-string v0, "999999"

    .line 49
    .line 50
    invoke-direct {v6, v0, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v3, 0x1

    .line 55
    const/4 v4, 0x1

    .line 56
    move-object v0, v8

    .line 57
    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/home/pay/Service;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v8}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method
