.class public abstract Lteam/opay/core/http/arch/NetworkBoundResource;
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
        "Lteam/opay/core/http/arch/NetworkBoundResource;",
        "T",
        "R",
        "",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "appExecutors",
        "<init>",
        "(Lteam/opay/core/http/arch/AppExecutors;)V",
        "item",
        "",
        "t",
        "(Ljava/lang/Object;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/Resource;",
        "j",
        "()Landroidx/lifecycle/LiveData;",
        "x",
        "data",
        "",
        "z",
        "(Ljava/lang/Object;)Z",
        "s",
        "Lteam/opay/core/http/arch/ApiResponse;",
        "k",
        "newValue",
        "y",
        "(Lteam/opay/core/http/arch/Resource;)V",
        "u",
        "()V",
        "dbSource",
        "l",
        "(Landroidx/lifecycle/LiveData;)V",
        "a",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "q",
        "()Lteam/opay/core/http/arch/AppExecutors;",
        "Landroidx/lifecycle/MediatorLiveData;",
        "b",
        "Landroidx/lifecycle/MediatorLiveData;",
        "result",
        "common-http_release"
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
.field public final a:Lteam/opay/core/http/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/http/arch/AppExecutors;)V
    .locals 3
    .param p1    # Lteam/opay/core/http/arch/AppExecutors;
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
    iput-object p1, p0, Lteam/opay/core/http/arch/NetworkBoundResource;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 10
    .line 11
    new-instance p1, Landroidx/lifecycle/MediatorLiveData;

    .line 12
    .line 13
    invoke-direct {p1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lteam/opay/core/http/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 17
    .line 18
    sget-object v0, Lteam/opay/core/http/arch/Resource;->d:Lteam/opay/core/http/arch/Resource$Companion;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lteam/opay/core/http/arch/Resource$Companion;->b(Ljava/lang/Object;)Lteam/opay/core/http/arch/Resource;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/core/http/arch/NetworkBoundResource;->s()Landroidx/lifecycle/LiveData;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lzk9;

    .line 33
    .line 34
    invoke-direct {v1, p0, v0}, Lzk9;-><init>(Lteam/opay/core/http/arch/NetworkBoundResource;Landroidx/lifecycle/LiveData;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lteam/opay/core/http/arch/NetworkBoundResource$a;

    .line 38
    .line 39
    invoke-direct {v2, v1}, Lteam/opay/core/http/arch/NetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static synthetic a(Lteam/opay/core/http/arch/NetworkBoundResource;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/http/arch/NetworkBoundResource;->v(Lteam/opay/core/http/arch/NetworkBoundResource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/core/http/arch/NetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lteam/opay/core/http/arch/ApiResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/core/http/arch/NetworkBoundResource;->n(Lteam/opay/core/http/arch/NetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lteam/opay/core/http/arch/ApiResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/core/http/arch/NetworkBoundResource;Landroidx/lifecycle/LiveData;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/http/arch/NetworkBoundResource;->i(Lteam/opay/core/http/arch/NetworkBoundResource;Landroidx/lifecycle/LiveData;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/core/http/arch/NetworkBoundResource;Lteam/opay/core/http/arch/ApiResponse;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/http/arch/NetworkBoundResource;->p(Lteam/opay/core/http/arch/NetworkBoundResource;Lteam/opay/core/http/arch/ApiResponse;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/core/http/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/http/arch/NetworkBoundResource;->w(Lteam/opay/core/http/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/core/http/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/http/arch/NetworkBoundResource;->m(Lteam/opay/core/http/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/core/http/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/http/arch/NetworkBoundResource;->r(Lteam/opay/core/http/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lteam/opay/core/http/arch/NetworkBoundResource;Lteam/opay/core/http/arch/ApiResponse;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/http/arch/NetworkBoundResource;->o(Lteam/opay/core/http/arch/NetworkBoundResource;Lteam/opay/core/http/arch/ApiResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final i(Lteam/opay/core/http/arch/NetworkBoundResource;Landroidx/lifecycle/LiveData;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->c(Landroidx/lifecycle/LiveData;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lteam/opay/core/http/arch/NetworkBoundResource;->z(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lteam/opay/core/http/arch/NetworkBoundResource;->l(Landroidx/lifecycle/LiveData;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lteam/opay/core/http/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 17
    .line 18
    new-instance v0, Lbl9;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lbl9;-><init>(Lteam/opay/core/http/arch/NetworkBoundResource;)V

    .line 21
    .line 22
    .line 23
    new-instance p0, Lteam/opay/core/http/arch/NetworkBoundResource$a;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lteam/opay/core/http/arch/NetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

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

.method public static final m(Lteam/opay/core/http/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/http/arch/Resource;->d:Lteam/opay/core/http/arch/Resource$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/core/http/arch/Resource$Companion;->b(Ljava/lang/Object;)Lteam/opay/core/http/arch/Resource;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/core/http/arch/NetworkBoundResource;->y(Lteam/opay/core/http/arch/Resource;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final n(Lteam/opay/core/http/arch/NetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lteam/opay/core/http/arch/ApiResponse;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->c(Landroidx/lifecycle/LiveData;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/core/http/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MediatorLiveData;->c(Landroidx/lifecycle/LiveData;)V

    .line 9
    .line 10
    .line 11
    instance-of p1, p3, Lteam/opay/core/http/arch/ApiSuccessResponse;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lteam/opay/core/http/arch/NetworkBoundResource;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/core/http/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p2, Lhl9;

    .line 22
    .line 23
    invoke-direct {p2, p0, p3}, Lhl9;-><init>(Lteam/opay/core/http/arch/NetworkBoundResource;Lteam/opay/core/http/arch/ApiResponse;)V

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
    instance-of p1, p3, Lteam/opay/core/http/arch/ApiEmptyResponse;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/core/http/arch/NetworkBoundResource;->u()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    instance-of p1, p3, Lteam/opay/core/http/arch/ApiErrorResponse;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    move-object p1, p3

    .line 43
    check-cast p1, Lteam/opay/core/http/arch/ApiErrorResponse;

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiErrorResponse;->d()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lteam/opay/core/http/arch/NetworkBoundResource;->t(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lteam/opay/core/http/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 53
    .line 54
    new-instance v0, Ljl9;

    .line 55
    .line 56
    invoke-direct {v0, p0, p3}, Ljl9;-><init>(Lteam/opay/core/http/arch/NetworkBoundResource;Lteam/opay/core/http/arch/ApiResponse;)V

    .line 57
    .line 58
    .line 59
    new-instance p0, Lteam/opay/core/http/arch/NetworkBoundResource$a;

    .line 60
    .line 61
    invoke-direct {p0, v0}, Lteam/opay/core/http/arch/NetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 71
    .line 72
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 73
    .line 74
    .line 75
    throw p0
.end method

.method public static final o(Lteam/opay/core/http/arch/NetworkBoundResource;Lteam/opay/core/http/arch/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/http/arch/ApiSuccessResponse;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiSuccessResponse;->c()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/core/http/arch/NetworkBoundResource;->x(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/core/http/arch/NetworkBoundResource;->u()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final p(Lteam/opay/core/http/arch/NetworkBoundResource;Lteam/opay/core/http/arch/ApiResponse;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/http/arch/Resource;->d:Lteam/opay/core/http/arch/Resource$Companion;

    .line 2
    .line 3
    check-cast p1, Lteam/opay/core/http/arch/ApiErrorResponse;

    .line 4
    .line 5
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiErrorResponse;->c()Lteam/opay/core/http/arch/ApiError;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p2, p1}, Lteam/opay/core/http/arch/Resource$Companion;->a(Ljava/lang/Object;Lteam/opay/core/http/arch/ApiError;)Lteam/opay/core/http/arch/Resource;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lteam/opay/core/http/arch/NetworkBoundResource;->y(Lteam/opay/core/http/arch/Resource;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final r(Lteam/opay/core/http/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/http/arch/Resource;->d:Lteam/opay/core/http/arch/Resource$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/core/http/arch/Resource$Companion;->c(Ljava/lang/Object;)Lteam/opay/core/http/arch/Resource;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/core/http/arch/NetworkBoundResource;->y(Lteam/opay/core/http/arch/Resource;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final v(Lteam/opay/core/http/arch/NetworkBoundResource;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/http/arch/NetworkBoundResource;->s()Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lnl9;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lnl9;-><init>(Lteam/opay/core/http/arch/NetworkBoundResource;)V

    .line 10
    .line 11
    .line 12
    new-instance p0, Lteam/opay/core/http/arch/NetworkBoundResource$a;

    .line 13
    .line 14
    invoke-direct {p0, v2}, Lteam/opay/core/http/arch/NetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final w(Lteam/opay/core/http/arch/NetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/http/arch/Resource;->d:Lteam/opay/core/http/arch/Resource$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/core/http/arch/Resource$Companion;->c(Ljava/lang/Object;)Lteam/opay/core/http/arch/Resource;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/core/http/arch/NetworkBoundResource;->y(Lteam/opay/core/http/arch/Resource;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public final j()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LiveData<team.opay.core.http.arch.Resource<T of team.opay.core.http.arch.NetworkBoundResource>>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public abstract k()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/ApiResponse<",
            "TR;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final l(Landroidx/lifecycle/LiveData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/http/arch/NetworkBoundResource;->k()Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lteam/opay/core/http/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 6
    .line 7
    new-instance v2, Ldl9;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Ldl9;-><init>(Lteam/opay/core/http/arch/NetworkBoundResource;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lteam/opay/core/http/arch/NetworkBoundResource$a;

    .line 13
    .line 14
    invoke-direct {v3, v2}, Lteam/opay/core/http/arch/NetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1, v3}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lteam/opay/core/http/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 21
    .line 22
    new-instance v2, Lfl9;

    .line 23
    .line 24
    invoke-direct {v2, p0, v0, p1}, Lfl9;-><init>(Lteam/opay/core/http/arch/NetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lteam/opay/core/http/arch/NetworkBoundResource$a;

    .line 28
    .line 29
    invoke-direct {p1, v2}, Lteam/opay/core/http/arch/NetworkBoundResource$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, p1}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final q()Lteam/opay/core/http/arch/AppExecutors;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/arch/NetworkBoundResource;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract s()Landroidx/lifecycle/LiveData;
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

.method public t(Ljava/lang/Object;)V
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

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/arch/NetworkBoundResource;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/http/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lll9;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lll9;-><init>(Lteam/opay/core/http/arch/NetworkBoundResource;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public abstract x(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method

.method public final y(Lteam/opay/core/http/arch/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/arch/Resource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

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
    iget-object v0, p0, Lteam/opay/core/http/arch/NetworkBoundResource;->b:Landroidx/lifecycle/MediatorLiveData;

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
