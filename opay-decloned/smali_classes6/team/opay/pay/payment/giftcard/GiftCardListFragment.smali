.class public final Lteam/opay/pay/payment/giftcard/GiftCardListFragment;
.super Lteam/opay/pay/payment/giftcard/Hilt_GiftCardListFragment;
.source "GiftCardListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/giftcard/GiftCardListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/payment/giftcard/Hilt_GiftCardListFragment<",
        "Lwd6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u001d2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J-\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0014\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lteam/opay/pay/payment/giftcard/GiftCardListFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lwd6;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/payment/giftcard/GiftCardViewModel;",
        "o",
        "Lid8;",
        "V",
        "()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;",
        "viewModel",
        "Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;",
        "p",
        "U",
        "()Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;",
        "mAdapter",
        "q",
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
.field public static final q:Lteam/opay/pay/payment/giftcard/GiftCardListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->q:Lteam/opay/pay/payment/giftcard/GiftCardListFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$1;->INSTANCE:Lteam/opay/pay/payment/giftcard/GiftCardListFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/payment/giftcard/Hilt_GiftCardListFragment;-><init>(Lhm6;)V

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
    new-instance v1, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->o:Lid8;

    .line 33
    .line 34
    new-instance v0, Lcq6;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcq6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->p:Lid8;

    .line 44
    .line 45
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->Z(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;Landroidx/recyclerview/widget/GridLayoutManager;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->Y(Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;Landroidx/recyclerview/widget/GridLayoutManager;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic Q(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;)Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->W(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;)Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;Lteam/opay/core/api/graphql/GiftCardProviderInfo;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->X(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;Lteam/opay/core/api/graphql/GiftCardProviderInfo;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic S(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;)Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->U()Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic T(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;)Lteam/opay/pay/payment/giftcard/GiftCardViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->V()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final U()Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->p:Lid8;

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

.method private final V()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->o:Lid8;

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

.method public static final W(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;)Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 2
    .line 3
    new-instance v1, Leq6;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Leq6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Lfq6;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lfq6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setSpanSizeLookup(Lcom/chad/library/adapter/base/BaseQuickAdapter$SpanSizeLookup;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static final X(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;Lteam/opay/core/api/graphql/GiftCardProviderInfo;I)Lkotlin/Unit;
    .locals 5

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lteam/opay/pay/base/FragmentKt;->m(Landroidx/fragment/app/Fragment;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lx7b;->a:Lx7b;

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getProviderId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "item_id"

    .line 19
    .line 20
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "item_name"

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getProviderName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-nez p2, :cond_0

    .line 35
    .line 36
    const-string p2, "hot"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string p2, "normal"

    .line 40
    .line 41
    :goto_0
    const-string v3, "item_type"

    .line 42
    .line 43
    invoke-static {v3, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const/4 v3, 0x3

    .line 48
    new-array v3, v3, [Lkotlin/Pair;

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    aput-object v1, v3, v4

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    aput-object v2, v3, v1

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    aput-object p2, v3, v1

    .line 58
    .line 59
    const-string p2, "COMMON_gift_card_list_item_click"

    .line 60
    .line 61
    invoke-virtual {v0, p2, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 62
    .line 63
    .line 64
    sget-object p2, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->k:Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity$Companion;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string v0, "requireActivity(...)"

    .line 71
    .line 72
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p0, p1}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity$Companion;->a(Landroid/content/Context;Lteam/opay/core/api/graphql/GiftCardProviderInfo;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p0
.end method

.method public static final Y(Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;Landroidx/recyclerview/widget/GridLayoutManager;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lteam/opay/pay/payment/giftcard/QuickSpanItemEntry;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/QuickSpanItemEntry;->b()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x3

    .line 15
    :goto_0
    return p0
.end method

.method public static final Z(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "s"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->U()Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;->q(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, -0x1

    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lwd6;

    .line 22
    .line 23
    iget-object v0, v0, Lwd6;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lwd6;

    .line 33
    .line 34
    iget-object p0, p0, Lwd6;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    .line 41
    .line 42
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 49
    .line 50
    .line 51
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lteam/opay/core/base/BaseFragmentV2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lwd6;

    .line 15
    .line 16
    invoke-virtual {p2}, Lwd6;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    sget v0, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 25
    .line 26
    invoke-static {p3, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
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
    const-string p2, "key_type"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 20
    .line 21
    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lwd6;

    .line 35
    .line 36
    iget-object v0, v0, Lwd6;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x3

    .line 45
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->U()Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lwd6;

    .line 63
    .line 64
    iget-object v1, v1, Lwd6;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    .line 71
    .line 72
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 76
    .line 77
    new-instance v2, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$a;

    .line 78
    .line 79
    invoke-direct {v2, v1, p0, p2}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$a;-><init>(Landroidx/recyclerview/widget/GridLayoutManager;Lteam/opay/pay/payment/giftcard/GiftCardListFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lwd6;

    .line 90
    .line 91
    iget-object v0, v0, Lwd6;->d:Lteam/opay/core/android/views/InitialsLetterBar;

    .line 92
    .line 93
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lwd6;

    .line 98
    .line 99
    iget-object v1, v1, Lwd6;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/InitialsLetterBar;->setMTextDialog(Landroid/widget/TextView;)V

    .line 102
    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/InitialsLetterBar;->setLetterSelectable(Z)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Ldq6;

    .line 109
    .line 110
    invoke-direct {v1, p0}, Ldq6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/InitialsLetterBar;->setOnTouchingLetterChangedListener(Lkotlin/jvm/functions/Function1;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    new-instance v5, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;

    .line 121
    .line 122
    const/4 v0, 0x0

    .line 123
    invoke-direct {v5, p1, p0, p2, v0}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;-><init>(Ljava/lang/String;Lteam/opay/pay/payment/giftcard/GiftCardListFragment;Lkotlin/jvm/internal/Ref$ObjectRef;Ljr2;)V

    .line 124
    .line 125
    .line 126
    const/4 v6, 0x3

    .line 127
    const/4 v7, 0x0

    .line 128
    const/4 v3, 0x0

    .line 129
    const/4 v4, 0x0

    .line 130
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 131
    .line 132
    .line 133
    return-void
.end method
