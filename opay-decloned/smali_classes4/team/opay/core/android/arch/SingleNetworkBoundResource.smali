.class public abstract Lteam/opay/core/android/arch/SingleNetworkBoundResource;
.super Ljava/lang/Object;
.source "SingleNetworkBoundResource.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0011\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00018\u0000H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000c0\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00028\u0000H%\u00a2\u0006\u0004\u0008\u000f\u0010\nJ\u0019\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00018\u0000H%\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0015\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH%\u00a2\u0006\u0004\u0008\u0014\u0010\u000eJ\u001b\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00150\u000bH%\u00a2\u0006\u0004\u0008\u0016\u0010\u000eJ\u001d\u0010\u0018\u001a\u00020\u00082\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cH\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001c\u0010\u001a\u001a\u00020\u00082\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00018\u0000H\u0082@\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001d\u0010\u001d\u001a\u00020\u00082\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R \u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000c0#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u001a\u0010(\u001a\u0008\u0012\u0004\u0012\u00028\u00000#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010%R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+\u00a8\u0006-"
    }
    d2 = {
        "Lteam/opay/core/android/arch/SingleNetworkBoundResource;",
        "T",
        "",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "<init>",
        "(Lteam/opay/core/android/arch/AppExecutors;)V",
        "item",
        "",
        "u",
        "(Ljava/lang/Object;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "l",
        "()Landroidx/lifecycle/LiveData;",
        "x",
        "data",
        "",
        "z",
        "(Ljava/lang/Object;)Z",
        "t",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "m",
        "newValue",
        "y",
        "(Lteam/opay/core/android/arch/Resource;)V",
        "v",
        "(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;",
        "dbSource",
        "n",
        "(Landroidx/lifecycle/LiveData;)V",
        "a",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "r",
        "()Lteam/opay/core/android/arch/AppExecutors;",
        "Landroidx/lifecycle/MediatorLiveData;",
        "b",
        "Landroidx/lifecycle/MediatorLiveData;",
        "result",
        "c",
        "netResult",
        "Lteam/opay/core/android/arch/IOScope;",
        "d",
        "Lteam/opay/core/android/arch/IOScope;",
        "scope",
        "sdk_release"
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
.field public final a:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/android/arch/IOScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 3
    .param p1    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appExecutors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->a:Lteam/opay/core/android/arch/AppExecutors;

    .line 10
    .line 11
    new-instance p1, Landroidx/lifecycle/MediatorLiveData;

    .line 12
    .line 13
    invoke-direct {p1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 17
    .line 18
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->c:Landroidx/lifecycle/MediatorLiveData;

    .line 24
    .line 25
    new-instance v0, Lteam/opay/core/android/arch/IOScope;

    .line 26
    .line 27
    invoke-direct {v0}, Lteam/opay/core/android/arch/IOScope;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->d:Lteam/opay/core/android/arch/IOScope;

    .line 31
    .line 32
    sget-object v0, Lteam/opay/core/android/arch/Resource;->d:Lteam/opay/core/android/arch/Resource$Companion;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/Resource$Companion;->c(Ljava/lang/Object;)Lteam/opay/core/android/arch/Resource;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->t()Landroidx/lifecycle/LiveData;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Llsd;

    .line 47
    .line 48
    invoke-direct {v1, p0, v0}, Llsd;-><init>(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Landroidx/lifecycle/LiveData;)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Lteam/opay/core/android/arch/SingleNetworkBoundResource$a;

    .line 52
    .line 53
    invoke-direct {v2, v1}, Lteam/opay/core/android/arch/SingleNetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static synthetic a(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->s(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Lteam/opay/core/android/arch/ApiResponse;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->q(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Lteam/opay/core/android/arch/ApiResponse;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lteam/opay/core/android/arch/ApiResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->p(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lteam/opay/core/android/arch/ApiResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->o(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Landroidx/lifecycle/LiveData;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->f(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Landroidx/lifecycle/LiveData;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final f(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Landroidx/lifecycle/LiveData;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->c(Landroidx/lifecycle/LiveData;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->z(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->n(Landroidx/lifecycle/LiveData;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 17
    .line 18
    new-instance v0, Lmsd;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lmsd;-><init>(Lteam/opay/core/android/arch/SingleNetworkBoundResource;)V

    .line 21
    .line 22
    .line 23
    new-instance p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource$a;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lteam/opay/core/android/arch/SingleNetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1, p0}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method public static final synthetic g(Lteam/opay/core/android/arch/SingleNetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->c:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lteam/opay/core/android/arch/SingleNetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lteam/opay/core/android/arch/SingleNetworkBoundResource;)Lteam/opay/core/android/arch/IOScope;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->d:Lteam/opay/core/android/arch/IOScope;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->v(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Lteam/opay/core/android/arch/Resource;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->y(Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final o(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/android/arch/Resource;->d:Lteam/opay/core/android/arch/Resource$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/Resource$Companion;->c(Ljava/lang/Object;)Lteam/opay/core/android/arch/Resource;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->y(Lteam/opay/core/android/arch/Resource;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final p(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lteam/opay/core/android/arch/ApiResponse;)Lkotlin/Unit;
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->c(Landroidx/lifecycle/LiveData;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MediatorLiveData;->c(Landroidx/lifecycle/LiveData;)V

    .line 9
    .line 10
    .line 11
    instance-of p1, p3, Lteam/opay/core/android/arch/ApiSuccessResponse;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->d:Lteam/opay/core/android/arch/IOScope;

    .line 17
    .line 18
    new-instance v4, Lteam/opay/core/android/arch/SingleNetworkBoundResource$fetchFromNetwork$2$1;

    .line 19
    .line 20
    invoke-direct {v4, p0, p3, v0}, Lteam/opay/core/android/arch/SingleNetworkBoundResource$fetchFromNetwork$2$1;-><init>(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Lteam/opay/core/android/arch/ApiResponse;Ljr2;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    instance-of p1, p3, Lteam/opay/core/android/arch/ApiEmptyResponse;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->d:Lteam/opay/core/android/arch/IOScope;

    .line 36
    .line 37
    new-instance v4, Lteam/opay/core/android/arch/SingleNetworkBoundResource$fetchFromNetwork$2$2;

    .line 38
    .line 39
    invoke-direct {v4, p0, v0}, Lteam/opay/core/android/arch/SingleNetworkBoundResource$fetchFromNetwork$2$2;-><init>(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Ljr2;)V

    .line 40
    .line 41
    .line 42
    const/4 v5, 0x3

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    instance-of p1, p3, Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    move-object p1, p3

    .line 55
    check-cast p1, Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 56
    .line 57
    invoke-virtual {p1}, Lteam/opay/core/android/arch/ApiErrorResponse;->c()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->u(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 65
    .line 66
    new-instance v0, Lpsd;

    .line 67
    .line 68
    invoke-direct {v0, p0, p3}, Lpsd;-><init>(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Lteam/opay/core/android/arch/ApiResponse;)V

    .line 69
    .line 70
    .line 71
    new-instance p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource$a;

    .line 72
    .line 73
    invoke-direct {p0, v0}, Lteam/opay/core/android/arch/SingleNetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 77
    .line 78
    .line 79
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 85
    .line 86
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public static final q(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Lteam/opay/core/android/arch/ApiResponse;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 7

    .line 1
    sget-object v0, Lteam/opay/core/android/arch/Resource;->d:Lteam/opay/core/android/arch/Resource$Companion;

    .line 2
    .line 3
    check-cast p1, Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 4
    .line 5
    invoke-virtual {p1}, Lteam/opay/core/android/arch/ApiErrorResponse;->d()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    const/16 v2, 0xa

    .line 12
    .line 13
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lteam/opay/core/android/arch/ApiError;

    .line 35
    .line 36
    new-instance v3, Lteam/opay/core/android/arch/ResourceError;

    .line 37
    .line 38
    invoke-virtual {v2}, Lteam/opay/core/android/arch/ApiError;->getType()Lteam/opay/core/android/arch/ErrorType;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v2}, Lteam/opay/core/android/arch/ApiError;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v2}, Lteam/opay/core/android/arch/ApiError;->getApiCode()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v2}, Lteam/opay/core/android/arch/ApiError;->getHttpCode()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-direct {v3, v4, v5, v6, v2}, Lteam/opay/core/android/arch/ResourceError;-><init>(Lteam/opay/core/android/arch/ErrorType;Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0, p2, v1}, Lteam/opay/core/android/arch/Resource$Companion;->a(Ljava/lang/Object;Ljava/util/List;)Lteam/opay/core/android/arch/Resource;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->y(Lteam/opay/core/android/arch/Resource;)V

    .line 66
    .line 67
    .line 68
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0
.end method

.method public static final s(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
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
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->y(Lteam/opay/core/android/arch/Resource;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static synthetic w(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Ljava/lang/Object;Ljr2;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x1

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->v(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: postSuccess"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method


# virtual methods
.method public final l()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LiveData<team.opay.core.android.arch.Resource<T of team.opay.core.android.arch.SingleNetworkBoundResource>>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public abstract m()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final n(Landroidx/lifecycle/LiveData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->m()Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 6
    .line 7
    new-instance v2, Lnsd;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lnsd;-><init>(Lteam/opay/core/android/arch/SingleNetworkBoundResource;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lteam/opay/core/android/arch/SingleNetworkBoundResource$a;

    .line 13
    .line 14
    invoke-direct {v3, v2}, Lteam/opay/core/android/arch/SingleNetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1, v3}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 21
    .line 22
    new-instance v2, Losd;

    .line 23
    .line 24
    invoke-direct {v2, p0, v0, p1}, Losd;-><init>(Lteam/opay/core/android/arch/SingleNetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lteam/opay/core/android/arch/SingleNetworkBoundResource$a;

    .line 28
    .line 29
    invoke-direct {p1, v2}, Lteam/opay/core/android/arch/SingleNetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, p1}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final r()Lteam/opay/core/android/arch/AppExecutors;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->a:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract t()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public u(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public final v(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lteam/opay/core/android/arch/SingleNetworkBoundResource$postSuccess$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, p0, v2}, Lteam/opay/core/android/arch/SingleNetworkBoundResource$postSuccess$2;-><init>(Ljava/lang/Object;Lteam/opay/core/android/arch/SingleNetworkBoundResource;Ljr2;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p2}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method

.method public abstract x(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final y(Lteam/opay/core/android/arch/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/android/arch/Resource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public abstract z(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
