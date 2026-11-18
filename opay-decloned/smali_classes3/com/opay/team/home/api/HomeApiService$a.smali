.class public interface abstract Lcom/opay/team/home/api/HomeApiService$a;
.super Ljava/lang/Object;
.source "HomeApiService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opay/team/home/api/HomeApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u001b\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\'\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001b\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00030\u0002H\'\u00a2\u0006\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/opay/team/home/api/HomeApiService$a;",
        "",
        "Lretrofit2/Call;",
        "Lteam/opay/pay/api/HttpResponse;",
        "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
        "a",
        "()Lretrofit2/Call;",
        "Lcom/opay/team/newhome/bean/TotalAssetsV3Response;",
        "b",
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
.method public abstract a()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v2/account/detail"
    .end annotation
.end method

.method public abstract b()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lcom/opay/team/newhome/bean/TotalAssetsV3Response;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "sign_url:totalAssets"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/v2/account/assets"
    .end annotation
.end method
