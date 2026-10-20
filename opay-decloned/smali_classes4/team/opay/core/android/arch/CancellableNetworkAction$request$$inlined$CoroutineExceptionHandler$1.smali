.class public final Lteam/opay/core/android/arch/CancellableNetworkAction$request$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlinx/coroutines/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/android/arch/CancellableNetworkAction;->q()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "Lkotlinx/coroutines/e;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "",
        "exception",
        "",
        "q",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lteam/opay/core/android/arch/CancellableNetworkAction;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/e$a;Lteam/opay/core/android/arch/CancellableNetworkAction;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$request$$inlined$CoroutineExceptionHandler$1;->b:Lteam/opay/core/android/arch/CancellableNetworkAction;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public q(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 9
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lxk8;->a:Lxk8;

    .line 2
    .line 3
    new-instance v0, Lteam/opay/core/android/arch/CancellableNetworkAction$b;

    .line 4
    .line 5
    invoke-direct {v0, p2}, Lteam/opay/core/android/arch/CancellableNetworkAction$b;-><init>(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {p1, v2, v0, v1, v2}, Lxk8;->f(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$request$$inlined$CoroutineExceptionHandler$1;->b:Lteam/opay/core/android/arch/CancellableNetworkAction;

    .line 14
    .line 15
    invoke-static {p1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->b(Lteam/opay/core/android/arch/CancellableNetworkAction;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->q()Landroidx/lifecycle/AndroidViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    new-instance v6, Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;

    .line 32
    .line 33
    iget-object p1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$request$$inlined$CoroutineExceptionHandler$1;->b:Lteam/opay/core/android/arch/CancellableNetworkAction;

    .line 34
    .line 35
    invoke-direct {v6, p1, p2, v2}, Lteam/opay/core/android/arch/CancellableNetworkAction$request$handler$1$2;-><init>(Lteam/opay/core/android/arch/CancellableNetworkAction;Ljava/lang/Throwable;Ljr2;)V

    .line 36
    .line 37
    .line 38
    const/4 v7, 0x2

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-static/range {v3 .. v8}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 42
    .line 43
    .line 44
    return-void
.end method
