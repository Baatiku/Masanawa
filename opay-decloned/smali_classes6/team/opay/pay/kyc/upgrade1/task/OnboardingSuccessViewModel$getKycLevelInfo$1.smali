.class final Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OnboardingSuccessViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->L(Lag8;)V
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
    c = "team.opay.pay.kyc.upgrade1.task.OnboardingSuccessViewModel$getKycLevelInfo$1"
    f = "OnboardingSuccessViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $lifecycleOwner:Lag8;

.field final synthetic $userKyc:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;Ljava/lang/String;Lag8;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;",
            "Ljava/lang/String;",
            "Lag8;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->this$0:Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->$userKyc:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->$lifecycleOwner:Lag8;

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
    new-instance p1, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->this$0:Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->$userKyc:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->$lifecycleOwner:Lag8;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;-><init>(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;Ljava/lang/String;Lag8;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->this$0:Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->x(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;)Lteam/opay/pay/kyc/levels/KycLevelDao;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->$userKyc:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lteam/opay/pay/kyc/levels/KycLevelDao;->b(Ljava/lang/String;)Lteam/opay/pay/kyc/levels/KycLevel;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p1, v0

    .line 28
    :goto_0
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->this$0:Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;

    .line 31
    .line 32
    invoke-virtual {v0}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->K()Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->this$0:Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;

    .line 41
    .line 42
    invoke-static {p1}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v4, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1$2;

    .line 51
    .line 52
    iget-object p1, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->this$0:Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;

    .line 53
    .line 54
    iget-object v3, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->$lifecycleOwner:Lag8;

    .line 55
    .line 56
    iget-object v5, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;->$userKyc:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {v4, p1, v3, v5, v0}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1$2;-><init>(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;Lag8;Ljava/lang/String;Ljr2;)V

    .line 59
    .line 60
    .line 61
    const/4 v5, 0x2

    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 65
    .line 66
    .line 67
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method
