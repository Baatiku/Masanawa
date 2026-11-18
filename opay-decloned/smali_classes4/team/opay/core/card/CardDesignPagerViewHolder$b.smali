.class public final Lteam/opay/core/card/CardDesignPagerViewHolder$b;
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
        "team/opay/core/card/CardDesignPagerViewHolder$b",
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
    iput-object p1, p0, Lteam/opay/core/card/CardDesignPagerViewHolder$b;->a:Lteam/opay/core/card/CardDesignPagerViewHolder;

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
    iget-object v0, p0, Lteam/opay/core/card/CardDesignPagerViewHolder$b;->a:Lteam/opay/core/card/CardDesignPagerViewHolder;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/card/CardDesignPagerViewHolder;->g(Lteam/opay/core/card/CardDesignPagerViewHolder;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    rem-int/2addr p1, v0

    .line 8
    iget-object v0, p0, Lteam/opay/core/card/CardDesignPagerViewHolder$b;->a:Lteam/opay/core/card/CardDesignPagerViewHolder;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lteam/opay/core/card/CardDesignPagerViewHolder;->i(Lteam/opay/core/card/CardDesignPagerViewHolder;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
