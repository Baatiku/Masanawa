.class public final Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "OCustomerServiceNoticeFAQFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFragmentV2<",
        "Lld6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lld6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "pager",
        "U",
        "(Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;)V",
        "Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;",
        "j",
        "Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;",
        "adapter",
        "k",
        "Companion",
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


# static fields
.field public static final k:Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public j:Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;->k:Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment$1;->INSTANCE:Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic O()V
    .locals 0

    .line 1
    invoke-static {}, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;->W()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Lteam/opay/core/api/graphql/OCustomerServiceTabData;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;->T(Lteam/opay/core/api/graphql/OCustomerServiceTabData;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q(Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;->V(Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic R(Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;)Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;->j:Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic S(Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;->U(Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final T(Lteam/opay/core/api/graphql/OCustomerServiceTabData;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/OCustomerServiceTabData;->getCategories()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    if-nez p0, :cond_1

    .line 27
    .line 28
    const-string p0, ""

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static final V(Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p2}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lld6;

    .line 49
    .line 50
    iget-object p0, p0, Lld6;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 51
    .line 52
    new-instance p1, Lb3a;

    .line 53
    .line 54
    invoke-direct {p1}, Lb3a;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static final W()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "update_customer_viewpager_height"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-static {v0, v3, v4, v1, v2}, Lteam/opay/pay/util/FlowBus;->h(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final U(Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, La3a;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p0}, La3a;-><init>(Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "key_data"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    instance-of p2, p1, Lteam/opay/core/api/graphql/OCustomerServiceTabData;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    check-cast p1, Lteam/opay/core/api/graphql/OCustomerServiceTabData;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p1, v0

    .line 28
    :goto_0
    if-nez p1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const-string v1, "key_position"

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    new-instance v1, Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;

    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/OCustomerServiceTabData;->getCategories()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :cond_2
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/OCustomerServiceTabData;->getId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-nez v3, :cond_3

    .line 58
    .line 59
    const-string v3, ""

    .line 60
    .line 61
    :cond_3
    if-nez p2, :cond_4

    .line 62
    .line 63
    const/4 p2, 0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    const/4 p2, 0x0

    .line 66
    :goto_1
    invoke-direct {v1, p0, v2, v3, p2}, Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;->j:Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;

    .line 70
    .line 71
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Lld6;

    .line 76
    .line 77
    iget-object p2, p2, Lld6;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 78
    .line 79
    iget-object v1, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;->j:Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;

    .line 80
    .line 81
    if-nez v1, :cond_5

    .line 82
    .line 83
    const-string v1, "adapter"

    .line 84
    .line 85
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    move-object v0, v1

    .line 90
    :goto_2
    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 91
    .line 92
    .line 93
    new-instance p2, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 94
    .line 95
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lld6;

    .line 100
    .line 101
    iget-object v0, v0, Lld6;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 102
    .line 103
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lld6;

    .line 108
    .line 109
    iget-object v1, v1, Lld6;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 110
    .line 111
    new-instance v2, Lz2a;

    .line 112
    .line 113
    invoke-direct {v2, p1}, Lz2a;-><init>(Lteam/opay/core/api/graphql/OCustomerServiceTabData;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p2, v0, v1, v2}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 120
    .line 121
    .line 122
    sget-object p1, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 123
    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    const-string v0, "getViewLifecycleOwner(...)"

    .line 129
    .line 130
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance v0, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment$a;

    .line 134
    .line 135
    invoke-direct {v0, p0}, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment$a;-><init>(Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;)V

    .line 136
    .line 137
    .line 138
    const-string v1, "update_customer_viewpager_height_in_sub_tab"

    .line 139
    .line 140
    invoke-virtual {p1, p2, v1, v0}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method
