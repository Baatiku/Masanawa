.class public final Lteam/opay/business/provider/active/LoopBannerView$d;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "LoopBannerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/provider/active/LoopBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/business/provider/active/LoopBannerView$d",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "",
        "position",
        "",
        "onPageSelected",
        "(I)V",
        "business-provider_release"
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
.field public final synthetic a:Lteam/opay/business/provider/active/LoopBannerView;


# direct methods
.method public constructor <init>(Lteam/opay/business/provider/active/LoopBannerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/provider/active/LoopBannerView$d;->a:Lteam/opay/business/provider/active/LoopBannerView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/business/provider/active/LoopBannerView$d;->a:Lteam/opay/business/provider/active/LoopBannerView;

    .line 5
    .line 6
    invoke-static {v0}, Lteam/opay/business/provider/active/LoopBannerView;->u(Lteam/opay/business/provider/active/LoopBannerView;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lteam/opay/business/provider/active/LoopBannerView$d;->a:Lteam/opay/business/provider/active/LoopBannerView;

    .line 20
    .line 21
    invoke-static {v0}, Lteam/opay/business/provider/active/LoopBannerView;->u(Lteam/opay/business/provider/active/LoopBannerView;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lteam/opay/business/provider/active/LoopBannerView$d;->a:Lteam/opay/business/provider/active/LoopBannerView;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    rem-int/2addr p1, v2

    .line 34
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lteam/opay/business/provider/active/BannerEntity;

    .line 39
    .line 40
    invoke-static {v1}, Lteam/opay/business/provider/active/LoopBannerView;->t(Lteam/opay/business/provider/active/LoopBannerView;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v1, p1, v0}, Lteam/opay/business/provider/active/LoopBannerView;->y(Lteam/opay/business/provider/active/LoopBannerView;Lteam/opay/business/provider/active/BannerEntity;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method
