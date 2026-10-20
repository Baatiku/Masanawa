.class public final Lcom/opay/team/newhome/home/holder/HomeKycBannerViewHolder;
.super Lcom/opay/team/newhome/home/holder/HomeViewHolder;
.source "HomeKycBannerViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/holder/HomeKycBannerViewHolder;",
        "Lcom/opay/team/newhome/home/holder/HomeViewHolder;",
        "Ljja;",
        "binding",
        "<init>",
        "(Ljja;)V",
        "",
        "position",
        "Lcom/opay/team/newhome/home/bean/HomeData;",
        "data",
        "",
        "b",
        "(ILcom/opay/team/newhome/home/bean/HomeData;)V",
        "c",
        "Ljja;",
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
.field public final c:Ljja;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljja;)V
    .locals 2
    .param p1    # Ljja;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljja;->a()Lteam/opay/pay/ad/OpayAdBannerView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getRoot(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/opay/team/newhome/home/holder/HomeViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/opay/team/newhome/home/holder/HomeKycBannerViewHolder;->c:Ljja;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public b(ILcom/opay/team/newhome/home/bean/HomeData;)V
    .locals 1
    .param p2    # Lcom/opay/team/newhome/home/bean/HomeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "data"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/bean/HomeData;->c()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p2, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/16 v0, 0xa

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/opay/team/newhome/bean/HomeAdData;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/HomeAdData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/NewBusinessData;->toAdDataItem()Lteam/opay/odialog/net/AdDataItem;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p2, 0x0

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/opay/team/newhome/home/holder/HomeKycBannerViewHolder;->c:Ljja;

    .line 53
    .line 54
    iget-object p1, p1, Ljja;->b:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 55
    .line 56
    if-nez p2, :cond_2

    .line 57
    .line 58
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    :cond_2
    invoke-virtual {p1, p2}, Lteam/opay/pay/ad/OpayAdBannerView;->b(Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
