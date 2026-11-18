.class public final Lteam/opay/core/http/interceptor/HttpInterceptor;
.super Ljava/lang/Object;
.source "HttpInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\r\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0016\u001a\u0004\u0018\u00010\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/core/http/interceptor/HttpInterceptor;",
        "Lokhttp3/Interceptor;",
        "<init>",
        "()V",
        "Lokhttp3/Interceptor$Chain;",
        "chain",
        "Lokhttp3/Response;",
        "intercept",
        "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;",
        "Lteam/opay/core/spi/IHttpDelegate;",
        "delegate",
        "Lokhttp3/Request;",
        "request",
        "c",
        "(Lteam/opay/core/spi/IHttpDelegate;Lokhttp3/Request;)Lokhttp3/Request;",
        "response",
        "d",
        "(Lteam/opay/core/spi/IHttpDelegate;Lokhttp3/Response;)Lokhttp3/Response;",
        "a",
        "Lid8;",
        "b",
        "()Lteam/opay/core/spi/IHttpDelegate;",
        "kong",
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
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp57;

    .line 5
    .line 6
    invoke-direct {v0}, Lp57;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/core/http/interceptor/HttpInterceptor;->a:Lid8;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a()Lteam/opay/core/spi/IHttpDelegate;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/http/interceptor/HttpInterceptor;->e()Lteam/opay/core/spi/IHttpDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final e()Lteam/opay/core/spi/IHttpDelegate;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/spi/IHttpDelegate;->Companion:Lteam/opay/core/spi/IHttpDelegate$Companion;

    .line 2
    .line 3
    const-string v1, "kong"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/core/spi/IHttpDelegate$Companion;->b(Ljava/lang/String;)Lteam/opay/core/spi/IHttpDelegate;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method public final b()Lteam/opay/core/spi/IHttpDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/interceptor/HttpInterceptor;->a:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/spi/IHttpDelegate;

    .line 8
    .line 9
    return-object v0
.end method

.method public final c(Lteam/opay/core/spi/IHttpDelegate;Lokhttp3/Request;)Lokhttp3/Request;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lteam/opay/core/spi/IHttpDelegate;->getRequest(Lokhttp3/Request;)Lokhttp3/Request;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_2

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/http/interceptor/HttpInterceptor;->b()Lteam/opay/core/spi/IHttpDelegate;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lteam/opay/core/spi/IHttpDelegate;->getRequest(Lokhttp3/Request;)Lokhttp3/Request;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_3
    move-object p2, p1

    .line 25
    :goto_1
    return-object p2
.end method

.method public final d(Lteam/opay/core/spi/IHttpDelegate;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lteam/opay/core/spi/IHttpDelegate;->getResponse(Lokhttp3/Response;)Lokhttp3/Response;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_2

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/http/interceptor/HttpInterceptor;->b()Lteam/opay/core/spi/IHttpDelegate;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lteam/opay/core/spi/IHttpDelegate;->getResponse(Lokhttp3/Response;)Lokhttp3/Response;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_3
    move-object p2, p1

    .line 25
    :goto_1
    return-object p2
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "http-secret"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lokhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    sget-object v2, Lteam/opay/core/spi/IHttpDelegate;->Companion:Lteam/opay/core/spi/IHttpDelegate$Companion;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lteam/opay/core/spi/IHttpDelegate$Companion;->b(Ljava/lang/String;)Lteam/opay/core/spi/IHttpDelegate;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0, v1, v0}, Lteam/opay/core/http/interceptor/HttpInterceptor;->c(Lteam/opay/core/spi/IHttpDelegate;Lokhttp3/Request;)Lokhttp3/Request;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v2, "http-rbi"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    sget-object v3, Lteam/opay/core/biz/rbi/HttpTrack;->c:Lteam/opay/core/biz/rbi/HttpTrack$Companion;

    .line 42
    .line 43
    invoke-virtual {v3}, Lteam/opay/core/biz/rbi/HttpTrack$Companion;->a()Lteam/opay/core/biz/rbi/HttpTrack;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3, v2, v0}, Lteam/opay/core/biz/rbi/HttpTrack;->h(Ljava/lang/String;Lokhttp3/Request;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, v1, p1}, Lteam/opay/core/http/interceptor/HttpInterceptor;->d(Lteam/opay/core/spi/IHttpDelegate;Lokhttp3/Response;)Lokhttp3/Response;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    const-string v1, "http-track"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v2, "response"

    .line 71
    .line 72
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    sget-object v1, Lteam/opay/core/biz/rbi/HttpTrack;->c:Lteam/opay/core/biz/rbi/HttpTrack$Companion;

    .line 79
    .line 80
    invoke-virtual {v1}, Lteam/opay/core/biz/rbi/HttpTrack$Companion;->a()Lteam/opay/core/biz/rbi/HttpTrack;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1, v0, p1}, Lteam/opay/core/biz/rbi/HttpTrack;->u(Lokhttp3/Request;Lokhttp3/Response;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-object p1
.end method
