.class final Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AirtimeDataTopupViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "team.opay.pay.payment.airtimeDataBase.AirtimeDataTopupViewModel$serviceByIdLiveData$1$1"
    f = "AirtimeDataTopupViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Lteam/opay/pay/home/pay/Service;

.field final synthetic $items:Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;Lteam/opay/pay/home/pay/Service;Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;",
            "Lteam/opay/pay/home/pay/Service;",
            "Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->$it:Lteam/opay/pay/home/pay/Service;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->$items:Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;

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
    new-instance p1, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->$it:Lteam/opay/pay/home/pay/Service;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->$items:Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;-><init>(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;Lteam/opay/pay/home/pay/Service;Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->$it:Lteam/opay/pay/home/pay/Service;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->e2(Z)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 24
    .line 25
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->$it:Lteam/opay/pay/home/pay/Service;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/ServiceViewModel;->y(Lteam/opay/pay/home/pay/Service;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->$it:Lteam/opay/pay/home/pay/Service;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->$items:Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;

    .line 35
    .line 36
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$serviceByIdLiveData$1$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 37
    .line 38
    invoke-virtual {p1}, Lteam/opay/pay/home/pay/Service;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;->h(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/pay/home/pay/Service;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;->g(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->a1()Landroidx/lifecycle/MutableLiveData;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method
