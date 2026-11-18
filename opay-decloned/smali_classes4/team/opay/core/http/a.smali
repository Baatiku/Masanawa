.class public final Lteam/opay/core/http/a;
.super Ljava/lang/Object;
.source "SuspendResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/http/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a3\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0004H\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a3\u0010\n\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\tH\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000b\u001a9\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a\u0019\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011*\u00020\u0010H\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001a\u0011\u0010\u0016\u001a\u00020\u0015*\u00020\u0010\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a\u0013\u0010\u0018\u001a\u00020\u0015*\u00020\u0006H\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lokhttp3/Request;",
        "request",
        "Lretrofit2/Response;",
        "response",
        "Lteam/opay/core/http/HttpResponse;",
        "body",
        "",
        "b",
        "(Lokhttp3/Request;Lretrofit2/Response;Lteam/opay/core/http/HttpResponse;)Ljava/lang/String;",
        "Lteam/opay/core/http/SuspendResponse;",
        "c",
        "(Lokhttp3/Request;Lretrofit2/Response;Lteam/opay/core/http/SuspendResponse;)Ljava/lang/String;",
        "apiCode",
        "message",
        "a",
        "(Lokhttp3/Request;Lretrofit2/Response;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "",
        "Lteam/opay/core/http/HttpResult;",
        "",
        "d",
        "(Ljava/lang/Throwable;)Lteam/opay/core/http/HttpResult;",
        "Lteam/opay/core/common/base/ErrorType;",
        "f",
        "(Ljava/lang/Throwable;)Lteam/opay/core/common/base/ErrorType;",
        "e",
        "(Ljava/lang/String;)Lteam/opay/core/common/base/ErrorType;",
        "common-http_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lokhttp3/Request;Lretrofit2/Response;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Lretrofit2/Response<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/biz/rbi/HttpTrack;->c:Lteam/opay/core/biz/rbi/HttpTrack$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/biz/rbi/HttpTrack$Companion;->a()Lteam/opay/core/biz/rbi/HttpTrack;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0, p2, p3}, Lteam/opay/core/biz/rbi/HttpTrack;->q(Lokhttp3/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {p0, p2, p3}, Lteam/opay/core/http/arch/b;->b(ILjava/lang/String;Ljava/lang/String;)Lteam/opay/core/common/base/ErrorType;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object p1, Lteam/opay/core/http/a$a;->a:[I

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    aget p1, p1, v0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    if-eq p1, v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    if-eq p1, v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p2, p3}, Lteam/opay/core/http/arch/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance p2, Lteam/opay/core/common/base/HttpError;

    .line 38
    .line 39
    invoke-direct {p2, p0, p1}, Lteam/opay/core/common/base/HttpError;-><init>(Lteam/opay/core/common/base/ErrorType;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object p0, La80;->a:La80;

    .line 43
    .line 44
    invoke-virtual {p0, p2}, La80;->b(Lteam/opay/core/common/base/HttpError;)V

    .line 45
    .line 46
    .line 47
    const-string p3, ""

    .line 48
    .line 49
    :goto_0
    return-object p3
.end method

.method public static final b(Lokhttp3/Request;Lretrofit2/Response;Lteam/opay/core/http/HttpResponse;)Ljava/lang/String;
    .locals 2
    .param p0    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/http/HttpResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Lretrofit2/Response<",
            "*>;",
            "Lteam/opay/core/http/HttpResponse<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lteam/opay/core/http/HttpResponse;->a()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v0

    .line 20
    :goto_0
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p2}, Lteam/opay/core/http/HttpResponse;->c()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    invoke-static {p0, p1, v1, v0}, Lteam/opay/core/http/a;->a(Lokhttp3/Request;Lretrofit2/Response;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static final c(Lokhttp3/Request;Lretrofit2/Response;Lteam/opay/core/http/SuspendResponse;)Ljava/lang/String;
    .locals 2
    .param p0    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/http/SuspendResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Lretrofit2/Response<",
            "*>;",
            "Lteam/opay/core/http/SuspendResponse<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lteam/opay/core/http/SuspendResponse;->a()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v0

    .line 20
    :goto_0
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p2}, Lteam/opay/core/http/SuspendResponse;->c()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    invoke-static {p0, p1, v1, v0}, Lteam/opay/core/http/a;->a(Lokhttp3/Request;Lretrofit2/Response;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static final d(Ljava/lang/Throwable;)Lteam/opay/core/http/HttpResult;
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    instance-of v0, p0, Ljava/net/SocketException;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    instance-of v0, p0, Ljava/net/UnknownHostException;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lteam/opay/core/http/HttpResult$UnknownError;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lteam/opay/core/http/HttpResult$UnknownError;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    new-instance v0, Lteam/opay/core/http/HttpResult$NetworkError;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lteam/opay/core/http/HttpResult$NetworkError;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :goto_1
    return-object v0
.end method

.method public static final e(Ljava/lang/String;)Lteam/opay/core/common/base/ErrorType;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    :pswitch_0
    goto :goto_0

    .line 14
    :pswitch_1
    const-string v0, "10005"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :pswitch_2
    const-string v0, "10004"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_3
    const-string v0, "10003"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_4
    const-string v0, "10001"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    :cond_0
    :goto_0
    sget-object p0, Lteam/opay/core/common/base/ErrorType;->OTHER:Lteam/opay/core/common/base/ErrorType;

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    :goto_1
    sget-object p0, Lteam/opay/core/common/base/ErrorType;->NETWORK:Lteam/opay/core/common/base/ErrorType;

    .line 53
    .line 54
    :goto_2
    return-object p0

    .line 55
    :pswitch_data_0
    .packed-switch 0x2c90bb2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final f(Ljava/lang/Throwable;)Lteam/opay/core/common/base/ErrorType;
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    instance-of v0, p0, Ljava/net/SocketException;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    instance-of v0, p0, Ljava/net/UnknownHostException;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    instance-of p0, p0, Ljavax/net/ssl/SSLException;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p0, Lteam/opay/core/common/base/ErrorType;->OTHER:Lteam/opay/core/common/base/ErrorType;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    sget-object p0, Lteam/opay/core/common/base/ErrorType;->NETWORK:Lteam/opay/core/common/base/ErrorType;

    .line 27
    .line 28
    :goto_1
    return-object p0
.end method
