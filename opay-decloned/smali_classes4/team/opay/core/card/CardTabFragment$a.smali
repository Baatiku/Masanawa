.class public final Lteam/opay/core/card/CardTabFragment$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "CardTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/card/CardTabFragment;->initView()V
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
        "team/opay/core/card/CardTabFragment$a",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "",
        "position",
        "",
        "onPageSelected",
        "(I)V",
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
.field public final synthetic a:Lteam/opay/core/card/CardTabFragment;


# direct methods
.method public constructor <init>(Lteam/opay/core/card/CardTabFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/CardTabFragment$a;->a:Lteam/opay/core/card/CardTabFragment;

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
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/core/card/CardTabFragment$a;->a:Lteam/opay/core/card/CardTabFragment;

    .line 5
    .line 6
    invoke-static {v0}, Lteam/opay/core/card/CardTabFragment;->m0(Lteam/opay/core/card/CardTabFragment;)Lteam/opay/core/card/CardViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lteam/opay/core/card/CardTabFragment$a;->a:Lteam/opay/core/card/CardTabFragment;

    .line 11
    .line 12
    invoke-static {v1}, Lteam/opay/core/card/CardTabFragment;->l0(Lteam/opay/core/card/CardTabFragment;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lteam/opay/core/card/CardViewModel;->U1(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/core/card/CardTabFragment$a;->a:Lteam/opay/core/card/CardTabFragment;

    .line 20
    .line 21
    invoke-static {v0}, Lteam/opay/core/card/CardTabFragment;->m0(Lteam/opay/core/card/CardTabFragment;)Lteam/opay/core/card/CardViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lteam/opay/core/card/CardViewModel;->F0()Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lteam/opay/core/card/CardResultData;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lteam/opay/core/card/CardResultData;->a()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v0, v1

    .line 44
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lteam/opay/core/card/CardPageData;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object p1, v1

    .line 54
    :goto_1
    iget-object v0, p0, Lteam/opay/core/card/CardTabFragment$a;->a:Lteam/opay/core/card/CardTabFragment;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Lteam/opay/core/card/CardPageData;->getHomePageFloatingWindowDto()Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1}, Lteam/opay/core/card/HomePageFloatingWindowDto;->mapToPopupData()Lteam/opay/odialog/net/AdDataItem;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :cond_2
    invoke-static {v0, v1}, Lteam/opay/core/card/CardTabFragment;->o0(Lteam/opay/core/card/CardTabFragment;Lteam/opay/odialog/net/AdDataItem;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
