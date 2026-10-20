.class public final Lteam/opay/pay/module/offers/HotOffersFragment$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "HotOffersFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/module/offers/HotOffersFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/pay/module/offers/HotOffersFragment$b",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "",
        "position",
        "",
        "onPageSelected",
        "(I)V",
        "state",
        "onPageScrollStateChanged",
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
.field public final synthetic a:Lteam/opay/pay/module/offers/HotOffersFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/module/offers/HotOffersFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/module/offers/HotOffersFragment$b;->a:Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/pay/module/offers/HotOffersFragment$b;->a:Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/module/offers/HotOffersFragment;->z0()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/pay/module/offers/HotOffersFragment$b;->a:Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 15
    .line 16
    invoke-static {p1}, Lteam/opay/pay/module/offers/HotOffersFragment;->f0(Lteam/opay/pay/module/offers/HotOffersFragment;)Lteam/opay/pay/widget/internal/ViewPager2Helper;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lteam/opay/pay/module/offers/HotOffersFragment$b;->a:Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lteam/opay/pay/module/offers/HotOffersFragment$b;->a:Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 27
    .line 28
    invoke-virtual {v1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lyya;

    .line 33
    .line 34
    iget-object v1, v1, Lyya;->f:Landroidx/viewpager2/widget/ViewPager2;

    .line 35
    .line 36
    iget-object v2, p0, Lteam/opay/pay/module/offers/HotOffersFragment$b;->a:Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 37
    .line 38
    invoke-static {v2}, Lteam/opay/pay/module/offers/HotOffersFragment;->g0(Lteam/opay/pay/module/offers/HotOffersFragment;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    add-int/lit8 v2, v2, -0x2

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1, v2}, Lteam/opay/pay/widget/internal/ViewPager2Helper;->d(Lag8;Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/module/offers/HotOffersFragment$b;->a:Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 49
    .line 50
    invoke-virtual {p1}, Lteam/opay/pay/module/offers/HotOffersFragment;->z0()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iget-object v0, p0, Lteam/opay/pay/module/offers/HotOffersFragment$b;->a:Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 55
    .line 56
    invoke-static {v0}, Lteam/opay/pay/module/offers/HotOffersFragment;->g0(Lteam/opay/pay/module/offers/HotOffersFragment;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v1, 0x1

    .line 61
    sub-int/2addr v0, v1

    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lteam/opay/pay/module/offers/HotOffersFragment$b;->a:Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 65
    .line 66
    invoke-static {p1}, Lteam/opay/pay/module/offers/HotOffersFragment;->f0(Lteam/opay/pay/module/offers/HotOffersFragment;)Lteam/opay/pay/widget/internal/ViewPager2Helper;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v0, p0, Lteam/opay/pay/module/offers/HotOffersFragment$b;->a:Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v2, p0, Lteam/opay/pay/module/offers/HotOffersFragment$b;->a:Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 77
    .line 78
    invoke-virtual {v2}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lyya;

    .line 83
    .line 84
    iget-object v2, v2, Lyya;->f:Landroidx/viewpager2/widget/ViewPager2;

    .line 85
    .line 86
    invoke-virtual {p1, v0, v2, v1}, Lteam/opay/pay/widget/internal/ViewPager2Helper;->d(Lag8;Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/module/offers/HotOffersFragment$b;->a:Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lyya;

    .line 11
    .line 12
    iget-object v0, v0, Lyya;->c:Lcom/opay/team/newhome/home/balance/HomeIndicatorView;

    .line 13
    .line 14
    iget-object v1, p0, Lteam/opay/pay/module/offers/HotOffersFragment$b;->a:Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 15
    .line 16
    invoke-static {v1}, Lteam/opay/pay/module/offers/HotOffersFragment;->g0(Lteam/opay/pay/module/offers/HotOffersFragment;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    if-ne p1, v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Lcom/opay/team/newhome/home/balance/HomeIndicatorView;->setSelectPosition(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lteam/opay/pay/module/offers/HotOffersFragment$b;->a:Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lteam/opay/pay/module/offers/HotOffersFragment;->L0(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
