.class public interface abstract Lteam/opay/face/net/a$a;
.super Ljava/lang/Object;
.source "FaceApiService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/face/net/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J%\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00042\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u000b\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/face/net/a$a;",
        "",
        "Lteam/opay/face/net/FaceRequest;",
        "request",
        "Lretrofit2/Call;",
        "Lteam/opay/face/net/rsp/OPayFaceRsp;",
        "b",
        "(Lteam/opay/face/net/FaceRequest;)Lretrofit2/Call;",
        "req",
        "Lteam/opay/pay/api/HttpResponse;",
        "Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;",
        "a",
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


# virtual methods
.method public abstract a(Lteam/opay/face/net/FaceRequest;)Lretrofit2/Call;
    .param p1    # Lteam/opay/face/net/FaceRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/face/net/FaceRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "base-url:opayHost"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api-user/user/kyc/task/face"
    .end annotation
.end method

.method public abstract b(Lteam/opay/face/net/FaceRequest;)Lretrofit2/Call;
    .param p1    # Lteam/opay/face/net/FaceRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/face/net/FaceRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lteam/opay/face/net/rsp/OPayFaceRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "base-url:opayHost"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api-user/user/face/data/detection"
    .end annotation
.end method
