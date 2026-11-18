.class final Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ElectricityPaymentViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;->r()Landroidx/lifecycle/LiveData;
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
    c = "team.opay.pay.payment.electricity.ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1"
    f = "ElectricityPaymentViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $viewModel:Landroidx/lifecycle/AndroidViewModel;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/payment/electricity/ElectricityRepository;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/electricity/ElectricityRepository;Landroidx/lifecycle/AndroidViewModel;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/payment/electricity/ElectricityRepository;",
            "Landroidx/lifecycle/AndroidViewModel;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;->$viewModel:Landroidx/lifecycle/AndroidViewModel;

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
    new-instance p1, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityRepository;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;->$viewModel:Landroidx/lifecycle/AndroidViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;-><init>(Lteam/opay/pay/payment/electricity/ElectricityRepository;Landroidx/lifecycle/AndroidViewModel;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityRepository;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/pay/payment/electricity/ElectricityRepository;->g(Lteam/opay/pay/payment/electricity/ElectricityRepository;)Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityRepository;

    .line 18
    .line 19
    invoke-virtual {v0}, Lteam/opay/pay/payment/electricity/ElectricityRepository;->h()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, ""

    .line 24
    .line 25
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v1, p1

    .line 33
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    new-instance p1, Lteam/opay/pay/payment/ElectricityCalculateRsp;

    .line 40
    .line 41
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p1, v0}, Lteam/opay/pay/payment/ElectricityCalculateRsp;-><init>(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance p1, Lcom/google/gson/Gson;

    .line 50
    .line 51
    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 52
    .line 53
    .line 54
    const-class v0, Lteam/opay/pay/payment/ElectricityCalculateRsp;

    .line 55
    .line 56
    invoke-virtual {p1, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lteam/opay/pay/payment/ElectricityCalculateRsp;

    .line 61
    .line 62
    :goto_1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;->$viewModel:Landroidx/lifecycle/AndroidViewModel;

    .line 63
    .line 64
    invoke-static {v0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    new-instance v4, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1$1;

    .line 73
    .line 74
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityRepository;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-direct {v4, v0, p1, v3}, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1$1;-><init>(Lteam/opay/pay/payment/electricity/ElectricityRepository;Lteam/opay/pay/payment/ElectricityCalculateRsp;Ljr2;)V

    .line 78
    .line 79
    .line 80
    const/4 v5, 0x2

    .line 81
    const/4 v6, 0x0

    .line 82
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 83
    .line 84
    .line 85
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 86
    .line 87
    return-object p1

    .line 88
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 91
    .line 92
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1
.end method
