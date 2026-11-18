.class public final Lteam/opay/pay/reward/marketing/TemplateOneFragment$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "TemplateOneFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/reward/marketing/TemplateOneFragment;->initView()V
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
        "team/opay/pay/reward/marketing/TemplateOneFragment$a",
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
.field public final synthetic a:Lteam/opay/pay/reward/marketing/TemplateOneFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/reward/marketing/TemplateOneFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/reward/marketing/TemplateOneFragment$a;->a:Lteam/opay/pay/reward/marketing/TemplateOneFragment;

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
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/reward/marketing/TemplateOneFragment$a;->a:Lteam/opay/pay/reward/marketing/TemplateOneFragment;

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lc0b;

    .line 11
    .line 12
    iget-object v0, v0, Lc0b;->b:Lteam/opay/pay/wallet/view/Pager2IndicatorView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lteam/opay/pay/wallet/view/Pager2IndicatorView;->onPageSelected(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
