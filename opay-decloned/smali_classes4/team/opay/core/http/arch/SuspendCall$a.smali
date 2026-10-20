.class public final Lteam/opay/core/http/arch/SuspendCall$a;
.super Ljava/lang/Object;
.source "SuspendCallAdapter.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/http/arch/SuspendCall;->enqueue(Lretrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J+\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J%\u0010\u000b\u001a\u00020\u00062\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "team/opay/core/http/arch/SuspendCall$a",
        "Lretrofit2/Callback;",
        "Lretrofit2/Call;",
        "call",
        "Lretrofit2/Response;",
        "response",
        "",
        "onResponse",
        "(Lretrofit2/Call;Lretrofit2/Response;)V",
        "",
        "t",
        "onFailure",
        "(Lretrofit2/Call;Ljava/lang/Throwable;)V",
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
.field public final synthetic a:Lretrofit2/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Callback<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/core/http/arch/SuspendCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/arch/SuspendCall<",
            "TR;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lretrofit2/Callback;Lteam/opay/core/http/arch/SuspendCall;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback<",
            "Ljava/lang/Object;",
            ">;",
            "Lteam/opay/core/http/arch/SuspendCall<",
            "TR;TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/http/arch/SuspendCall$a;->a:Lretrofit2/Callback;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/http/arch/SuspendCall$a;->b:Lteam/opay/core/http/arch/SuspendCall;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "t"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lteam/opay/core/biz/rbi/HttpTrack;->c:Lteam/opay/core/biz/rbi/HttpTrack$Companion;

    .line 12
    .line 13
    invoke-virtual {v0}, Lteam/opay/core/biz/rbi/HttpTrack$Companion;->a()Lteam/opay/core/biz/rbi/HttpTrack;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "request(...)"

    .line 22
    .line 23
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack;->r(Lokhttp3/Request;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Lo47;->b(Ljava/lang/Throwable;)Lteam/opay/core/http/arch/HttpException;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance p2, Lteam/opay/core/http/SuspendResponse;

    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/core/http/arch/HttpException;->getApiCode()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1}, Lo47;->a(Lteam/opay/core/http/arch/HttpException;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {p2, v1, v0, p1}, Lteam/opay/core/http/SuspendResponse;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lteam/opay/core/http/arch/SuspendCall$a;->a:Lretrofit2/Callback;

    .line 48
    .line 49
    iget-object v0, p0, Lteam/opay/core/http/arch/SuspendCall$a;->b:Lteam/opay/core/http/arch/SuspendCall;

    .line 50
    .line 51
    invoke-static {p2}, Lretrofit2/Response;->success(Ljava/lang/Object;)Lretrofit2/Response;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-interface {p1, v0, p2}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;",
            "Lretrofit2/Response<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lteam/opay/core/http/SuspendResponse;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_0
    const-string v2, "00000"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    const-string v2, "200"

    .line 39
    .line 40
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    invoke-interface {p1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v1, "request(...)"

    .line 51
    .line 52
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p2, v0}, Lteam/opay/core/http/a;->c(Lokhttp3/Request;Lretrofit2/Response;Lteam/opay/core/http/SuspendResponse;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-interface {p1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget-object v0, Lteam/opay/core/biz/rbi/HttpTrack;->c:Lteam/opay/core/biz/rbi/HttpTrack$Companion;

    .line 64
    .line 65
    invoke-virtual {v0}, Lteam/opay/core/biz/rbi/HttpTrack$Companion;->a()Lteam/opay/core/biz/rbi/HttpTrack;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v3, "raw(...)"

    .line 77
    .line 78
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move-object v3, v1

    .line 93
    :goto_0
    invoke-virtual {v0, p1, v2, v3}, Lteam/opay/core/biz/rbi/HttpTrack;->v(Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance p1, Lretrofit2/HttpException;

    .line 97
    .line 98
    invoke-direct {p1, p2}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lteam/opay/core/http/SuspendResponse;

    .line 102
    .line 103
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {v0, v1, p2, p1}, Lteam/opay/core/http/SuspendResponse;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    :goto_1
    iget-object p1, p0, Lteam/opay/core/http/arch/SuspendCall$a;->a:Lretrofit2/Callback;

    .line 119
    .line 120
    iget-object p2, p0, Lteam/opay/core/http/arch/SuspendCall$a;->b:Lteam/opay/core/http/arch/SuspendCall;

    .line 121
    .line 122
    invoke-static {v0}, Lretrofit2/Response;->success(Ljava/lang/Object;)Lretrofit2/Response;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {p1, p2, v0}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method
