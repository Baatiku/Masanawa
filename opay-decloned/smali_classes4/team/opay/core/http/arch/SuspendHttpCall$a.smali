.class public final Lteam/opay/core/http/arch/SuspendHttpCall$a;
.super Ljava/lang/Object;
.source "HttpCallAdapter.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/http/arch/SuspendHttpCall;->enqueue(Lretrofit2/Callback;)V
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
        "team/opay/core/http/arch/SuspendHttpCall$a",
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
            "Lteam/opay/core/http/HttpResult<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/core/http/arch/SuspendHttpCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/arch/SuspendHttpCall<",
            "TR;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lretrofit2/Callback;Lteam/opay/core/http/arch/SuspendHttpCall;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback<",
            "Lteam/opay/core/http/HttpResult<",
            "TT;>;>;",
            "Lteam/opay/core/http/arch/SuspendHttpCall<",
            "TR;TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/http/arch/SuspendHttpCall$a;->a:Lretrofit2/Callback;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/http/arch/SuspendHttpCall$a;->b:Lteam/opay/core/http/arch/SuspendHttpCall;

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
    iget-object p1, p0, Lteam/opay/core/http/arch/SuspendHttpCall$a;->a:Lretrofit2/Callback;

    .line 30
    .line 31
    iget-object v0, p0, Lteam/opay/core/http/arch/SuspendHttpCall$a;->b:Lteam/opay/core/http/arch/SuspendHttpCall;

    .line 32
    .line 33
    invoke-static {p2}, Lteam/opay/core/http/a;->d(Ljava/lang/Throwable;)Lteam/opay/core/http/HttpResult;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p2}, Lretrofit2/Response;->success(Ljava/lang/Object;)Lretrofit2/Response;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-interface {p1, v0, p2}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 42
    .line 43
    .line 44
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
    if-eqz v0, :cond_3

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
    if-nez v2, :cond_2

    .line 37
    .line 38
    const-string v2, "200"

    .line 39
    .line 40
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {p1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v2, "request(...)"

    .line 52
    .line 53
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2, v0}, Lteam/opay/core/http/a;->c(Lokhttp3/Request;Lretrofit2/Response;Lteam/opay/core/http/SuspendResponse;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance p2, Lteam/opay/core/http/HttpResult$ApiResult;

    .line 61
    .line 62
    const/16 v0, 0xc8

    .line 63
    .line 64
    invoke-direct {p2, v0, v1, p1}, Lteam/opay/core/http/HttpResult$ApiResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    sget-object p1, Lteam/opay/core/http/HttpResult;->Companion:Lteam/opay/core/http/HttpResult$Companion;

    .line 69
    .line 70
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->b()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Lteam/opay/core/http/HttpResult$Companion;->a(Ljava/lang/Object;)Lteam/opay/core/http/HttpResult;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-interface {p1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget-object v0, Lteam/opay/core/biz/rbi/HttpTrack;->c:Lteam/opay/core/biz/rbi/HttpTrack$Companion;

    .line 84
    .line 85
    invoke-virtual {v0}, Lteam/opay/core/biz/rbi/HttpTrack$Companion;->a()Lteam/opay/core/biz/rbi/HttpTrack;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const-string v3, "raw(...)"

    .line 97
    .line 98
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-eqz v3, :cond_4

    .line 106
    .line 107
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    :cond_4
    invoke-virtual {v0, p1, v2, v1}, Lteam/opay/core/biz/rbi/HttpTrack;->v(Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance p1, Lretrofit2/HttpException;

    .line 115
    .line 116
    invoke-direct {p1, p2}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    .line 117
    .line 118
    .line 119
    new-instance p2, Lteam/opay/core/http/HttpResult$ApiResult;

    .line 120
    .line 121
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    const-string v1, "10000"

    .line 126
    .line 127
    invoke-virtual {p1}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-direct {p2, v0, v1, p1}, Lteam/opay/core/http/HttpResult$ApiResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :goto_1
    iget-object p1, p0, Lteam/opay/core/http/arch/SuspendHttpCall$a;->a:Lretrofit2/Callback;

    .line 135
    .line 136
    iget-object v0, p0, Lteam/opay/core/http/arch/SuspendHttpCall$a;->b:Lteam/opay/core/http/arch/SuspendHttpCall;

    .line 137
    .line 138
    invoke-static {p2}, Lretrofit2/Response;->success(Ljava/lang/Object;)Lretrofit2/Response;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-interface {p1, v0, p2}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method
