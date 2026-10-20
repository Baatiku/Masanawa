.class public interface abstract Lcom/opay/team/home/api/HomeApiService$c;
.super Ljava/lang/Object;
.source "HomeApiService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opay/team/home/api/HomeApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J!\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00030\u0002H\'\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/opay/team/home/api/HomeApiService$c;",
        "",
        "Lretrofit2/Call;",
        "Lteam/opay/pay/api/HttpResponse;",
        "",
        "Lcom/opay/team/home/bean/RecommendActivityData;",
        "a",
        "()Lretrofit2/Call;",
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
            "Ljava/util/List<",
            "Lcom/opay/team/home/bean/RecommendActivityData;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "base-url:market"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "marketing/userTag/activityRecommend"
    .end annotation
.end method
