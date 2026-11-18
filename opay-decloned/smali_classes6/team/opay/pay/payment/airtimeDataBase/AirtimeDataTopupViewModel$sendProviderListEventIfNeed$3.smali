.class final Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AirtimeDataTopupViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->R1(Lteam/opay/core/api/GraphQL$ServiceType;)V
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
    c = "team.opay.pay.payment.airtimeDataBase.AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3"
    f = "AirtimeDataTopupViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $providerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $serviceType:Lteam/opay/core/api/GraphQL$ServiceType;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/core/api/GraphQL$ServiceType;Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;Ljava/util/ArrayList;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/GraphQL$ServiceType;",
            "Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;->$serviceType:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;->$providerList:Ljava/util/ArrayList;

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
    .locals 4
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
    new-instance v0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;->$serviceType:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;->$providerList:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;-><init>(Lteam/opay/core/api/GraphQL$ServiceType;Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;Ljava/util/ArrayList;Ljr2;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lzr2;

    .line 14
    .line 15
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;->$providerList:Ljava/util/ArrayList;

    .line 16
    .line 17
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 18
    .line 19
    new-instance v0, Lcom/google/gson/Gson;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;->$serviceType:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 56
    .line 57
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->AIRTIME:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 58
    .line 59
    if-ne v0, v1, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 62
    .line 63
    invoke-static {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->Q(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)Lteam/opay/core/settings/NoClearStorage;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Lteam/opay/core/settings/NoClearStorage;->X0(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$sendProviderListEventIfNeed$3;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 72
    .line 73
    invoke-static {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->Q(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)Lteam/opay/core/settings/NoClearStorage;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Lteam/opay/core/settings/NoClearStorage;->u1(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    return-object p1

    .line 83
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 86
    .line 87
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1
.end method
