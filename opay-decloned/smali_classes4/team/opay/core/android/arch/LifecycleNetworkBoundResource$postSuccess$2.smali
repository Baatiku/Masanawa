.class final Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LifecycleNetworkBoundResource.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;->t(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
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
    c = "team.opay.core.android.arch.LifecycleNetworkBoundResource$postSuccess$2"
    f = "LifecycleNetworkBoundResource.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/android/arch/LifecycleNetworkBoundResource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lteam/opay/core/android/arch/LifecycleNetworkBoundResource<",
            "TT;>;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->$data:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->this$0:Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;

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

.method public static synthetic c(Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->invokeSuspend$lambda$0(Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/android/arch/Resource;->d:Lteam/opay/core/android/arch/Resource$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/Resource$Companion;->d(Ljava/lang/Object;)Lteam/opay/core/android/arch/Resource;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;->j(Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;Lteam/opay/core/android/arch/Resource;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
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
    new-instance p1, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->$data:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->this$0:Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;-><init>(Ljava/lang/Object;Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->$data:Ljava/lang/Object;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->this$0:Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;->r()Landroidx/lifecycle/LiveData;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->this$0:Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;

    .line 23
    .line 24
    invoke-static {p1}, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;->g(Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v0, p0, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->$data:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->this$0:Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;

    .line 34
    .line 35
    invoke-static {p1}, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;->g(Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    iget-object v0, p0, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->this$0:Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;

    .line 40
    .line 41
    invoke-static {v0}, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;->h(Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->this$0:Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;

    .line 46
    .line 47
    new-instance v2, Lteam/opay/core/android/arch/b;

    .line 48
    .line 49
    invoke-direct {v2, v1}, Lteam/opay/core/android/arch/b;-><init>(Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$a;

    .line 53
    .line 54
    invoke-direct {v1, v2}, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 58
    .line 59
    .line 60
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method
