.class public final Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "LoopViewPager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/widget/LoopViewPager$pageListener$2;->invoke()Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\'\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "team/opay/pay/widget/LoopViewPager$pageListener$2$a",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "",
        "position",
        "",
        "onPageSelected",
        "(I)V",
        "state",
        "onPageScrollStateChanged",
        "",
        "positionOffset",
        "positionOffsetPixels",
        "onPageScrolled",
        "(IFI)V",
        "loop-viewpager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/widget/LoopViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/widget/LoopViewPager<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/widget/LoopViewPager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/widget/LoopViewPager<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;->a:Lteam/opay/pay/widget/LoopViewPager;

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
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;->a:Lteam/opay/pay/widget/LoopViewPager;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lteam/opay/pay/widget/LoopViewPager;->c(Lteam/opay/pay/widget/LoopViewPager;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;->a:Lteam/opay/pay/widget/LoopViewPager;

    .line 5
    .line 6
    invoke-static {v0, p1, p2, p3}, Lteam/opay/pay/widget/LoopViewPager;->d(Lteam/opay/pay/widget/LoopViewPager;IFI)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;->a:Lteam/opay/pay/widget/LoopViewPager;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lteam/opay/pay/widget/LoopViewPager;->e(Lteam/opay/pay/widget/LoopViewPager;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
