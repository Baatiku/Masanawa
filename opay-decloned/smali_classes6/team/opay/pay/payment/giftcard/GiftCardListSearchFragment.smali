.class public final Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "GiftCardListSearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFragmentV2<",
        "Lyd6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001b\u0010\u0011\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lyd6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/payment/giftcard/GiftCardViewModel;",
        "j",
        "Lid8;",
        "S",
        "()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;",
        "viewModel",
        "Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;",
        "k",
        "R",
        "()Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;",
        "mAdapter",
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
.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment$1;->INSTANCE:Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;->j:Lid8;

    .line 33
    .line 34
    new-instance v0, Llq6;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Llq6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;->k:Lid8;

    .line 44
    .line 45
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;Lteam/opay/core/api/graphql/GiftCardProviderInfo;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;->U(Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;Lteam/opay/core/api/graphql/GiftCardProviderInfo;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;)Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;->T(Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;)Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;->V(Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final S()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final T(Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;)Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 2
    .line 3
    new-instance v1, Lmq6;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lmq6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final U(Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;Lteam/opay/core/api/graphql/GiftCardProviderInfo;I)Lkotlin/Unit;
    .locals 5

    .line 1
    const-string p2, "data"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lteam/opay/pay/base/FragmentKt;->m(Landroidx/fragment/app/Fragment;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    sget-object p2, Lx7b;->a:Lx7b;

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getProviderId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "item_id"

    .line 19
    .line 20
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "item_name"

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getProviderName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "item_type"

    .line 35
    .line 36
    const-string v3, "search"

    .line 37
    .line 38
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x3

    .line 43
    new-array v3, v3, [Lkotlin/Pair;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    aput-object v0, v3, v4

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    aput-object v1, v3, v0

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    aput-object v2, v3, v0

    .line 53
    .line 54
    const-string v0, "COMMON_gift_card_list_item_click"

    .line 55
    .line 56
    invoke-virtual {p2, v0, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 57
    .line 58
    .line 59
    sget-object p2, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->k:Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity$Companion;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string v0, "requireActivity(...)"

    .line 66
    .line 67
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p0, p1}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity$Companion;->a(Landroid/content/Context;Lteam/opay/core/api/graphql/GiftCardProviderInfo;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;Ljava/util/List;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;->R()Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getEmptyView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;->R()Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getEmptyView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "getEmptyView(...)"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;->R()Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v10, Lteam/opay/pay/kyc/view/EmptyView;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v1, "requireContext(...)"

    .line 44
    .line 45
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v5, 0x6

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v4, 0x0

    .line 52
    move-object v1, v10

    .line 53
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/kyc/view/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    .line 55
    .line 56
    sget v1, Lteam/opay/pay/R$string;->osdk_transfer_choose_beneficiary_search_no_data:I

    .line 57
    .line 58
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    sget v3, Lteam/opay/pay/R$mipmap;->ic_search_net_error:I

    .line 63
    .line 64
    const/16 v8, 0x3c

    .line 65
    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v7, 0x0

    .line 71
    move-object v1, v10

    .line 72
    invoke-static/range {v1 .. v9}, Lteam/opay/pay/kyc/view/EmptyView;->p(Lteam/opay/pay/kyc/view/EmptyView;Ljava/lang/String;ILjava/lang/String;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v10}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;->R()Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final R()Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lyd6;

    .line 14
    .line 15
    iget-object p1, p1, Lyd6;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lyd6;

    .line 34
    .line 35
    iget-object p1, p1, Lyd6;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;->R()Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;->S()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    new-instance v0, Lkq6;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lkq6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
