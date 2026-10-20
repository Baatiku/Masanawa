.class public abstract Lteam/opay/core/http/arch/NetworkBoundAction;
.super Ljava/lang/Object;
.source "NetworkBoundAction.kt"


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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001b\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\t0\u0008H\'\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\r\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u000c\u001a\u00028\u0001H\'\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000f0\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R \u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000f0\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/core/http/arch/NetworkBoundAction;",
        "T",
        "R",
        "",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "appExecutors",
        "<init>",
        "(Lteam/opay/core/http/arch/AppExecutors;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/ApiResponse;",
        "d",
        "()Landroidx/lifecycle/LiveData;",
        "response",
        "e",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "Lteam/opay/core/http/arch/Resource;",
        "c",
        "a",
        "Lteam/opay/core/http/arch/AppExecutors;",
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
    iput-object p1, p0, Lteam/opay/core/http/arch/NetworkBoundAction;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 10
    .line 11
    new-instance p1, Landroidx/lifecycle/MediatorLiveData;

    .line 12
    .line 13
    invoke-direct {p1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lteam/opay/core/http/arch/NetworkBoundAction;->b:Landroidx/lifecycle/MediatorLiveData;

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
    invoke-virtual {p0}, Lteam/opay/core/http/arch/NetworkBoundAction;->d()Landroidx/lifecycle/LiveData;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lxk9;

    .line 33
    .line 34
    invoke-direct {v1, p0, v0}, Lxk9;-><init>(Lteam/opay/core/http/arch/NetworkBoundAction;Landroidx/lifecycle/LiveData;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lteam/opay/core/http/arch/NetworkBoundAction$a;

    .line 38
    .line 39
    invoke-direct {v2, v1}, Lteam/opay/core/http/arch/NetworkBoundAction$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static synthetic a(Lteam/opay/core/http/arch/NetworkBoundAction;Landroidx/lifecycle/LiveData;Lteam/opay/core/http/arch/ApiResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/http/arch/NetworkBoundAction;->b(Lteam/opay/core/http/arch/NetworkBoundAction;Landroidx/lifecycle/LiveData;Lteam/opay/core/http/arch/ApiResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Lteam/opay/core/http/arch/NetworkBoundAction;Landroidx/lifecycle/LiveData;Lteam/opay/core/http/arch/ApiResponse;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/arch/NetworkBoundAction;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->c(Landroidx/lifecycle/LiveData;)V

    .line 4
    .line 5
    .line 6
    instance-of p1, p2, Lteam/opay/core/http/arch/ApiSuccessResponse;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lteam/opay/core/http/arch/NetworkBoundAction;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 11
    .line 12
    sget-object v0, Lteam/opay/core/http/arch/Resource;->d:Lteam/opay/core/http/arch/Resource$Companion;

    .line 13
    .line 14
    check-cast p2, Lteam/opay/core/http/arch/ApiSuccessResponse;

    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/core/http/arch/ApiSuccessResponse;->c()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p2}, Lteam/opay/core/http/arch/NetworkBoundAction;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Lteam/opay/core/http/arch/Resource$Companion;->c(Ljava/lang/Object;)Lteam/opay/core/http/arch/Resource;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    instance-of p1, p2, Lteam/opay/core/http/arch/ApiEmptyResponse;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lteam/opay/core/http/arch/NetworkBoundAction;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 38
    .line 39
    sget-object p1, Lteam/opay/core/http/arch/Resource;->d:Lteam/opay/core/http/arch/Resource$Companion;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lteam/opay/core/http/arch/Resource$Companion;->c(Ljava/lang/Object;)Lteam/opay/core/http/arch/Resource;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    instance-of p1, p2, Lteam/opay/core/http/arch/ApiErrorResponse;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Lteam/opay/core/http/arch/NetworkBoundAction;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 54
    .line 55
    sget-object v1, Lteam/opay/core/http/arch/Resource;->d:Lteam/opay/core/http/arch/Resource$Companion;

    .line 56
    .line 57
    check-cast p2, Lteam/opay/core/http/arch/ApiErrorResponse;

    .line 58
    .line 59
    invoke-virtual {p2}, Lteam/opay/core/http/arch/ApiErrorResponse;->d()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Lteam/opay/core/http/arch/NetworkBoundAction;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_2
    invoke-virtual {p2}, Lteam/opay/core/http/arch/ApiErrorResponse;->c()Lteam/opay/core/http/arch/ApiError;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v1, v0, p0}, Lteam/opay/core/http/arch/Resource$Companion;->a(Ljava/lang/Object;Lteam/opay/core/http/arch/ApiError;)Lteam/opay/core/http/arch/Resource;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 84
    .line 85
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 86
    .line 87
    .line 88
    throw p0
.end method


# virtual methods
.method public final c()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lteam/opay/core/http/arch/NetworkBoundAction;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LiveData<team.opay.core.http.arch.Resource<T of team.opay.core.http.arch.NetworkBoundAction>>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public abstract d()Landroidx/lifecycle/LiveData;
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

.method public abstract e(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
