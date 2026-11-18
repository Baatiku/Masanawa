.class final Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CancellableNetworkAction.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/android/arch/CancellableNetworkAction;->q()Landroidx/lifecycle/LiveData;
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
    c = "team.opay.core.android.arch.CancellableNetworkAction$request$handler$1$2"
    f = "CancellableNetworkAction.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $exception:Ljava/lang/Throwable;

.field label:I

.field final synthetic this$0:Lteam/opay/core/android/arch/CancellableNetworkAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/android/arch/CancellableNetworkAction<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/android/arch/CancellableNetworkAction;Ljava/lang/Throwable;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/android/arch/CancellableNetworkAction<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;->this$0:Lteam/opay/core/android/arch/CancellableNetworkAction;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;->$exception:Ljava/lang/Throwable;

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
    new-instance p1, Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;->this$0:Lteam/opay/core/android/arch/CancellableNetworkAction;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;->$exception:Ljava/lang/Throwable;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;-><init>(Lteam/opay/core/android/arch/CancellableNetworkAction;Ljava/lang/Throwable;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;->this$0:Lteam/opay/core/android/arch/CancellableNetworkAction;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->f(Lteam/opay/core/android/arch/CancellableNetworkAction;)Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;->this$0:Lteam/opay/core/android/arch/CancellableNetworkAction;

    .line 18
    .line 19
    iget-object v1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;->$exception:Ljava/lang/Throwable;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->d(Lteam/opay/core/android/arch/CancellableNetworkAction;Ljava/lang/Throwable;)Lteam/opay/core/android/arch/Resource;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method
