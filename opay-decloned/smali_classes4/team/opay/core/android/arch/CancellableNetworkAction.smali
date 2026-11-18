.class public final Lteam/opay/core/android/arch/CancellableNetworkAction;
.super Ljava/lang/Object;
.source "CancellableNetworkAction.kt"


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
        "\u0000d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0015\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000c\u001a\u00020\u000bH\u0082@\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001d\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001d\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001f\u0010\u001a\u001a\u0004\u0018\u00018\u0001\"\u0004\u0008\u0001\u0010\u00012\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ%\u0010\u001e\u001a\n \u001d*\u0004\u0018\u00018\u00018\u0001\"\u0004\u0008\u0001\u0010\u00012\u0006\u0010\u001c\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001bJ%\u0010\"\u001a\u00020!\"\u0004\u0008\u0001\u0010\u00012\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u001fH\u0002\u00a2\u0006\u0004\u0008\"\u0010#J$\u0010&\u001a\u000c\u0012\u0008\u0012\u0006\u0008\u0002\u0018\u00018\u00000\u00082\u0006\u0010%\u001a\u00020$H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010\'J1\u0010*\u001a\u00020\u000b\"\u0004\u0008\u0001\u0010\u00012\u0006\u0010\u0017\u001a\u00020\u00162\u0012\u0010)\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u001f0(H\u0002\u00a2\u0006\u0004\u0008*\u0010+R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R \u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00080.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0018\u00104\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103\u0082\u0002\u0004\n\u0002\u00089\u00a8\u00065"
    }
    d2 = {
        "Lteam/opay/core/android/arch/CancellableNetworkAction;",
        "T",
        "",
        "Lteam/opay/core/android/arch/RequestBuilder;",
        "builder",
        "<init>",
        "(Lteam/opay/core/android/arch/RequestBuilder;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "q",
        "()Landroidx/lifecycle/LiveData;",
        "",
        "s",
        "(Ljr2;)Ljava/lang/Object;",
        "data",
        "Lkotlinx/coroutines/l;",
        "p",
        "(Lteam/opay/core/android/arch/Resource;)Lkotlinx/coroutines/l;",
        "Lteam/opay/core/android/arch/ApiError;",
        "error",
        "o",
        "(Lteam/opay/core/android/arch/ApiError;)Lkotlinx/coroutines/l;",
        "",
        "url",
        "k",
        "(Ljava/lang/String;)Lteam/opay/core/android/arch/Resource;",
        "n",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "json",
        "kotlin.jvm.PlatformType",
        "l",
        "Lteam/opay/pay/api/HttpResponse;",
        "body",
        "",
        "j",
        "(Lteam/opay/pay/api/HttpResponse;)Z",
        "",
        "t",
        "m",
        "(Ljava/lang/Throwable;)Lteam/opay/core/android/arch/Resource;",
        "Lretrofit2/Response;",
        "response",
        "r",
        "(Ljava/lang/String;Lretrofit2/Response;)V",
        "a",
        "Lteam/opay/core/android/arch/RequestBuilder;",
        "Landroidx/lifecycle/MutableLiveData;",
        "b",
        "Landroidx/lifecycle/MutableLiveData;",
        "result",
        "c",
        "Ljava/lang/Object;",
        "cacheData",
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
.field public final a:Lteam/opay/core/android/arch/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/android/arch/RequestBuilder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/android/arch/RequestBuilder;)V
    .locals 1
    .param p1    # Lteam/opay/core/android/arch/RequestBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/android/arch/RequestBuilder<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "builder"

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
    iput-object p1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 10
    .line 11
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->b:Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic a(Lteam/opay/core/android/arch/CancellableNetworkAction;Ljava/lang/String;)Lteam/opay/core/android/arch/Resource;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->k(Ljava/lang/String;)Lteam/opay/core/android/arch/Resource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lteam/opay/core/android/arch/CancellableNetworkAction;)Lteam/opay/core/android/arch/RequestBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lteam/opay/core/android/arch/CancellableNetworkAction;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lteam/opay/core/android/arch/CancellableNetworkAction;Ljava/lang/Throwable;)Lteam/opay/core/android/arch/Resource;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->m(Ljava/lang/Throwable;)Lteam/opay/core/android/arch/Resource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lteam/opay/core/android/arch/CancellableNetworkAction;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->n(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/core/android/arch/CancellableNetworkAction;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->b:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lteam/opay/core/android/arch/CancellableNetworkAction;Lteam/opay/core/android/arch/Resource;)Lkotlinx/coroutines/l;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->p(Lteam/opay/core/android/arch/Resource;)Lkotlinx/coroutines/l;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lteam/opay/core/android/arch/CancellableNetworkAction;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic i(Lteam/opay/core/android/arch/CancellableNetworkAction;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->s(Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final j(Lteam/opay/pay/api/HttpResponse;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lteam/opay/pay/api/HttpResponse<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lql8;->a:Lql8;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lql8;->h(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/pay/api/HttpResponse;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v1, v0

    .line 28
    :goto_0
    sget-object v2, Lteam/opay/core/api/graphql/GraphqlErrorCode;->UNAUTHORIZED:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 29
    .line 30
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/GraphqlErrorCode;->getCode()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Lteam/opay/pay/api/HttpResponse;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_1
    sget-object p1, Lteam/opay/core/api/graphql/GraphqlErrorCode;->TOKEN_TIMEOUT:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 47
    .line 48
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GraphqlErrorCode;->getCode()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    :cond_2
    const/4 p1, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const/4 p1, 0x0

    .line 61
    :goto_1
    return p1
.end method

.method public final k(Ljava/lang/String;)Lteam/opay/core/android/arch/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lteam/opay/core/android/arch/Resource<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->j()Lretrofit2/Call;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lteam/opay/pay/api/HttpResponse;

    .line 16
    .line 17
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_5

    .line 23
    .line 24
    if-eqz v1, :cond_5

    .line 25
    .line 26
    invoke-virtual {v1}, Lteam/opay/pay/api/HttpResponse;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    const-string v2, ""

    .line 33
    .line 34
    :cond_0
    iget-object v4, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 35
    .line 36
    invoke-virtual {v4}, Lteam/opay/core/android/arch/RequestBuilder;->p()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_5

    .line 45
    .line 46
    iget-object v1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 47
    .line 48
    invoke-virtual {v1}, Lteam/opay/core/android/arch/RequestBuilder;->k()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 55
    .line 56
    invoke-virtual {v1}, Lteam/opay/core/android/arch/RequestBuilder;->o()Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    iget-object v1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 69
    .line 70
    invoke-virtual {v1}, Lteam/opay/core/android/arch/RequestBuilder;->h()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 84
    .line 85
    invoke-virtual {v1}, Lteam/opay/core/android/arch/RequestBuilder;->h()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :cond_2
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1, v0}, Lteam/opay/core/android/arch/CancellableNetworkAction;->r(Ljava/lang/String;Lretrofit2/Response;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    sget-object p1, Lteam/opay/core/android/arch/Resource;->d:Lteam/opay/core/android/arch/Resource$Companion;

    .line 111
    .line 112
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lteam/opay/pay/api/HttpResponse;

    .line 117
    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    invoke-virtual {v0}, Lteam/opay/pay/api/HttpResponse;->b()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    :cond_4
    invoke-virtual {p1, v3}, Lteam/opay/core/android/arch/Resource$Companion;->d(Ljava/lang/Object;)Lteam/opay/core/android/arch/Resource;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    goto :goto_5

    .line 129
    :cond_5
    invoke-virtual {p0, v1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->j(Lteam/opay/pay/api/HttpResponse;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_8

    .line 134
    .line 135
    new-instance p1, Lteam/opay/core/android/arch/ApiError;

    .line 136
    .line 137
    if-eqz v1, :cond_6

    .line 138
    .line 139
    invoke-virtual {v1}, Lteam/opay/pay/api/HttpResponse;->c()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    goto :goto_1

    .line 144
    :cond_6
    move-object v2, v3

    .line 145
    :goto_1
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v1, :cond_7

    .line 150
    .line 151
    invoke-virtual {v1}, Lteam/opay/pay/api/HttpResponse;->a()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    goto :goto_2

    .line 156
    :cond_7
    move-object v5, v3

    .line 157
    :goto_2
    invoke-direct {p1, v2, v4, v5}, Lteam/opay/core/android/arch/ApiError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->o(Lteam/opay/core/android/arch/ApiError;)Lkotlinx/coroutines/l;

    .line 161
    .line 162
    .line 163
    :cond_8
    sget-object p1, Lteam/opay/core/android/arch/Resource;->d:Lteam/opay/core/android/arch/Resource$Companion;

    .line 164
    .line 165
    iget-object v2, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->c:Ljava/lang/Object;

    .line 166
    .line 167
    if-eqz v1, :cond_9

    .line 168
    .line 169
    invoke-virtual {v1}, Lteam/opay/pay/api/HttpResponse;->c()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    if-eqz v4, :cond_9

    .line 174
    .line 175
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-nez v5, :cond_a

    .line 180
    .line 181
    const-string v4, "System busy. Please try again later."

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_9
    move-object v4, v3

    .line 185
    :cond_a
    :goto_3
    if-eqz v1, :cond_b

    .line 186
    .line 187
    invoke-virtual {v1}, Lteam/opay/pay/api/HttpResponse;->a()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    goto :goto_4

    .line 192
    :cond_b
    move-object v1, v3

    .line 193
    :goto_4
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    new-instance v5, Lteam/opay/core/android/arch/ResourceError;

    .line 198
    .line 199
    invoke-direct {v5, v3, v4, v1, v0}, Lteam/opay/core/android/arch/ResourceError;-><init>(Lteam/opay/core/android/arch/ErrorType;Ljava/lang/String;Ljava/lang/String;I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v2, v5}, Lteam/opay/core/android/arch/Resource$Companion;->b(Ljava/lang/Object;Lteam/opay/core/android/arch/ResourceError;)Lteam/opay/core/android/arch/Resource;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    :goto_5
    return-object p1
.end method

.method public final l(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->k()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Ljava/util/List;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lteam/opay/core/android/arch/CancellableNetworkAction$a;

    .line 16
    .line 17
    invoke-direct {v0}, Lteam/opay/core/android/arch/CancellableNetworkAction$a;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/google/gson/Gson;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 40
    .line 41
    invoke-virtual {v1}, Lteam/opay/core/android/arch/RequestBuilder;->k()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_0
    return-object p1
.end method

.method public final m(Ljava/lang/Throwable;)Lteam/opay/core/android/arch/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lteam/opay/core/android/arch/Resource<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/android/arch/Resource;->d:Lteam/opay/core/android/arch/Resource$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->c:Ljava/lang/Object;

    .line 4
    .line 5
    new-instance v2, Lteam/opay/core/android/arch/ResourceError;

    .line 6
    .line 7
    invoke-static {p1}, Lteam/opay/core/android/arch/a;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {p1}, Lteam/opay/core/android/arch/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/16 v4, -0x3ec

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-direct {v2, v5, v3, p1, v4}, Lteam/opay/core/android/arch/ResourceError;-><init>(Lteam/opay/core/android/arch/ErrorType;Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/android/arch/Resource$Companion;->b(Ljava/lang/Object;Lteam/opay/core/android/arch/ResourceError;)Lteam/opay/core/android/arch/Resource;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final n(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lqk9;->a:Lqk9;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lqk9;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->l(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_1
    :goto_0
    iget-object p1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->l()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 v0, 0x0

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_2
    :try_start_0
    sget-object p1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 36
    .line 37
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 54
    .line 55
    invoke-virtual {v1}, Lteam/opay/core/android/arch/RequestBuilder;->l()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v1, "open(...)"

    .line 64
    .line 65
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    new-array v1, v1, [B

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 78
    .line 79
    .line 80
    new-instance p1, Ljava/lang/String;

    .line 81
    .line 82
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 83
    .line 84
    invoke-direct {p1, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->l(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :goto_1
    return-object v0
.end method

.method public final o(Lteam/opay/core/android/arch/ApiError;)Lkotlinx/coroutines/l;
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->q()Landroidx/lifecycle/AndroidViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v4, Lteam/opay/core/android/arch/CancellableNetworkAction$postAuthError$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {v4, p1, v0}, Lteam/opay/core/android/arch/CancellableNetworkAction$postAuthError$1;-><init>(Lteam/opay/core/android/arch/ApiError;Ljr2;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public final p(Lteam/opay/core/android/arch/Resource;)Lkotlinx/coroutines/l;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/android/arch/Resource<",
            "+TT;>;)",
            "Lkotlinx/coroutines/l;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->q()Landroidx/lifecycle/AndroidViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v4, Lteam/opay/core/android/arch/CancellableNetworkAction$postData$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {v4, p0, p1, v0}, Lteam/opay/core/android/arch/CancellableNetworkAction$postData$1;-><init>(Lteam/opay/core/android/arch/CancellableNetworkAction;Lteam/opay/core/android/arch/Resource;Ljr2;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public final q()Landroidx/lifecycle/LiveData;
    .locals 8
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
    sget-object v0, Lkotlinx/coroutines/e;->o0:Lkotlinx/coroutines/e$a;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/core/android/arch/CancellableNetworkAction$request$$inlined$CoroutineExceptionHandler$1;

    .line 4
    .line 5
    invoke-direct {v1, v0, p0}, Lteam/opay/core/android/arch/CancellableNetworkAction$request$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/e$a;Lteam/opay/core/android/arch/CancellableNetworkAction;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 9
    .line 10
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->q()Landroidx/lifecycle/AndroidViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    new-instance v5, Lteam/opay/core/android/arch/CancellableNetworkAction$request$1;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-direct {v5, p0, v0}, Lteam/opay/core/android/arch/CancellableNetworkAction$request$1;-><init>(Lteam/opay/core/android/arch/CancellableNetworkAction;Ljr2;)V

    .line 30
    .line 31
    .line 32
    const/4 v6, 0x2

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->b:Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    return-object v0
.end method

.method public final r(Ljava/lang/String;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lretrofit2/Response<",
            "Lteam/opay/pay/api/HttpResponse<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lteam/opay/pay/api/HttpResponse;

    .line 6
    .line 7
    if-eqz p2, :cond_4

    .line 8
    .line 9
    invoke-virtual {p2}, Lteam/opay/pay/api/HttpResponse;->b()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 18
    .line 19
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->k()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-class v1, Ljava/util/List;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    check-cast p2, Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v2, Lteam/opay/core/android/arch/CancellableNetworkAction$c;

    .line 53
    .line 54
    invoke-direct {v2}, Lteam/opay/core/android/arch/CancellableNetworkAction$c;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    new-instance v3, Lcom/google/gson/Gson;

    .line 62
    .line 63
    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance p2, Lorg/json/JSONArray;

    .line 75
    .line 76
    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    new-instance v0, Lteam/opay/core/android/arch/CancellableNetworkAction$d;

    .line 105
    .line 106
    invoke-direct {v0}, Lteam/opay/core/android/arch/CancellableNetworkAction$d;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-instance v1, Lcom/google/gson/Gson;

    .line 114
    .line 115
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    :goto_2
    sget-object v0, Lqk9;->a:Lqk9;

    .line 123
    .line 124
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p1, p2}, Lqk9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Lteam/opay/core/android/arch/CancellableNetworkAction;->a:Lteam/opay/core/android/arch/RequestBuilder;

    .line 131
    .line 132
    invoke-virtual {p2}, Lteam/opay/core/android/arch/RequestBuilder;->m()Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    if-eqz p2, :cond_4

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Lqk9;->j(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_3
    return-void
.end method

.method public final s(Ljr2;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Ljr2;)Ljr2;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Ljr2;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->B()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lteam/opay/core/android/arch/CancellableNetworkAction$e;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lteam/opay/core/android/arch/CancellableNetworkAction$e;-><init>(Lteam/opay/core/android/arch/CancellableNetworkAction;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lzv1;->t(Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lteam/opay/core/android/arch/CancellableNetworkAction;->b(Lteam/opay/core/android/arch/CancellableNetworkAction;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lteam/opay/core/android/arch/RequestBuilder;->j()Lretrofit2/Call;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {p0}, Lteam/opay/core/android/arch/CancellableNetworkAction;->b(Lteam/opay/core/android/arch/CancellableNetworkAction;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lteam/opay/core/android/arch/RequestBuilder;->j()Lretrofit2/Call;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v3}, Lretrofit2/Call;->request()Lokhttp3/Request;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {p0}, Lteam/opay/core/android/arch/CancellableNetworkAction;->b(Lteam/opay/core/android/arch/CancellableNetworkAction;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lteam/opay/core/android/arch/RequestBuilder;->k()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    invoke-static {p0}, Lteam/opay/core/android/arch/CancellableNetworkAction;->b(Lteam/opay/core/android/arch/CancellableNetworkAction;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3}, Lteam/opay/core/android/arch/RequestBuilder;->n()Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v2}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_2

    .line 104
    .line 105
    invoke-static {p0}, Lteam/opay/core/android/arch/CancellableNetworkAction;->b(Lteam/opay/core/android/arch/CancellableNetworkAction;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Lteam/opay/core/android/arch/RequestBuilder;->h()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-eqz v3, :cond_1

    .line 114
    .line 115
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_0

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    invoke-static {p0}, Lteam/opay/core/android/arch/CancellableNetworkAction;->b(Lteam/opay/core/android/arch/CancellableNetworkAction;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v3}, Lteam/opay/core/android/arch/RequestBuilder;->h()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    goto :goto_1

    .line 146
    :cond_1
    :goto_0
    move-object v3, v1

    .line 147
    :goto_1
    invoke-static {p0, v3}, Lteam/opay/core/android/arch/CancellableNetworkAction;->e(Lteam/opay/core/android/arch/CancellableNetworkAction;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-static {p0, v3}, Lteam/opay/core/android/arch/CancellableNetworkAction;->h(Lteam/opay/core/android/arch/CancellableNetworkAction;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_2
    invoke-static {p0}, Lteam/opay/core/android/arch/CancellableNetworkAction;->b(Lteam/opay/core/android/arch/CancellableNetworkAction;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v3}, Lteam/opay/core/android/arch/RequestBuilder;->i()Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-static {v2}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_3

    .line 171
    .line 172
    sget-object v1, Lteam/opay/core/android/arch/Resource;->d:Lteam/opay/core/android/arch/Resource$Companion;

    .line 173
    .line 174
    invoke-static {p0}, Lteam/opay/core/android/arch/CancellableNetworkAction;->c(Lteam/opay/core/android/arch/CancellableNetworkAction;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Lteam/opay/core/android/arch/Resource$Companion;->d(Ljava/lang/Object;)Lteam/opay/core/android/arch/Resource;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {p0, v1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->g(Lteam/opay/core/android/arch/CancellableNetworkAction;Lteam/opay/core/android/arch/Resource;)Lkotlinx/coroutines/l;

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_3
    sget-object v2, Lteam/opay/core/android/arch/Resource;->d:Lteam/opay/core/android/arch/Resource$Companion;

    .line 187
    .line 188
    invoke-static {p0}, Lteam/opay/core/android/arch/CancellableNetworkAction;->c(Lteam/opay/core/android/arch/CancellableNetworkAction;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v2, v3}, Lteam/opay/core/android/arch/Resource$Companion;->c(Ljava/lang/Object;)Lteam/opay/core/android/arch/Resource;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-static {p0, v3}, Lteam/opay/core/android/arch/CancellableNetworkAction;->g(Lteam/opay/core/android/arch/CancellableNetworkAction;Lteam/opay/core/android/arch/Resource;)Lkotlinx/coroutines/l;

    .line 197
    .line 198
    .line 199
    invoke-static {p0}, Lteam/opay/core/android/arch/CancellableNetworkAction;->b(Lteam/opay/core/android/arch/CancellableNetworkAction;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v3}, Lteam/opay/core/android/arch/RequestBuilder;->k()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    if-eqz v3, :cond_4

    .line 208
    .line 209
    invoke-static {p0}, Lteam/opay/core/android/arch/CancellableNetworkAction;->c(Lteam/opay/core/android/arch/CancellableNetworkAction;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    if-eqz v3, :cond_4

    .line 214
    .line 215
    invoke-static {p0}, Lteam/opay/core/android/arch/CancellableNetworkAction;->b(Lteam/opay/core/android/arch/CancellableNetworkAction;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-virtual {v3}, Lteam/opay/core/android/arch/RequestBuilder;->m()Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    if-eqz v3, :cond_4

    .line 224
    .line 225
    sget-object v3, Lqk9;->a:Lqk9;

    .line 226
    .line 227
    invoke-static {p0}, Lteam/opay/core/android/arch/CancellableNetworkAction;->b(Lteam/opay/core/android/arch/CancellableNetworkAction;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v4}, Lteam/opay/core/android/arch/RequestBuilder;->m()Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    invoke-virtual {v3, v1, v4}, Lqk9;->b(Ljava/lang/String;I)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-nez v3, :cond_4

    .line 247
    .line 248
    invoke-static {p0}, Lteam/opay/core/android/arch/CancellableNetworkAction;->f(Lteam/opay/core/android/arch/CancellableNetworkAction;)Landroidx/lifecycle/MutableLiveData;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-static {p0}, Lteam/opay/core/android/arch/CancellableNetworkAction;->c(Lteam/opay/core/android/arch/CancellableNetworkAction;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v2, v3}, Lteam/opay/core/android/arch/Resource$Companion;->d(Ljava/lang/Object;)Lteam/opay/core/android/arch/Resource;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_4
    invoke-static {p0, v1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->a(Lteam/opay/core/android/arch/CancellableNetworkAction;Ljava/lang/String;)Lteam/opay/core/android/arch/Resource;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-static {p0, v1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->g(Lteam/opay/core/android/arch/CancellableNetworkAction;Lteam/opay/core/android/arch/Resource;)Lkotlinx/coroutines/l;

    .line 269
    .line 270
    .line 271
    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 272
    .line 273
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 274
    .line 275
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-interface {v0, v1}, Ljr2;->resumeWith(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    :goto_3
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->r()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    if-ne v0, v1, :cond_5

    .line 291
    .line 292
    invoke-static {p1}, Lp33;->c(Ljr2;)V

    .line 293
    .line 294
    .line 295
    :cond_5
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    if-ne v0, p1, :cond_6

    .line 300
    .line 301
    return-object v0

    .line 302
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 303
    .line 304
    return-object p1
.end method
