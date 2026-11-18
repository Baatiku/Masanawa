.class public final Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;
.super Ljava/lang/Object;
.source "SecretSecurityWebService.kt"

# interfaces
.implements Ln8d;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ/\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u00062\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J/\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00062\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J/\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u00062\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0010J/\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u00062\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0010J\u001b\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00180\u0017H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;",
        "Ln8d;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/pay/home/security/SecretSecurityData;",
        "e",
        "()Lteam/opay/core/android/arch/LiveDataCall;",
        "",
        "",
        "",
        "questions",
        "Lteam/opay/pay/home/security/SecretSecurityResponse;",
        "c",
        "(Ljava/util/Map;)Lteam/opay/core/android/arch/LiveDataCall;",
        "params",
        "d",
        "Lteam/opay/pay/home/security/PayPinSetResultResponse;",
        "b",
        "Lteam/opay/pay/home/security/ValidatePaymentPinResponse;",
        "a",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "Lteam/opay/pay/home/security/CardSetting;",
        "f",
        "()Landroidx/lifecycle/LiveData;",
        "Ln7d;",
        "Ln7d;",
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
.field public final a:Ln7d;
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
    sget-object v0, Lh8d;->a:Lh8d;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lh8d;->a(Landroid/content/Context;)Ln7d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "createSecretSecurityApi(...)"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;->a:Ln7d;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic g(Lretrofit2/Response;Lteam/opay/pay/home/security/SecretSecurityData;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;->q(Lretrofit2/Response;Lteam/opay/pay/home/security/SecretSecurityData;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lretrofit2/Response;Lteam/opay/pay/home/security/PayPinSetResultResponse;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;->r(Lretrofit2/Response;Lteam/opay/pay/home/security/PayPinSetResultResponse;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lretrofit2/Response;Lteam/opay/pay/home/security/SecretSecurityResponse;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;->s(Lretrofit2/Response;Lteam/opay/pay/home/security/SecretSecurityResponse;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lretrofit2/Response;Lteam/opay/pay/home/security/CardSetting;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;->n(Lretrofit2/Response;Lteam/opay/pay/home/security/CardSetting;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/pay/home/security/CardSetting;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;->o(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/pay/home/security/CardSetting;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lretrofit2/Response;Lteam/opay/pay/home/security/ValidatePaymentPinResponse;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;->t(Lretrofit2/Response;Lteam/opay/pay/home/security/ValidatePaymentPinResponse;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lretrofit2/Response;Lteam/opay/pay/home/security/SecretSecurityData;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;->p(Lretrofit2/Response;Lteam/opay/pay/home/security/SecretSecurityData;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final n(Lretrofit2/Response;Lteam/opay/pay/home/security/CardSetting;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 5

    .line 1
    const-string v0, "httpResponse"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lteam/opay/core/api/graphql/RestResponse;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/RestResponse;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v1

    .line 21
    :goto_0
    const-string v3, "00000"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    sget-object v2, Lvu;->a:Lvu;

    .line 30
    .line 31
    new-instance v3, Lteam/opay/core/android/arch/ApiError;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/RestResponse;->c()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v4, v1

    .line 41
    :goto_1
    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/RestResponse;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move-object v0, v1

    .line 53
    :goto_2
    invoke-direct {v3, v4, p0, v0}, Lteam/opay/core/android/arch/ApiError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1, v3}, Lvu;->c(Ljava/lang/Object;Lteam/opay/core/android/arch/ApiError;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 57
    .line 58
    .line 59
    :cond_3
    return-object v1
.end method

.method public static final o(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/pay/home/security/CardSetting;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/RestResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lteam/opay/pay/home/security/CardSetting;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final p(Lretrofit2/Response;Lteam/opay/pay/home/security/SecretSecurityData;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 5

    .line 1
    const-string v0, "httpResponse"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lteam/opay/pay/home/security/SecretSecurityData;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/home/security/SecretSecurityData;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v1

    .line 21
    :goto_0
    const-string v3, "00000"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    sget-object v2, Lvu;->a:Lvu;

    .line 30
    .line 31
    new-instance v3, Lteam/opay/core/android/arch/ApiError;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lteam/opay/pay/home/security/SecretSecurityData;->c()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v4, v1

    .line 41
    :goto_1
    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lteam/opay/pay/home/security/SecretSecurityData;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_2
    invoke-direct {v3, v4, p0, v1}, Lteam/opay/core/android/arch/ApiError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p1, v3}, Lvu;->c(Ljava/lang/Object;Lteam/opay/core/android/arch/ApiError;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_3
    return-object v1
.end method

.method public static final q(Lretrofit2/Response;Lteam/opay/pay/home/security/SecretSecurityData;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 5

    .line 1
    const-string v0, "httpResponse"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lteam/opay/pay/home/security/SecretSecurityData;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/home/security/SecretSecurityData;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v1

    .line 21
    :goto_0
    const-string v3, "00000"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    sget-object v2, Lvu;->a:Lvu;

    .line 30
    .line 31
    new-instance v3, Lteam/opay/core/android/arch/ApiError;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lteam/opay/pay/home/security/SecretSecurityData;->c()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v4, v1

    .line 41
    :goto_1
    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lteam/opay/pay/home/security/SecretSecurityData;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_2
    invoke-direct {v3, v4, p0, v1}, Lteam/opay/core/android/arch/ApiError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p1, v3}, Lvu;->c(Ljava/lang/Object;Lteam/opay/core/android/arch/ApiError;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_3
    return-object v1
.end method

.method public static final r(Lretrofit2/Response;Lteam/opay/pay/home/security/PayPinSetResultResponse;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 5

    .line 1
    const-string v0, "httpResponse"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lteam/opay/pay/home/security/PayPinSetResultResponse;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/home/security/PayPinSetResultResponse;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v1

    .line 21
    :goto_0
    const-string v3, "00000"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    sget-object v2, Lvu;->a:Lvu;

    .line 30
    .line 31
    new-instance v3, Lteam/opay/core/android/arch/ApiError;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lteam/opay/pay/home/security/PayPinSetResultResponse;->c()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v4, v1

    .line 41
    :goto_1
    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lteam/opay/pay/home/security/PayPinSetResultResponse;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_2
    invoke-direct {v3, v4, p0, v1}, Lteam/opay/core/android/arch/ApiError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p1, v3}, Lvu;->c(Ljava/lang/Object;Lteam/opay/core/android/arch/ApiError;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_3
    return-object v1
.end method

.method public static final s(Lretrofit2/Response;Lteam/opay/pay/home/security/SecretSecurityResponse;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 5

    .line 1
    const-string v0, "httpResponse"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lteam/opay/pay/home/security/SecretSecurityResponse;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/home/security/SecretSecurityResponse;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v1

    .line 21
    :goto_0
    const-string v3, "00000"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    sget-object v2, Lvu;->a:Lvu;

    .line 30
    .line 31
    new-instance v3, Lteam/opay/core/android/arch/ApiError;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lteam/opay/pay/home/security/SecretSecurityResponse;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v4, v1

    .line 41
    :goto_1
    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lteam/opay/pay/home/security/SecretSecurityResponse;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_2
    invoke-direct {v3, v4, p0, v1}, Lteam/opay/core/android/arch/ApiError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p1, v3}, Lvu;->c(Ljava/lang/Object;Lteam/opay/core/android/arch/ApiError;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_3
    return-object v1
.end method

.method public static final t(Lretrofit2/Response;Lteam/opay/pay/home/security/ValidatePaymentPinResponse;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 5

    .line 1
    const-string v0, "httpResponse"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lteam/opay/pay/home/security/ValidatePaymentPinResponse;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/home/security/ValidatePaymentPinResponse;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v1

    .line 21
    :goto_0
    const-string v3, "00000"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    sget-object v2, Lvu;->a:Lvu;

    .line 30
    .line 31
    new-instance v3, Lteam/opay/core/android/arch/ApiError;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lteam/opay/pay/home/security/ValidatePaymentPinResponse;->c()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v4, v1

    .line 41
    :goto_1
    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lteam/opay/pay/home/security/ValidatePaymentPinResponse;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_2
    invoke-direct {v3, v4, p0, v1}, Lteam/opay/core/android/arch/ApiError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p1, v3}, Lvu;->c(Ljava/lang/Object;Lteam/opay/core/android/arch/ApiError;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_3
    return-object v1
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lteam/opay/core/android/arch/LiveDataCall;
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/home/security/ValidatePaymentPinResponse;",
            "Lteam/opay/pay/home/security/ValidatePaymentPinResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/arch/LiveDataCall;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;->a:Ln7d;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Ln7d;->a(Ljava/util/Map;)Lretrofit2/Call;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v1, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl$e;

    .line 15
    .line 16
    invoke-direct {v1}, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl$e;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1, v1}, Lteam/opay/core/android/arch/LiveDataCall;-><init>(Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lq8d;

    .line 23
    .line 24
    invoke-direct {p1}, Lq8d;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/LiveDataCall;->d(Lkotlin/jvm/functions/Function2;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public b(Ljava/util/Map;)Lteam/opay/core/android/arch/LiveDataCall;
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/home/security/PayPinSetResultResponse;",
            "Lteam/opay/pay/home/security/PayPinSetResultResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/arch/LiveDataCall;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;->a:Ln7d;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Ln7d;->b(Ljava/util/Map;)Lretrofit2/Call;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v1, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl$c;

    .line 15
    .line 16
    invoke-direct {v1}, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl$c;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1, v1}, Lteam/opay/core/android/arch/LiveDataCall;-><init>(Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lr8d;

    .line 23
    .line 24
    invoke-direct {p1}, Lr8d;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/LiveDataCall;->d(Lkotlin/jvm/functions/Function2;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public c(Ljava/util/Map;)Lteam/opay/core/android/arch/LiveDataCall;
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/home/security/SecretSecurityResponse;",
            "Lteam/opay/pay/home/security/SecretSecurityResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "questions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/arch/LiveDataCall;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;->a:Ln7d;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Ln7d;->c(Ljava/util/Map;)Lretrofit2/Call;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v1, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl$d;

    .line 15
    .line 16
    invoke-direct {v1}, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl$d;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1, v1}, Lteam/opay/core/android/arch/LiveDataCall;-><init>(Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Ls8d;

    .line 23
    .line 24
    invoke-direct {p1}, Ls8d;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/LiveDataCall;->d(Lkotlin/jvm/functions/Function2;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public d(Ljava/util/Map;)Lteam/opay/core/android/arch/LiveDataCall;
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/home/security/SecretSecurityData;",
            "Lteam/opay/pay/home/security/SecretSecurityData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/arch/LiveDataCall;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;->a:Ln7d;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Ln7d;->d(Ljava/util/Map;)Lretrofit2/Call;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v1, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl$b;

    .line 15
    .line 16
    invoke-direct {v1}, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl$b;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1, v1}, Lteam/opay/core/android/arch/LiveDataCall;-><init>(Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lo8d;

    .line 23
    .line 24
    invoke-direct {p1}, Lo8d;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/LiveDataCall;->d(Lkotlin/jvm/functions/Function2;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public e()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/home/security/SecretSecurityData;",
            "Lteam/opay/pay/home/security/SecretSecurityData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;->a:Ln7d;

    .line 4
    .line 5
    invoke-interface {v1}, Ln7d;->h()Lretrofit2/Call;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl$a;

    .line 10
    .line 11
    invoke-direct {v2}, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl$a;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/LiveDataCall;-><init>(Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lp8d;

    .line 18
    .line 19
    invoke-direct {v1}, Lp8d;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/LiveDataCall;->d(Lkotlin/jvm/functions/Function2;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public f()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Lteam/opay/pay/home/security/CardSetting;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;->a:Ln7d;

    .line 4
    .line 5
    invoke-interface {v1}, Ln7d;->m()Lretrofit2/Call;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lt8d;

    .line 10
    .line 11
    invoke-direct {v2}, Lt8d;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/LiveDataCall;-><init>(Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lu8d;

    .line 18
    .line 19
    invoke-direct {v1}, Lu8d;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/LiveDataCall;->d(Lkotlin/jvm/functions/Function2;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 23
    .line 24
    .line 25
    return-object v0
.end method
