.class public abstract Lteam/opay/core/android/arch/NetworkBoundResource;
.super Ljava/lang/Object;
.source "NetworkBoundResource.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B\u0011\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00018\u0001H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\r0\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00028\u0001H%\u00a2\u0006\u0004\u0008\u0010\u0010\u000bJ\u0019\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00018\u0000H%\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cH%\u00a2\u0006\u0004\u0008\u0015\u0010\u000fJ\u001b\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00160\u000cH%\u00a2\u0006\u0004\u0008\u0017\u0010\u000fJ\u001d\u0010\u0019\u001a\u00020\t2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\rH\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001d\u0010\u001e\u001a\u00020\t2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R \u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\r0$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/core/android/arch/NetworkBoundResource;",
        "T",
        "R",
        "",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "<init>",
        "(Lteam/opay/core/android/arch/AppExecutors;)V",
        "item",
        "",
        "v",
        "(Ljava/lang/Object;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "k",
        "()Landroidx/lifecycle/LiveData;",
        "z",
        "data",
        "",
        "B",
        "(Ljava/lang/Object;)Z",
        "u",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "l",
        "newValue",
        "A",
        "(Lteam/opay/core/android/arch/Resource;)V",
        "w",
        "()V",
        "dbSource",
        "m",
        "(Landroidx/lifecycle/LiveData;)V",
        "a",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "s",
        "()Lteam/opay/core/android/arch/AppExecutors;",
        "Landroidx/lifecycle/MediatorLiveData;",
        "b",
        "Landroidx/lifecycle/MediatorLiveData;",
        "result",
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
    iput-object p1, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->a:Lteam/opay/core/android/arch/AppExecutors;

    .line 10
    .line 11
    new-instance p1, Landroidx/lifecycle/MediatorLiveData;

    .line 12
    .line 13
    invoke-direct {p1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 17
    .line 18
    sget-object v0, Lteam/opay/core/android/arch/Resource;->d:Lteam/opay/core/android/arch/Resource$Companion;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/Resource$Companion;->c(Ljava/lang/Object;)Lteam/opay/core/android/arch/Resource;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/core/android/arch/NetworkBoundResource;->u()Landroidx/lifecycle/LiveData;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lal9;

    .line 33
    .line 34
    invoke-direct {v1, p0, v0}, Lal9;-><init>(Lteam/opay/core/android/arch/NetworkBoundResource;Landroidx/lifecycle/LiveData;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lteam/opay/core/android/arch/NetworkBoundResource$a;

    .line 38
    .line 39
    invoke-direct {v2, v1}, Lteam/opay/core/android/arch/NetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static synthetic a(Lteam/opay/core/android/arch/NetworkBoundResource;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/android/arch/NetworkBoundResource;->q(Lteam/opay/core/android/arch/NetworkBoundResource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/core/android/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/android/arch/NetworkBoundResource;->t(Lteam/opay/core/android/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/core/android/arch/NetworkBoundResource;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/android/arch/NetworkBoundResource;->x(Lteam/opay/core/android/arch/NetworkBoundResource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lteam/opay/core/android/arch/NetworkBoundResource;Landroidx/lifecycle/LiveData;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/android/arch/NetworkBoundResource;->j(Lteam/opay/core/android/arch/NetworkBoundResource;Landroidx/lifecycle/LiveData;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/core/android/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/android/arch/NetworkBoundResource;->y(Lteam/opay/core/android/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/core/android/arch/NetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lteam/opay/core/android/arch/ApiResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/core/android/arch/NetworkBoundResource;->o(Lteam/opay/core/android/arch/NetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lteam/opay/core/android/arch/ApiResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/core/android/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/android/arch/NetworkBoundResource;->n(Lteam/opay/core/android/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lteam/opay/core/android/arch/NetworkBoundResource;Lteam/opay/core/android/arch/ApiResponse;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/android/arch/NetworkBoundResource;->p(Lteam/opay/core/android/arch/NetworkBoundResource;Lteam/opay/core/android/arch/ApiResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lteam/opay/core/android/arch/NetworkBoundResource;Lteam/opay/core/android/arch/ApiResponse;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/android/arch/NetworkBoundResource;->r(Lteam/opay/core/android/arch/NetworkBoundResource;Lteam/opay/core/android/arch/ApiResponse;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final j(Lteam/opay/core/android/arch/NetworkBoundResource;Landroidx/lifecycle/LiveData;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->c(Landroidx/lifecycle/LiveData;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lteam/opay/core/android/arch/NetworkBoundResource;->B(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/NetworkBoundResource;->m(Landroidx/lifecycle/LiveData;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 17
    .line 18
    new-instance v0, Lcl9;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcl9;-><init>(Lteam/opay/core/android/arch/NetworkBoundResource;)V

    .line 21
    .line 22
    .line 23
    new-instance p0, Lteam/opay/core/android/arch/NetworkBoundResource$a;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lteam/opay/core/android/arch/NetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

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

.method public static final n(Lteam/opay/core/android/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
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
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/NetworkBoundResource;->A(Lteam/opay/core/android/arch/Resource;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final o(Lteam/opay/core/android/arch/NetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lteam/opay/core/android/arch/ApiResponse;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->c(Landroidx/lifecycle/LiveData;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MediatorLiveData;->c(Landroidx/lifecycle/LiveData;)V

    .line 9
    .line 10
    .line 11
    instance-of p1, p3, Lteam/opay/core/android/arch/ApiSuccessResponse;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->a:Lteam/opay/core/android/arch/AppExecutors;

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p2, Lil9;

    .line 22
    .line 23
    invoke-direct {p2, p0, p3}, Lil9;-><init>(Lteam/opay/core/android/arch/NetworkBoundResource;Lteam/opay/core/android/arch/ApiResponse;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    instance-of p1, p3, Lteam/opay/core/android/arch/ApiEmptyResponse;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->a:Lteam/opay/core/android/arch/AppExecutors;

    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance p2, Lkl9;

    .line 41
    .line 42
    invoke-direct {p2, p0}, Lkl9;-><init>(Lteam/opay/core/android/arch/NetworkBoundResource;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    instance-of p1, p3, Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    move-object p1, p3

    .line 54
    check-cast p1, Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 55
    .line 56
    invoke-virtual {p1}, Lteam/opay/core/android/arch/ApiErrorResponse;->c()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/NetworkBoundResource;->v(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 64
    .line 65
    new-instance v0, Lml9;

    .line 66
    .line 67
    invoke-direct {v0, p0, p3}, Lml9;-><init>(Lteam/opay/core/android/arch/NetworkBoundResource;Lteam/opay/core/android/arch/ApiResponse;)V

    .line 68
    .line 69
    .line 70
    new-instance p0, Lteam/opay/core/android/arch/NetworkBoundResource$a;

    .line 71
    .line 72
    invoke-direct {p0, v0}, Lteam/opay/core/android/arch/NetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 82
    .line 83
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 84
    .line 85
    .line 86
    throw p0
.end method

.method public static final p(Lteam/opay/core/android/arch/NetworkBoundResource;Lteam/opay/core/android/arch/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/android/arch/ApiSuccessResponse;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/ApiSuccessResponse;->c()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/NetworkBoundResource;->z(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/core/android/arch/NetworkBoundResource;->w()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final q(Lteam/opay/core/android/arch/NetworkBoundResource;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/arch/NetworkBoundResource;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final r(Lteam/opay/core/android/arch/NetworkBoundResource;Lteam/opay/core/android/arch/ApiResponse;Ljava/lang/Object;)Lkotlin/Unit;
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
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/NetworkBoundResource;->A(Lteam/opay/core/android/arch/Resource;)V

    .line 66
    .line 67
    .line 68
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0
.end method

.method public static final t(Lteam/opay/core/android/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
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
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/NetworkBoundResource;->A(Lteam/opay/core/android/arch/Resource;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final x(Lteam/opay/core/android/arch/NetworkBoundResource;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/android/arch/NetworkBoundResource;->u()Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lpl9;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lpl9;-><init>(Lteam/opay/core/android/arch/NetworkBoundResource;)V

    .line 10
    .line 11
    .line 12
    new-instance p0, Lteam/opay/core/android/arch/NetworkBoundResource$a;

    .line 13
    .line 14
    invoke-direct {p0, v2}, Lteam/opay/core/android/arch/NetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final y(Lteam/opay/core/android/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
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
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/NetworkBoundResource;->A(Lteam/opay/core/android/arch/Resource;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public final A(Lteam/opay/core/android/arch/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/android/arch/Resource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

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
    iget-object v0, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public abstract B(Ljava/lang/Object;)Z
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

.method public final k()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LiveData<team.opay.core.android.arch.Resource<T of team.opay.core.android.arch.NetworkBoundResource>>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public abstract l()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "TR;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final m(Landroidx/lifecycle/LiveData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/arch/NetworkBoundResource;->l()Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 6
    .line 7
    new-instance v2, Lel9;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lel9;-><init>(Lteam/opay/core/android/arch/NetworkBoundResource;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lteam/opay/core/android/arch/NetworkBoundResource$a;

    .line 13
    .line 14
    invoke-direct {v3, v2}, Lteam/opay/core/android/arch/NetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1, v3}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 21
    .line 22
    new-instance v2, Lgl9;

    .line 23
    .line 24
    invoke-direct {v2, p0, v0, p1}, Lgl9;-><init>(Lteam/opay/core/android/arch/NetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lteam/opay/core/android/arch/NetworkBoundResource$a;

    .line 28
    .line 29
    invoke-direct {p1, v2}, Lteam/opay/core/android/arch/NetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, p1}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final s()Lteam/opay/core/android/arch/AppExecutors;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->a:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract u()Landroidx/lifecycle/LiveData;
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

.method public v(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/NetworkBoundResource;->a:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lol9;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lol9;-><init>(Lteam/opay/core/android/arch/NetworkBoundResource;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public abstract z(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method
