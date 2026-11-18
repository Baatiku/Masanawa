.class public final Lcom/opay/webview/auth/WebAuth$getAccessToken$1;
.super Ljava/lang/Object;
.source "WebAuth.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/webview/auth/WebAuth;->i(Lcom/opay/webview/net/TokenRequest;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/opay/webview/net/TokenRequestRsp;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001e\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J$\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/opay/webview/auth/WebAuth$getAccessToken$1",
        "Lretrofit2/Callback;",
        "Lcom/opay/webview/net/TokenRequestRsp;",
        "onFailure",
        "",
        "call",
        "Lretrofit2/Call;",
        "t",
        "",
        "onResponse",
        "response",
        "Lretrofit2/Response;",
        "webview_lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/opay/webview/auth/WebAuth;

.field public final synthetic c:Lcom/opay/webview/net/TokenRequest;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/opay/webview/auth/WebAuth;Lcom/opay/webview/net/TokenRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/opay/webview/auth/WebAuth;",
            "Lcom/opay/webview/net/TokenRequest;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->b:Lcom/opay/webview/auth/WebAuth;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->c:Lcom/opay/webview/net/TokenRequest;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/opay/webview/net/TokenRequestRsp;",
            ">;",
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
    const-string p1, "t"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->a:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->b:Lcom/opay/webview/auth/WebAuth;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/opay/webview/auth/WebAuth;->b(Lcom/opay/webview/auth/WebAuth;)Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    sget v0, Lcom/opay/webview/R$string;->web_foundation_network_error:I

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v0, "context.getString(R.stri\u2026foundation_network_error)"

    .line 30
    .line 31
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Lcom/opay/webview/auth/WebAuth;->e(Lcom/opay/webview/auth/WebAuth;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/opay/webview/net/TokenRequestRsp;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/opay/webview/net/TokenRequestRsp;",
            ">;)V"
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
    const-string p1, "response"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/opay/webview/net/TokenRequestRsp;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/opay/webview/net/TokenRequestRsp;->a()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, p2

    .line 26
    :goto_0
    const-string v1, "00000"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object p2, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->a:Lkotlin/jvm/functions/Function1;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/opay/webview/net/TokenRequestRsp;->b()Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_1
    const-string v1, "05003"

    .line 46
    .line 47
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const-string v1, ""

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->b:Lcom/opay/webview/auth/WebAuth;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/opay/webview/auth/WebAuth;->c(Lcom/opay/webview/auth/WebAuth;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v2, 0x1

    .line 62
    if-le v0, v2, :cond_3

    .line 63
    .line 64
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->a:Lkotlin/jvm/functions/Function1;

    .line 65
    .line 66
    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->b:Lcom/opay/webview/auth/WebAuth;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/opay/webview/net/TokenRequestRsp;->c()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move-object v1, p1

    .line 79
    :goto_1
    invoke-static {p2, v1}, Lcom/opay/webview/auth/WebAuth;->e(Lcom/opay/webview/auth/WebAuth;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    iget-object p1, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->b:Lcom/opay/webview/auth/WebAuth;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/opay/webview/auth/WebAuth;->c(Lcom/opay/webview/auth/WebAuth;)I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    add-int/2addr p2, v2

    .line 90
    invoke-static {p1, p2}, Lcom/opay/webview/auth/WebAuth;->d(Lcom/opay/webview/auth/WebAuth;I)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->b:Lcom/opay/webview/auth/WebAuth;

    .line 94
    .line 95
    new-instance p2, Lcom/opay/webview/net/AuthRequest;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->c:Lcom/opay/webview/net/TokenRequest;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/opay/webview/net/TokenRequest;->a()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->c:Lcom/opay/webview/net/TokenRequest;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/opay/webview/net/TokenRequest;->d()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const/4 v4, 0x4

    .line 110
    const/4 v5, 0x0

    .line 111
    const/4 v3, 0x0

    .line 112
    move-object v0, p2

    .line 113
    invoke-direct/range {v0 .. v5}, Lcom/opay/webview/net/AuthRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1$onResponse$1;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->c:Lcom/opay/webview/net/TokenRequest;

    .line 119
    .line 120
    iget-object v2, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->b:Lcom/opay/webview/auth/WebAuth;

    .line 121
    .line 122
    iget-object v3, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->a:Lkotlin/jvm/functions/Function1;

    .line 123
    .line 124
    invoke-direct {v0, v1, v2, v3}, Lcom/opay/webview/auth/WebAuth$getAccessToken$1$onResponse$1;-><init>(Lcom/opay/webview/net/TokenRequest;Lcom/opay/webview/auth/WebAuth;Lkotlin/jvm/functions/Function1;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p1, p2, v0}, Lcom/opay/webview/auth/WebAuth;->a(Lcom/opay/webview/auth/WebAuth;Lcom/opay/webview/net/AuthRequest;Lkotlin/jvm/functions/Function1;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->a:Lkotlin/jvm/functions/Function1;

    .line 132
    .line 133
    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;->b:Lcom/opay/webview/auth/WebAuth;

    .line 137
    .line 138
    if-eqz p1, :cond_5

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/opay/webview/net/TokenRequestRsp;->c()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    :cond_5
    if-nez p2, :cond_6

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    move-object v1, p2

    .line 148
    :goto_2
    invoke-static {v0, v1}, Lcom/opay/webview/auth/WebAuth;->e(Lcom/opay/webview/auth/WebAuth;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :goto_3
    return-void
.end method
