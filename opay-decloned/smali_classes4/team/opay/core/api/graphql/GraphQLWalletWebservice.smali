.class public final Lteam/opay/core/api/graphql/GraphQLWalletWebservice;
.super Ljava/lang/Object;
.source "Wallet.kt"

# interfaces
.implements Lc5g;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/core/api/graphql/GraphQLWalletWebservice;",
        "Lc5g;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/core/api/graphql/Response;",
        "Lteam/opay/core/api/Wallet;",
        "e",
        "()Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/core/api/GraphQL$Schema;",
        "schema",
        "",
        "d",
        "(Lteam/opay/core/api/GraphQL$Schema;)Z",
        "Lxt;",
        "a",
        "Lxt;",
        "api",
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
.field public final a:Lxt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lteam/opay/core/api/GraphQL;->a(Landroid/content/Context;)Lxt;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lteam/opay/core/api/graphql/GraphQLWalletWebservice;->a:Lxt;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic b(Lteam/opay/core/api/graphql/GraphQLWalletWebservice;Lretrofit2/Response;Lteam/opay/core/api/Wallet;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/api/graphql/GraphQLWalletWebservice;->g(Lteam/opay/core/api/graphql/GraphQLWalletWebservice;Lretrofit2/Response;Lteam/opay/core/api/Wallet;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/core/api/graphql/GraphQLWalletWebservice;Lteam/opay/core/api/graphql/Response;)Lteam/opay/core/api/Wallet;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/api/graphql/GraphQLWalletWebservice;->f(Lteam/opay/core/api/graphql/GraphQLWalletWebservice;Lteam/opay/core/api/graphql/Response;)Lteam/opay/core/api/Wallet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final f(Lteam/opay/core/api/graphql/GraphQLWalletWebservice;Lteam/opay/core/api/graphql/Response;)Lteam/opay/core/api/Wallet;
    .locals 8

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/Response;->b()Lteam/opay/core/api/GraphQL$Schema;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/Response;->b()Lteam/opay/core/api/GraphQL$Schema;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lteam/opay/core/api/graphql/GraphQLWalletWebservice;->d(Lteam/opay/core/api/GraphQL$Schema;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 p1, 0x0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    new-instance p0, Lteam/opay/core/api/Wallet;

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$Schema;->o()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$Schema;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$Schema;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$Schema;->i()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    move-object v5, v1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move-object v5, p1

    .line 73
    :goto_0
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$Schema;->f()Lteam/opay/core/api/GraphQL$CouponsInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CouponsInfo;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$Schema;->f()Lteam/opay/core/api/GraphQL$CouponsInfo;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$CouponsInfo;->b()Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    move v7, p1

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    const/4 p1, 0x0

    .line 107
    const/4 v7, 0x0

    .line 108
    :goto_1
    move-object v1, p0

    .line 109
    invoke-direct/range {v1 .. v7}, Lteam/opay/core/api/Wallet;-><init>(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;I)V

    .line 110
    .line 111
    .line 112
    move-object p1, p0

    .line 113
    :goto_2
    return-object p1
.end method

.method public static final g(Lteam/opay/core/api/graphql/GraphQLWalletWebservice;Lretrofit2/Response;Lteam/opay/core/api/Wallet;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 4

    .line 1
    const-string v0, "apiResponse"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lteam/opay/core/api/graphql/Response;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/Response;->b()Lteam/opay/core/api/GraphQL$Schema;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v1, v0

    .line 21
    :goto_0
    invoke-virtual {p0, v1}, Lteam/opay/core/api/graphql/GraphQLWalletWebservice;->d(Lteam/opay/core/api/GraphQL$Schema;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_3

    .line 26
    .line 27
    sget-object p0, Lvu;->a:Lvu;

    .line 28
    .line 29
    new-instance v1, Lteam/opay/core/android/arch/ApiError;

    .line 30
    .line 31
    sget-object v2, Lteam/opay/core/android/arch/ErrorType;->OTHER:Lteam/opay/core/android/arch/ErrorType;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/Response;->a()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lteam/opay/core/api/graphql/Error;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/Error;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_1
    if-nez v0, :cond_2

    .line 55
    .line 56
    const-string v0, ""

    .line 57
    .line 58
    :cond_2
    invoke-direct {v1, v2, v0}, Lteam/opay/core/android/arch/ApiError;-><init>(Lteam/opay/core/android/arch/ErrorType;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p2, v1}, Lvu;->c(Ljava/lang/Object;Lteam/opay/core/android/arch/ApiError;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_3
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/GraphQLWalletWebservice;->e()Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d(Lteam/opay/core/api/GraphQL$Schema;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$Schema;->o()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$Schema;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$Schema;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    :goto_1
    return p1
.end method

.method public e()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/core/api/graphql/Response;",
            "Lteam/opay/core/api/Wallet;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/GraphQLWalletWebservice;->a:Lxt;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL;->n()Lteam/opay/core/api/graphql/Request;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lrs6;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lrs6;-><init>(Lteam/opay/core/api/graphql/GraphQLWalletWebservice;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lsu;->g(Lxt;Lteam/opay/core/api/graphql/Request;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lss6;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lss6;-><init>(Lteam/opay/core/api/graphql/GraphQLWalletWebservice;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/LiveDataCall;->d(Lkotlin/jvm/functions/Function2;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
