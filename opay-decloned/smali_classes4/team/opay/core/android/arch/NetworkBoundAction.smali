.class public abstract Lteam/opay/core/android/arch/NetworkBoundAction;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B\u0011\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0008J\u001b\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\n0\tH\'\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000e\u001a\u0004\u0018\u00018\u00002\u0006\u0010\r\u001a\u00028\u0001H\'\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00100\t\u00a2\u0006\u0004\u0008\u0011\u0010\u000cR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R \u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00100\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/core/android/arch/NetworkBoundAction;",
        "T",
        "R",
        "",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "<init>",
        "(Lteam/opay/core/android/arch/AppExecutors;)V",
        "()V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "d",
        "()Landroidx/lifecycle/LiveData;",
        "response",
        "e",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "Lteam/opay/core/android/arch/Resource;",
        "c",
        "a",
        "Lteam/opay/core/android/arch/AppExecutors;",
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lteam/opay/core/android/arch/NetworkBoundAction;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 3
    .param p1    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/core/android/arch/NetworkBoundAction;->a:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    new-instance p1, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object p1, p0, Lteam/opay/core/android/arch/NetworkBoundAction;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 3
    sget-object v0, Lteam/opay/core/android/arch/Resource;->d:Lteam/opay/core/android/arch/Resource$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/Resource$Companion;->c(Ljava/lang/Object;)Lteam/opay/core/android/arch/Resource;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lteam/opay/core/android/arch/NetworkBoundAction;->d()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 5
    new-instance v1, Lyk9;

    invoke-direct {v1, p0, v0}, Lyk9;-><init>(Lteam/opay/core/android/arch/NetworkBoundAction;Landroidx/lifecycle/LiveData;)V

    new-instance v2, Lteam/opay/core/android/arch/NetworkBoundAction$a;

    invoke-direct {v2, v1}, Lteam/opay/core/android/arch/NetworkBoundAction$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/core/android/arch/NetworkBoundAction;Landroidx/lifecycle/LiveData;Lteam/opay/core/android/arch/ApiResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/android/arch/NetworkBoundAction;->b(Lteam/opay/core/android/arch/NetworkBoundAction;Landroidx/lifecycle/LiveData;Lteam/opay/core/android/arch/ApiResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Lteam/opay/core/android/arch/NetworkBoundAction;Landroidx/lifecycle/LiveData;Lteam/opay/core/android/arch/ApiResponse;)Lkotlin/Unit;
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/NetworkBoundAction;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->c(Landroidx/lifecycle/LiveData;)V

    .line 4
    .line 5
    .line 6
    instance-of p1, p2, Lteam/opay/core/android/arch/ApiSuccessResponse;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lteam/opay/core/android/arch/NetworkBoundAction;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 11
    .line 12
    sget-object v0, Lteam/opay/core/android/arch/Resource;->d:Lteam/opay/core/android/arch/Resource$Companion;

    .line 13
    .line 14
    check-cast p2, Lteam/opay/core/android/arch/ApiSuccessResponse;

    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/core/android/arch/ApiSuccessResponse;->c()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p2}, Lteam/opay/core/android/arch/NetworkBoundAction;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/Resource$Companion;->d(Ljava/lang/Object;)Lteam/opay/core/android/arch/Resource;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    instance-of p1, p2, Lteam/opay/core/android/arch/ApiEmptyResponse;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lteam/opay/core/android/arch/NetworkBoundAction;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 38
    .line 39
    sget-object p1, Lteam/opay/core/android/arch/Resource;->d:Lteam/opay/core/android/arch/Resource$Companion;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lteam/opay/core/android/arch/Resource$Companion;->d(Ljava/lang/Object;)Lteam/opay/core/android/arch/Resource;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    instance-of p1, p2, Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iget-object p0, p0, Lteam/opay/core/android/arch/NetworkBoundAction;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 54
    .line 55
    sget-object p1, Lteam/opay/core/android/arch/Resource;->d:Lteam/opay/core/android/arch/Resource$Companion;

    .line 56
    .line 57
    check-cast p2, Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 58
    .line 59
    invoke-virtual {p2}, Lteam/opay/core/android/arch/ApiErrorResponse;->d()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    const/16 v2, 0xa

    .line 66
    .line 67
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lteam/opay/core/android/arch/ApiError;

    .line 89
    .line 90
    new-instance v3, Lteam/opay/core/android/arch/ResourceError;

    .line 91
    .line 92
    invoke-virtual {v2}, Lteam/opay/core/android/arch/ApiError;->getType()Lteam/opay/core/android/arch/ErrorType;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v2}, Lteam/opay/core/android/arch/ApiError;->getMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v2}, Lteam/opay/core/android/arch/ApiError;->getApiCode()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v2}, Lteam/opay/core/android/arch/ApiError;->getHttpCode()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-direct {v3, v4, v5, v6, v2}, Lteam/opay/core/android/arch/ResourceError;-><init>(Lteam/opay/core/android/arch/ErrorType;Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p1, v0, v1}, Lteam/opay/core/android/arch/Resource$Companion;->a(Ljava/lang/Object;Ljava/util/List;)Lteam/opay/core/android/arch/Resource;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 123
    .line 124
    return-object p0

    .line 125
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 126
    .line 127
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 128
    .line 129
    .line 130
    throw p0
.end method


# virtual methods
.method public final c()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lteam/opay/core/android/arch/NetworkBoundAction;->b:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LiveData<team.opay.core.android.arch.Resource<T of team.opay.core.android.arch.NetworkBoundAction>>"

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
            "Lteam/opay/core/android/arch/ApiResponse<",
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
