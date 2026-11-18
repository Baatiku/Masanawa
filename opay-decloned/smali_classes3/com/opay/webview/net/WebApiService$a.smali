.class public interface abstract Lcom/opay/webview/net/WebApiService$a;
.super Ljava/lang/Object;
.source "WebApiService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opay/webview/net/WebApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00042\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0008H\'\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00042\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u000cH\'\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/opay/webview/net/WebApiService$a;",
        "",
        "Lcom/opay/webview/net/AuthRequest;",
        "request",
        "Lretrofit2/Call;",
        "Lcom/opay/webview/net/AuthRequestRsp;",
        "c",
        "(Lcom/opay/webview/net/AuthRequest;)Lretrofit2/Call;",
        "Lcom/opay/webview/net/AuthCancelRequest;",
        "Lcom/opay/webview/net/AuthCancelRsp;",
        "b",
        "(Lcom/opay/webview/net/AuthCancelRequest;)Lretrofit2/Call;",
        "Lcom/opay/webview/net/TokenRequest;",
        "Lcom/opay/webview/net/TokenRequestRsp;",
        "a",
        "(Lcom/opay/webview/net/TokenRequest;)Lretrofit2/Call;",
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


# virtual methods
.method public abstract a(Lcom/opay/webview/net/TokenRequest;)Lretrofit2/Call;
    .param p1    # Lcom/opay/webview/net/TokenRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/webview/net/TokenRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/opay/webview/net/TokenRequestRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api-user/user/auth/token"
    .end annotation
.end method

.method public abstract b(Lcom/opay/webview/net/AuthCancelRequest;)Lretrofit2/Call;
    .param p1    # Lcom/opay/webview/net/AuthCancelRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/webview/net/AuthCancelRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/opay/webview/net/AuthCancelRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api-user/user/auth/cancelAuth"
    .end annotation
.end method

.method public abstract c(Lcom/opay/webview/net/AuthRequest;)Lretrofit2/Call;
    .param p1    # Lcom/opay/webview/net/AuthRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/webview/net/AuthRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/opay/webview/net/AuthRequestRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api-user/user/auth/authorize"
    .end annotation
.end method
