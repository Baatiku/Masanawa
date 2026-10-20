.class public final Lteam/opay/pay/payment/giftcard/GiftCardListActivity;
.super Lteam/opay/pay/payment/giftcard/Hilt_GiftCardListActivity;
.source "GiftCardListActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u0019\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0003R\u001b\u0010\u0011\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u001a\u001a\u00020\u00168VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u000e\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/pay/payment/giftcard/GiftCardListActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "",
        "S",
        "K",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onPostCreate",
        "(Landroid/os/Bundle;)V",
        "onBackPressed",
        "Lteam/opay/pay/payment/giftcard/GiftCardViewModel;",
        "e",
        "Lid8;",
        "J",
        "()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;",
        "viewModel",
        "Lteam/opay/pay/payment/giftcard/GiftCardListHomeFragment;",
        "f",
        "Lteam/opay/pay/payment/giftcard/GiftCardListHomeFragment;",
        "listFragment",
        "Lze;",
        "g",
        "I",
        "()Lze;",
        "viewBinding",
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
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lteam/opay/pay/payment/giftcard/GiftCardListHomeFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_gift_card_list:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/payment/giftcard/Hilt_GiftCardListActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/payment/giftcard/GiftCardListActivity$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 12
    .line 13
    const-class v2, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lteam/opay/pay/payment/giftcard/GiftCardListActivity$special$$inlined$viewModels$default$2;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lteam/opay/pay/payment/giftcard/GiftCardListActivity$special$$inlined$viewModels$default$3;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->e:Lid8;

    .line 34
    .line 35
    new-instance v0, Lup6;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lup6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->g:Lid8;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->O(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)Lze;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->T(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)Lze;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;Lkotlin/Pair;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->Q(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;Lkotlin/Pair;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->R(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->M(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;Lteam/opay/core/api/graphql/GiftCardProviderResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->P(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;Lteam/opay/core/api/graphql/GiftCardProviderResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->N(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->L(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final J()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->e:Lid8;

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

.method private final K()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->I()Lze;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lze;->g:Lteam/opay/pay/payment/giftcard/OpaySearchView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/payment/giftcard/OpaySearchView;->getSearchEdit()Landroid/widget/EditText;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lwp6;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lwp6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->I()Lze;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lze;->c:Landroid/widget/TextView;

    .line 24
    .line 25
    const-string v1, "btnCancel"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lxp6;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lxp6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->I()Lze;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Lze;->g:Lteam/opay/pay/payment/giftcard/OpaySearchView;

    .line 43
    .line 44
    new-instance v1, Lyp6;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lyp6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0, v1}, Lteam/opay/pay/payment/giftcard/OpaySearchView;->d(Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static final L(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;Landroid/view/View;Z)V
    .locals 2

    .line 1
    sget-object p1, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v1, "COMMON_gift_card_list_search_click"

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->I()Lze;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lze;->c:Landroid/widget/TextView;

    .line 18
    .line 19
    const-string p2, "btnCancel"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->f:Lteam/opay/pay/payment/giftcard/GiftCardListHomeFragment;

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    sget p1, Lteam/opay/pay/R$id;->container:I

    .line 32
    .line 33
    new-instance p2, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;

    .line 34
    .line 35
    invoke-direct {p2}, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1, p2}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget p1, Lteam/opay/pay/R$id;->container:I

    .line 43
    .line 44
    new-instance p2, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;

    .line 45
    .line 46
    invoke-direct {p2}, Lteam/opay/pay/payment/giftcard/GiftCardListSearchFragment;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->f:Lteam/opay/pay/payment/giftcard/GiftCardListHomeFragment;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0, p1, p2, v0}, Lli2;->b(Landroidx/fragment/app/FragmentActivity;ILteam/opay/core/base/BaseFragmentV2;Lteam/opay/core/base/BaseFragmentV2;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method public static final M(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final N(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->J()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->T(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final O(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->S()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final P(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;Lteam/opay/core/api/graphql/GiftCardProviderResult;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->I()Lze;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lze;->f:Lteam/opay/core/android/views/PulseLoaderView;

    .line 6
    .line 7
    const-string p1, "loadingView"

    .line 8
    .line 9
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final Q(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;Lkotlin/Pair;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->I()Lze;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lze;->f:Lteam/opay/core/android/views/PulseLoaderView;

    .line 6
    .line 7
    const-string v1, "loadingView"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/16 v1, -0x3ec

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    sget v0, Lteam/opay/pay/R$mipmap;->osdk_ic_net_error:I

    .line 30
    .line 31
    :goto_0
    move v3, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    sget v0, Lteam/opay/pay/R$mipmap;->ic_error_502:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->I()Lze;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, v0, Lze;->e:Lteam/opay/pay/kyc/view/EmptyView;

    .line 41
    .line 42
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    move-object v2, p1

    .line 47
    check-cast v2, Ljava/lang/String;

    .line 48
    .line 49
    sget p1, Lteam/opay/pay/R$string;->retry:I

    .line 50
    .line 51
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    new-instance v7, Lvp6;

    .line 56
    .line 57
    invoke-direct {v7, p0}, Lvp6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)V

    .line 58
    .line 59
    .line 60
    const/16 v8, 0x18

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    invoke-static/range {v1 .. v9}, Lteam/opay/pay/kyc/view/EmptyView;->p(Lteam/opay/pay/kyc/view/EmptyView;Ljava/lang/String;ILjava/lang/String;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static final R(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->I()Lze;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lze;->e:Lteam/opay/pay/kyc/view/EmptyView;

    .line 11
    .line 12
    const-string v0, "errorView"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->I()Lze;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p1, p1, Lze;->f:Lteam/opay/core/android/views/PulseLoaderView;

    .line 25
    .line 26
    const-string v0, "loadingView"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->J()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->R(Lag8;)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method

.method private final S()V
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "new_aa_home_history_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lteam/opay/pay/home/Service;->TRANSACTION:Lteam/opay/pay/home/Service;

    .line 12
    .line 13
    invoke-virtual {v0}, Lteam/opay/pay/home/Service;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->GIFT_CARD:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, "?&key_select_code="

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, "&key_select_name=Gift Card&key_select_service="

    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, "&key_select_time=all"

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 61
    .line 62
    const-class v2, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 69
    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    const-string v2, ""

    .line 73
    .line 74
    invoke-interface {v1, p0, v0, v2}, Lteam/opay/swarmfoundation/action/IActionManager;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    return-void
.end method

.method public static final T(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)Lze;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lze;->inflate(Landroid/view/LayoutInflater;)Lze;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public I()Lze;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lze;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->I()Lze;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->I()Lze;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lze;->c:Landroid/widget/TextView;

    .line 6
    .line 7
    const-string v1, "btnCancel"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->I()Lze;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lze;->c:Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->I()Lze;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lze;->g:Lteam/opay/pay/payment/giftcard/OpaySearchView;

    .line 35
    .line 36
    invoke-virtual {v0}, Lteam/opay/pay/payment/giftcard/OpaySearchView;->getSearchEdit()Landroid/widget/EditText;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->I()Lze;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, Lze;->g:Lteam/opay/pay/payment/giftcard/OpaySearchView;

    .line 48
    .line 49
    invoke-virtual {v0}, Lteam/opay/pay/payment/giftcard/OpaySearchView;->getSearchEdit()Landroid/widget/EditText;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 58
    .line 59
    .line 60
    invoke-super {p0}, Lteam/opay/core/android/InjectableActivity;->onBackPressed()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lx7b;->a:Lx7b;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [Lkotlin/Pair;

    .line 8
    .line 9
    const-string v1, "COMMON_gift_card_list_show"

    .line 10
    .line 11
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->I()Lze;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p1, Lze;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 19
    .line 20
    sget p1, Lteam/opay/pay/R$string;->history:I

    .line 21
    .line 22
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget v4, Lteam/opay/pay/R$color;->color_00B876:I

    .line 27
    .line 28
    new-instance v5, Lrp6;

    .line 29
    .line 30
    invoke-direct {v5, p0}, Lrp6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)V

    .line 31
    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v1, 0x0

    .line 36
    const-string v3, "font/roboto_400.xml"

    .line 37
    .line 38
    invoke-static/range {v0 .. v7}, Lteam/opay/core/android/views/OpayActionBar;->j(Lteam/opay/core/android/views/OpayActionBar;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->K()V

    .line 42
    .line 43
    .line 44
    sget p1, Lteam/opay/pay/R$id;->container:I

    .line 45
    .line 46
    new-instance v0, Lteam/opay/pay/payment/giftcard/GiftCardListHomeFragment;

    .line 47
    .line 48
    invoke-direct {v0}, Lteam/opay/pay/payment/giftcard/GiftCardListHomeFragment;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->f:Lteam/opay/pay/payment/giftcard/GiftCardListHomeFragment;

    .line 52
    .line 53
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->J()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1, p0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->R(Lag8;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->J()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->K()Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v0, Lsp6;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lsp6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lteam/opay/pay/payment/giftcard/GiftCardListActivity;->J()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance v0, Ltp6;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Ltp6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardListActivity;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
