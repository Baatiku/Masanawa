.class final Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Resource.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/android/arch/ResourceKt;->a(Landroidx/lifecycle/LiveData;)Lv56;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lf0c<",
        "-TT;>;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010\u0000*\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0001H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "T",
        "Lf0c;",
        "",
        "<anonymous>",
        "(Lf0c;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.core.android.arch.ResourceKt$asResourceFlow$1"
    f = "Resource.kt"
    l = {
        0x76,
        0x7a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $this_asResourceFlow:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "TT;>;>;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->$this_asResourceFlow:Landroidx/lifecycle/LiveData;

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

.method public static synthetic c(Landroidx/lifecycle/LiveData;Lvfa;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->invokeSuspend$lambda$1(Landroidx/lifecycle/LiveData;Lvfa;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lf0c;Lteam/opay/core/android/arch/Resource;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->invokeSuspend$lambda$0(Lf0c;Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lf0c;Lteam/opay/core/android/arch/Resource;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->i(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private static final invokeSuspend$lambda$1(Landroidx/lifecycle/LiveData;Lvfa;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lkr6;->a:Lkr6;

    .line 2
    .line 3
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->g1()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v3, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1$2$1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v3, p0, p1, v2}, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1$2$1;-><init>(Landroidx/lifecycle/LiveData;Lvfa;Ljr2;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
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
    new-instance v0, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->$this_asResourceFlow:Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;-><init>(Landroidx/lifecycle/LiveData;Ljr2;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Lf0c;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf0c<",
            "-TT;>;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lf0c;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->invoke(Lf0c;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

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
    iget-object v1, p0, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->L$1:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lvfa;

    .line 31
    .line 32
    iget-object v3, p0, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Lf0c;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lf0c;

    .line 46
    .line 47
    new-instance v1, Lteam/opay/core/android/arch/c;

    .line 48
    .line 49
    invoke-direct {v1, p1}, Lteam/opay/core/android/arch/c;-><init>(Lf0c;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v5}, Lkotlinx/coroutines/MainCoroutineDispatcher;->g1()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    new-instance v6, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1$1;

    .line 61
    .line 62
    iget-object v7, p0, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->$this_asResourceFlow:Landroidx/lifecycle/LiveData;

    .line 63
    .line 64
    invoke-direct {v6, v7, v1, v4}, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1$1;-><init>(Landroidx/lifecycle/LiveData;Lvfa;Ljr2;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    iput-object v1, p0, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->L$1:Ljava/lang/Object;

    .line 70
    .line 71
    iput v3, p0, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->label:I

    .line 72
    .line 73
    invoke-static {v5, v6, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-ne v3, v0, :cond_3

    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_3
    move-object v3, p1

    .line 81
    :goto_0
    iget-object p1, p0, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->$this_asResourceFlow:Landroidx/lifecycle/LiveData;

    .line 82
    .line 83
    new-instance v5, Lteam/opay/core/android/arch/d;

    .line 84
    .line 85
    invoke-direct {v5, p1, v1}, Lteam/opay/core/android/arch/d;-><init>(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 86
    .line 87
    .line 88
    iput-object v4, p0, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    iput-object v4, p0, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->L$1:Ljava/lang/Object;

    .line 91
    .line 92
    iput v2, p0, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->label:I

    .line 93
    .line 94
    invoke-static {v3, v5, p0}, Lkotlinx/coroutines/channels/ProduceKt;->a(Lf0c;Lkotlin/jvm/functions/Function0;Ljr2;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-ne p1, v0, :cond_4

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 102
    .line 103
    return-object p1
.end method
