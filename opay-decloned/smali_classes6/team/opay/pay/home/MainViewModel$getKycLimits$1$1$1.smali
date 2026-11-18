.class final Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/MainViewModel;->K0(Lteam/opay/pay/home/MainActivity;)V
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
    c = "team.opay.pay.home.MainViewModel$getKycLimits$1$1$1"
    f = "MainViewModel.kt"
    l = {
        0x2cf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Lteam/opay/pay/home/MainActivity;

.field final synthetic $limits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$KycLimit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/pay/home/MainViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/MainActivity;Lteam/opay/pay/home/MainViewModel;Ljava/util/List;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/MainActivity;",
            "Lteam/opay/pay/home/MainViewModel;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$KycLimit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;->$activity:Lteam/opay/pay/home/MainActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;->$limits:Ljava/util/List;

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
    new-instance p1, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;->$activity:Lteam/opay/pay/home/MainActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;->$limits:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;-><init>(Lteam/opay/pay/home/MainActivity;Lteam/opay/pay/home/MainViewModel;Ljava/util/List;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;->label:I

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
    goto :goto_0

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
    iget-object p1, p0, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;->$activity:Lteam/opay/pay/home/MainActivity;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string p1, "<get-lifecycle>(...)"

    .line 34
    .line 35
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 39
    .line 40
    iget-object v1, p0, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;->$limits:Ljava/util/List;

    .line 41
    .line 42
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 43
    .line 44
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v5}, Lkotlinx/coroutines/MainCoroutineDispatcher;->g1()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-interface {p0}, Ljr2;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v6, v5}, Lkotlinx/coroutines/CoroutineDispatcher;->e1(Lkotlin/coroutines/CoroutineContext;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_3

    .line 61
    .line 62
    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 67
    .line 68
    if-eq v7, v8, :cond_2

    .line 69
    .line 70
    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v7, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-ltz v7, :cond_3

    .line 79
    .line 80
    invoke-static {p1, v1}, Lteam/opay/pay/home/MainViewModel;->b0(Lteam/opay/pay/home/MainViewModel;Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    new-instance p1, Landroidx/lifecycle/LifecycleDestroyedException;

    .line 87
    .line 88
    invoke-direct {p1}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_3
    new-instance v7, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1$invokeSuspend$$inlined$withResumed$1;

    .line 93
    .line 94
    invoke-direct {v7, p1, v1}, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1$invokeSuspend$$inlined$withResumed$1;-><init>(Lteam/opay/pay/home/MainViewModel;Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    iput v2, p0, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;->label:I

    .line 98
    .line 99
    move-object v8, p0

    .line 100
    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/WithLifecycleStateKt;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Ljr2;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-ne p1, v0, :cond_4

    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p1
.end method
