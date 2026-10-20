.class public Lteam/opay/business/widget/looper/ViewPagerIndicator$b;
.super Ljava/lang/Object;
.source "ViewPagerIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/widget/looper/ViewPagerIndicator;->k(Lteam/opay/pay/widget/LoopViewPager;I)Lteam/opay/business/widget/looper/ViewPagerIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lteam/opay/business/widget/looper/ViewPagerIndicator;


# direct methods
.method public constructor <init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator$b;->b:Lteam/opay/business/widget/looper/ViewPagerIndicator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator$b;->a:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator$b;->b:Lteam/opay/business/widget/looper/ViewPagerIndicator;

    .line 2
    .line 3
    iget v1, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator$b;->a:I

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2, p3}, Lteam/opay/business/widget/looper/ViewPagerIndicator;->a(Lteam/opay/business/widget/looper/ViewPagerIndicator;IIFI)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator$b;->a:I

    .line 10
    .line 11
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator$b;->b:Lteam/opay/business/widget/looper/ViewPagerIndicator;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lteam/opay/business/widget/looper/ViewPagerIndicator;->b(Lteam/opay/business/widget/looper/ViewPagerIndicator;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
