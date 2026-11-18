.class public final Lteam/opay/core/card/CardDesignPagerViewHolder$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "CardDesignPagerViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/card/CardDesignPagerViewHolder;-><init>(Lsb8;Lkotlin/jvm/functions/Function1;)V
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
        "team/opay/core/card/CardDesignPagerViewHolder$a",
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
.field public final synthetic a:Lteam/opay/core/card/CardDesignPagerViewHolder;


# direct methods
.method public constructor <init>(Lteam/opay/core/card/CardDesignPagerViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/CardDesignPagerViewHolder$a;->a:Lteam/opay/core/card/CardDesignPagerViewHolder;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardDesignPagerViewHolder$a;->a:Lteam/opay/core/card/CardDesignPagerViewHolder;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/card/CardDesignPagerViewHolder;->f(Lteam/opay/core/card/CardDesignPagerViewHolder;)Lteam/opay/core/card/CardDesignActData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/card/CardDesignActData;->getCardDesignList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lteam/opay/core/card/CardDesignListData;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/core/card/CardDesignListData;->getIntroduceList()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    const-string v0, "contentGroup"

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lteam/opay/core/card/CardDesignPagerViewHolder$a;->a:Lteam/opay/core/card/CardDesignPagerViewHolder;

    .line 40
    .line 41
    invoke-static {p1}, Lteam/opay/core/card/CardDesignPagerViewHolder;->h(Lteam/opay/core/card/CardDesignPagerViewHolder;)Lsb8;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p1, p1, Lsb8;->d:Landroidx/constraintlayout/widget/Group;

    .line 46
    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-object p1, p0, Lteam/opay/core/card/CardDesignPagerViewHolder$a;->a:Lteam/opay/core/card/CardDesignPagerViewHolder;

    .line 55
    .line 56
    invoke-static {p1}, Lteam/opay/core/card/CardDesignPagerViewHolder;->h(Lteam/opay/core/card/CardDesignPagerViewHolder;)Lsb8;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p1, p1, Lsb8;->d:Landroidx/constraintlayout/widget/Group;

    .line 61
    .line 62
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    return-void
.end method
