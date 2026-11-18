.class final Lteam/opay/pay/home/MainViewModel$getServices$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/MainViewModel;->S0(Lteam/opay/pay/home/MainActivity;)V
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
    c = "team.opay.pay.home.MainViewModel$getServices$1"
    f = "MainViewModel.kt"
    l = {
        0x1e4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Lteam/opay/pay/home/MainActivity;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/home/MainViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/MainViewModel;Lteam/opay/pay/home/MainActivity;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/MainViewModel;",
            "Lteam/opay/pay/home/MainActivity;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/MainViewModel$getServices$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/MainViewModel$getServices$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/MainViewModel$getServices$1;->$activity:Lteam/opay/pay/home/MainActivity;

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

.method public static synthetic c(Lteam/opay/pay/home/MainActivity;Lteam/opay/pay/home/MainViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/MainViewModel$getServices$1;->invokeSuspend$lambda$1(Lteam/opay/pay/home/MainActivity;Lteam/opay/pay/home/MainViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Lteam/opay/pay/home/MainActivity;Lteam/opay/pay/home/MainViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 6

    .line 1
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lteam/opay/core/api/GraphQL$Schema;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-static {p2}, Lteam/opay/pay/home/pay/ServicesWebServiceKt;->b(Lteam/opay/core/api/GraphQL$Schema;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v3, Lteam/opay/pay/home/MainViewModel$getServices$1$1$1$1;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v3, p0, p1, p2, v1}, Lteam/opay/pay/home/MainViewModel$getServices$1$1$1$1;-><init>(Lteam/opay/pay/home/MainActivity;Lteam/opay/pay/home/MainViewModel;Ljava/util/List;Ljr2;)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 37
    .line 38
    .line 39
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
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
    new-instance p1, Lteam/opay/pay/home/MainViewModel$getServices$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/home/MainViewModel$getServices$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/home/MainViewModel$getServices$1;->$activity:Lteam/opay/pay/home/MainActivity;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/home/MainViewModel$getServices$1;-><init>(Lteam/opay/pay/home/MainViewModel;Lteam/opay/pay/home/MainActivity;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/MainViewModel$getServices$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/MainViewModel$getServices$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/home/MainViewModel$getServices$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/home/MainViewModel$getServices$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/home/MainViewModel$getServices$1;->label:I

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
    iget-object p1, p0, Lteam/opay/pay/home/MainViewModel$getServices$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 28
    .line 29
    iput v2, p0, Lteam/opay/pay/home/MainViewModel$getServices$1;->label:I

    .line 30
    .line 31
    invoke-static {p1, p0}, Lteam/opay/pay/home/MainViewModel;->Y(Lteam/opay/pay/home/MainViewModel;Ljr2;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    :goto_0
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 39
    .line 40
    iget-object v0, p0, Lteam/opay/pay/home/MainViewModel$getServices$1;->$activity:Lteam/opay/pay/home/MainActivity;

    .line 41
    .line 42
    iget-object v1, p0, Lteam/opay/pay/home/MainViewModel$getServices$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 43
    .line 44
    new-instance v2, Lteam/opay/pay/home/b;

    .line 45
    .line 46
    invoke-direct {v2, v0, v1}, Lteam/opay/pay/home/b;-><init>(Lteam/opay/pay/home/MainActivity;Lteam/opay/pay/home/MainViewModel;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lteam/opay/pay/home/MainViewModel$b;

    .line 50
    .line 51
    invoke-direct {v1, v2}, Lteam/opay/pay/home/MainViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p1
.end method
