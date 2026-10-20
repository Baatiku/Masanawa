.class public final Lteam/opay/pay/customerservice/CustomerServiceTabLayout$a;
.super Ljava/lang/Object;
.source "CustomerServiceTabLayout.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->h(Lag8;Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;)V
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
.field public final synthetic a:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic b:Lteam/opay/pay/customerservice/CustomerServiceTabLayout;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Lteam/opay/pay/customerservice/CustomerServiceTabLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout$a;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout$a;->b:Lteam/opay/pay/customerservice/CustomerServiceTabLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 1
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
    iget-object p1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout$a;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of p2, p1, Lteam/opay/pay/customerservice/OCustomerServiceFAQPagerAdapter;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    check-cast p1, Lteam/opay/pay/customerservice/OCustomerServiceFAQPagerAdapter;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p1, v0

    .line 16
    :goto_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/pay/customerservice/OCustomerServiceFAQPagerAdapter;->D()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p2, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout$a;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout$a;->b:Lteam/opay/pay/customerservice/CustomerServiceTabLayout;

    .line 43
    .line 44
    iget-object p2, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout$a;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 45
    .line 46
    invoke-static {p1, v0, p2}, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->f(Lteam/opay/pay/customerservice/CustomerServiceTabLayout;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 50
    .line 51
    return-object p1
.end method
