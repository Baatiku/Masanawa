.class public final Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment$a;
.super Ljava/lang/Object;
.source "OCustomerServiceNoticeFAQFragment.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment$a;->a:Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment$a;->a:Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;->R(Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;)Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string p1, "adapter"

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;->F()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment$a;->a:Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;

    .line 20
    .line 21
    invoke-virtual {p2}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lld6;

    .line 26
    .line 27
    iget-object p2, p2, Lld6;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object p2, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment$a;->a:Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;

    .line 48
    .line 49
    invoke-virtual {p2}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lld6;

    .line 54
    .line 55
    iget-object v0, v0, Lld6;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 56
    .line 57
    const-string v1, "pager"

    .line 58
    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p2, p1, v0}, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;->S(Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p1
.end method
