.class final Lteam/opay/pay/home/MainViewModel$getServicesQueryLiveData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/MainViewModel;->T0(Ljr2;)Ljava/lang/Object;
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
        "Landroidx/lifecycle/LiveData<",
        "Lteam/opay/core/android/arch/Resource<",
        "+",
        "Lteam/opay/core/api/GraphQL$Schema;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lzr2;",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/GraphQL$Schema;",
        "<anonymous>",
        "(Lzr2;)Landroidx/lifecycle/LiveData;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.home.MainViewModel$getServicesQueryLiveData$2"
    f = "MainViewModel.kt"
    l = {
        0x2c6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/home/MainViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/MainViewModel;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/MainViewModel;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/MainViewModel$getServicesQueryLiveData$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/MainViewModel$getServicesQueryLiveData$2;->this$0:Lteam/opay/pay/home/MainViewModel;

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
    new-instance p1, Lteam/opay/pay/home/MainViewModel$getServicesQueryLiveData$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/home/MainViewModel$getServicesQueryLiveData$2;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/home/MainViewModel$getServicesQueryLiveData$2;-><init>(Lteam/opay/pay/home/MainViewModel;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/MainViewModel$getServicesQueryLiveData$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/GraphQL$Schema;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/MainViewModel$getServicesQueryLiveData$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/home/MainViewModel$getServicesQueryLiveData$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/home/MainViewModel$getServicesQueryLiveData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/pay/home/MainViewModel$getServicesQueryLiveData$2;->label:I

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
    iget-object v0, p0, Lteam/opay/pay/home/MainViewModel$getServicesQueryLiveData$2;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lteam/opay/pay/home/MainViewModel;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

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
    iget-object p1, p0, Lteam/opay/pay/home/MainViewModel$getServicesQueryLiveData$2;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 32
    .line 33
    iput-object p1, p0, Lteam/opay/pay/home/MainViewModel$getServicesQueryLiveData$2;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    iput v2, p0, Lteam/opay/pay/home/MainViewModel$getServicesQueryLiveData$2;->label:I

    .line 36
    .line 37
    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 38
    .line 39
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/a;->c(Ljr2;)Ljr2;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Ljr2;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->B()V

    .line 47
    .line 48
    .line 49
    sget-object v2, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 50
    .line 51
    invoke-virtual {p1}, Lteam/opay/pay/home/MainViewModel;->w0()Landroid/app/Application;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Lteam/opay/core/api/GraphQL;->a(Landroid/content/Context;)Lxt;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    sget-object v4, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 60
    .line 61
    invoke-virtual {v4}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v2, v4}, Lteam/opay/core/api/GraphQL;->i(Ljava/lang/String;)Lteam/opay/core/api/graphql/Request;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/4 v4, 0x2

    .line 70
    const/4 v5, 0x0

    .line 71
    invoke-static {v3, v2, v5, v4, v5}, Lxt$a;->a(Lxt;Lteam/opay/core/api/graphql/Request;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const-string v3, ""

    .line 76
    .line 77
    invoke-static {v2, p1, v3}, Lkpc;->d(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-interface {v1, p1}, Ljr2;->resumeWith(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->r()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-ne p1, v1, :cond_2

    .line 97
    .line 98
    invoke-static {p0}, Lp33;->c(Ljr2;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    if-ne p1, v0, :cond_3

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_3
    :goto_0
    return-object p1
.end method
