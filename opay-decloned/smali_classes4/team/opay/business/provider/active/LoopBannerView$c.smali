.class public final Lteam/opay/business/provider/active/LoopBannerView$c;
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
        "team/opay/business/provider/active/LoopBannerView$c",
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
    iput-object p1, p0, Lteam/opay/business/provider/active/LoopBannerView$c;->a:Lteam/opay/business/provider/active/LoopBannerView;

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
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/business/provider/active/LoopBannerView$c;->a:Lteam/opay/business/provider/active/LoopBannerView;

    .line 5
    .line 6
    invoke-static {v0}, Lteam/opay/business/provider/active/LoopBannerView;->r(Lteam/opay/business/provider/active/LoopBannerView;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_5

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
    goto :goto_1

    .line 19
    :cond_0
    iget-object v0, p0, Lteam/opay/business/provider/active/LoopBannerView$c;->a:Lteam/opay/business/provider/active/LoopBannerView;

    .line 20
    .line 21
    invoke-static {v0}, Lteam/opay/business/provider/active/LoopBannerView;->r(Lteam/opay/business/provider/active/LoopBannerView;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_5

    .line 26
    .line 27
    iget-object v1, p0, Lteam/opay/business/provider/active/LoopBannerView$c;->a:Lteam/opay/business/provider/active/LoopBannerView;

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
    check-cast p1, Lteam/opay/business/provider/active/AdItem;

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-static {v1}, Lteam/opay/business/provider/active/LoopBannerView;->v(Lteam/opay/business/provider/active/LoopBannerView;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v1}, Lteam/opay/business/provider/active/LoopBannerView;->q(Lteam/opay/business/provider/active/LoopBannerView;)Lteam/opay/business/provider/active/AdInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x0

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2}, Lteam/opay/business/provider/active/AdInfo;->b()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object v2, v3

    .line 60
    :goto_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/util/List;

    .line 65
    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getId()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_5

    .line 82
    .line 83
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getId()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    sget-object v0, Lteam/opay/business/provider/active/AdpApi;->i:Lteam/opay/business/provider/active/AdpApi$Companion;

    .line 95
    .line 96
    invoke-virtual {v0}, Lteam/opay/business/provider/active/AdpApi$Companion;->a()Lteam/opay/business/provider/active/AdpApi;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v1}, Lteam/opay/business/provider/active/LoopBannerView;->q(Lteam/opay/business/provider/active/LoopBannerView;)Lteam/opay/business/provider/active/AdInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    invoke-virtual {v1}, Lteam/opay/business/provider/active/AdInfo;->b()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    :cond_4
    invoke-virtual {v0, v3, p1}, Lteam/opay/business/provider/active/AdpApi;->z(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;)Lkotlinx/coroutines/l;

    .line 111
    .line 112
    .line 113
    :cond_5
    :goto_1
    return-void
.end method
