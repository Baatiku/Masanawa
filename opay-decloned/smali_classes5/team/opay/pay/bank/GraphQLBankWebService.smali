.class public final Lteam/opay/pay/bank/GraphQLBankWebService;
.super Ljava/lang/Object;
.source "BankWebService.kt"

# interfaces
.implements Lxl0;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J/\u0010\u000f\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\n2\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J/\u0010\u0011\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\n2\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J#\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00150\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J-\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\t\u001a\u00020\u00082\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/pay/bank/GraphQLBankWebService;",
        "Lxl0;",
        "Landroid/app/Application;",
        "application",
        "Lfv;",
        "apiService",
        "<init>",
        "(Landroid/app/Application;Lfv;)V",
        "Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/pay/api/HttpResponse;",
        "Lteam/opay/pay/bank/BankResponse;",
        "",
        "Lteam/opay/pay/bank/Bank;",
        "i",
        "(Lteam/opay/core/api/Country;)Lteam/opay/core/android/arch/LiveDataCall;",
        "k",
        "Lteam/opay/pay/bank/BankFreeTimesRequest;",
        "bankFreeTimesRequest",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "Lteam/opay/pay/bank/BankFreeTimesResponse;",
        "a",
        "(Lteam/opay/pay/bank/BankFreeTimesRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/api/GraphQL$Bank;",
        "banks",
        "g",
        "(Lteam/opay/core/api/Country;Ljava/util/List;)Ljava/util/List;",
        "Lfv;",
        "getApiService",
        "()Lfv;",
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
.field public final a:Lfv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lfv;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lfv;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "apiService"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lteam/opay/pay/bank/GraphQLBankWebService;->a:Lfv;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic d(Lteam/opay/pay/bank/GraphQLBankWebService;Lteam/opay/core/api/Country;Lteam/opay/pay/api/HttpResponse;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/bank/GraphQLBankWebService;->l(Lteam/opay/pay/bank/GraphQLBankWebService;Lteam/opay/core/api/Country;Lteam/opay/pay/api/HttpResponse;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/bank/BankFreeTimesResponse;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/bank/GraphQLBankWebService;->h(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/bank/BankFreeTimesResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/pay/bank/GraphQLBankWebService;Lteam/opay/core/api/Country;Lteam/opay/pay/api/HttpResponse;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/bank/GraphQLBankWebService;->j(Lteam/opay/pay/bank/GraphQLBankWebService;Lteam/opay/core/api/Country;Lteam/opay/pay/api/HttpResponse;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/bank/BankFreeTimesResponse;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/api/HttpResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lteam/opay/pay/bank/BankFreeTimesResponse;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final j(Lteam/opay/pay/bank/GraphQLBankWebService;Lteam/opay/core/api/Country;Lteam/opay/pay/api/HttpResponse;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lteam/opay/pay/api/HttpResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Lteam/opay/pay/bank/BankResponse;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lteam/opay/pay/bank/BankResponse;->a()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p2, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/bank/GraphQLBankWebService;->g(Lteam/opay/core/api/Country;Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static final l(Lteam/opay/pay/bank/GraphQLBankWebService;Lteam/opay/core/api/Country;Lteam/opay/pay/api/HttpResponse;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lteam/opay/pay/api/HttpResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Lteam/opay/pay/bank/BankResponse;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lteam/opay/pay/bank/BankResponse;->a()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p2, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/bank/GraphQLBankWebService;->g(Lteam/opay/core/api/Country;Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method


# virtual methods
.method public a(Lteam/opay/pay/bank/BankFreeTimesRequest;)Landroidx/lifecycle/LiveData;
    .locals 3
    .param p1    # Lteam/opay/pay/bank/BankFreeTimesRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/bank/BankFreeTimesRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Lteam/opay/pay/bank/BankFreeTimesResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "bankFreeTimesRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/bank/GraphQLBankWebService;->a:Lfv;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lfv;->a(Lteam/opay/pay/bank/BankFreeTimesRequest;)Lretrofit2/Call;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Lis6;

    .line 13
    .line 14
    invoke-direct {v0}, Lis6;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {p1, v2, v0, v1, v2}, Lyv;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public bridge synthetic b(Lteam/opay/core/api/Country;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/bank/GraphQLBankWebService;->k(Lteam/opay/core/api/Country;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic c(Lteam/opay/core/api/Country;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/bank/GraphQLBankWebService;->i(Lteam/opay/core/api/Country;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final g(Lteam/opay/core/api/Country;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/Country;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Bank;",
            ">;)",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v2, v1

    .line 27
    check-cast v2, Lteam/opay/core/api/GraphQL$Bank;

    .line 28
    .line 29
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$Bank;->e()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    .line 40
    .line 41
    const/16 v1, 0xa

    .line 42
    .line 43
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lteam/opay/core/api/GraphQL$Bank;

    .line 65
    .line 66
    new-instance v10, Lteam/opay/pay/bank/Bank;

    .line 67
    .line 68
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$Bank;->a()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$Bank;->c()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$Bank;->e()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$Bank;->b()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-nez v2, :cond_3

    .line 88
    .line 89
    const-string v2, ""

    .line 90
    .line 91
    :cond_3
    move-object v6, v2

    .line 92
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$Bank;->f()Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    invoke-virtual {p1}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$Bank;->d()Ljava/lang/Boolean;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    move-object v2, v10

    .line 105
    invoke-direct/range {v2 .. v9}, Lteam/opay/pay/bank/Bank;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Boolean;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    return-object p2
.end method

.method public i(Lteam/opay/core/api/Country;)Lteam/opay/core/android/arch/LiveDataCall;
    .locals 5
    .param p1    # Lteam/opay/core/api/Country;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/Country;",
            ")",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lteam/opay/pay/bank/BankResponse;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "country"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/bank/GraphQLBankWebService;->a:Lfv;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/bank/BankRequest;

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x2

    .line 16
    invoke-direct {v1, v2, v3, v4, v3}, Lteam/opay/pay/bank/BankRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lfv;->i(Lteam/opay/pay/bank/BankRequest;)Lretrofit2/Call;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lks6;

    .line 24
    .line 25
    invoke-direct {v1, p0, p1}, Lks6;-><init>(Lteam/opay/pay/bank/GraphQLBankWebService;Lteam/opay/core/api/Country;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v3, v1, v4, v3}, Lyv;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public k(Lteam/opay/core/api/Country;)Lteam/opay/core/android/arch/LiveDataCall;
    .locals 5
    .param p1    # Lteam/opay/core/api/Country;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/Country;",
            ")",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lteam/opay/pay/bank/BankResponse;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "country"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/bank/GraphQLBankWebService;->a:Lfv;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/bank/BankRequest;

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x2

    .line 16
    invoke-direct {v1, v2, v3, v4, v3}, Lteam/opay/pay/bank/BankRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lfv;->v0(Lteam/opay/pay/bank/BankRequest;)Lretrofit2/Call;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljs6;

    .line 24
    .line 25
    invoke-direct {v1, p0, p1}, Ljs6;-><init>(Lteam/opay/pay/bank/GraphQLBankWebService;Lteam/opay/core/api/Country;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v3, v1, v4, v3}, Lyv;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method
