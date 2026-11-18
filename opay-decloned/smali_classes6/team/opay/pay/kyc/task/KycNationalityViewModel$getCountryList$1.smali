.class final Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KycNationalityViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/task/KycNationalityViewModel;->E(Z)V
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
    c = "team.opay.pay.kyc.task.KycNationalityViewModel$getCountryList$1"
    f = "KycNationalityViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $fromClick:Z

.field label:I

.field final synthetic this$0:Lteam/opay/pay/kyc/task/KycNationalityViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/task/KycNationalityViewModel;ZLjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/kyc/task/KycNationalityViewModel;",
            "Z",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;->this$0:Lteam/opay/pay/kyc/task/KycNationalityViewModel;

    .line 2
    .line 3
    iput-boolean p2, p0, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;->$fromClick:Z

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
    new-instance p1, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;->this$0:Lteam/opay/pay/kyc/task/KycNationalityViewModel;

    .line 4
    .line 5
    iget-boolean v1, p0, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;->$fromClick:Z

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;-><init>(Lteam/opay/pay/kyc/task/KycNationalityViewModel;ZLjr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;->this$0:Lteam/opay/pay/kyc/task/KycNationalityViewModel;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-static {v0}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lvca;->a:Lvca;

    .line 26
    .line 27
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;->this$0:Lteam/opay/pay/kyc/task/KycNationalityViewModel;

    .line 28
    .line 29
    invoke-static {v0}, Lteam/opay/pay/kyc/task/KycNationalityViewModel;->B(Lteam/opay/pay/kyc/task/KycNationalityViewModel;)Landroid/app/Application;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "osdk_country_list.json"

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Lvca;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;->this$0:Lteam/opay/pay/kyc/task/KycNationalityViewModel;

    .line 42
    .line 43
    iget-boolean v1, p0, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;->$fromClick:Z

    .line 44
    .line 45
    new-instance v2, Lcom/google/gson/Gson;

    .line 46
    .line 47
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v3, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1$a;

    .line 51
    .line 52
    invoke-direct {v3}, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1$a;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v2, "fromJson(...)"

    .line 64
    .line 65
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    check-cast p1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v0}, Lteam/opay/pay/kyc/task/KycNationalityViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v3, Lkotlin/Pair;

    .line 75
    .line 76
    invoke-static {v1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-direct {v3, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0, p1}, Lteam/opay/pay/kyc/task/KycNationalityViewModel;->C(Lteam/opay/pay/kyc/task/KycNationalityViewModel;Ljava/util/ArrayList;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/kyc/task/KycNationalityViewModel$getCountryList$1;->this$0:Lteam/opay/pay/kyc/task/KycNationalityViewModel;

    .line 90
    .line 91
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-static {v0}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 104
    .line 105
    return-object p1

    .line 106
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 109
    .line 110
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1
.end method
