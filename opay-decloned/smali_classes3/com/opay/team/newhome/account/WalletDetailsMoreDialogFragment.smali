.class public final Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;
.super Lcom/opay/team/newhome/account/Hilt_WalletDetailsMoreDialogFragment;
.source "WalletDetailsMoreDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/opay/team/newhome/account/Hilt_WalletDetailsMoreDialogFragment<",
        "Lkh3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001b\u0010\u0011\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;",
        "Lteam/opay/core/base/BaseSheetFragmentV2;",
        "Lkh3;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;",
        "p",
        "Lid8;",
        "U",
        "()Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;",
        "viewModel",
        "",
        "q",
        "Z",
        "I",
        "()Z",
        "setSupportBgTransparent",
        "(Z)V",
        "supportBgTransparent",
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
.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment$1;->INSTANCE:Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/opay/team/newhome/account/Hilt_WalletDetailsMoreDialogFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;->p:Lid8;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;->q:Z

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic P(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;->Z(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;->Y(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;->V(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;Lteam/opay/core/api/graphql/WalletDetailMoreData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;->W(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;Lteam/opay/core/api/graphql/WalletDetailMoreData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;Lteam/opay/core/api/graphql/WalletDetailMoreData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;->X(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;Lteam/opay/core/api/graphql/WalletDetailMoreData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final U()Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final V(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "requireContext(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 11
    .line 12
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "Acct Info"

    .line 25
    .line 26
    invoke-static {v0, v2, v1}, Lteam/opay/core/android/ContextKt;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget v0, Lteam/opay/pay/R$string;->osdk_copied:I

    .line 34
    .line 35
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p0, v0}, Lkmf;->J(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p0
.end method

.method public static final W(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;Lteam/opay/core/api/graphql/WalletDetailMoreData;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "requireContext(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/WalletDetailMoreData;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    :cond_0
    invoke-static {v0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final X(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;Lteam/opay/core/api/graphql/WalletDetailMoreData;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "requireContext(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/WalletDetailMoreData;->d()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    :cond_0
    invoke-static {v0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final Y(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/levels/KycLevelsActivity;->n:Lteam/opay/pay/kyc/levels/KycLevelsActivity$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "accountprofile"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/kyc/levels/KycLevelsActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static final Z(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    invoke-direct {p0}, Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;->U()Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->T()Lteam/opay/core/api/graphql/WalletDetailMoreData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 20
    .line 21
    .line 22
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Lkh3;

    .line 29
    .line 30
    iget-object p2, p2, Lkh3;->q:Landroid/widget/TextView;

    .line 31
    .line 32
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 33
    .line 34
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lsob;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Lkh3;

    .line 58
    .line 59
    iget-object p2, p2, Lkh3;->q:Landroid/widget/TextView;

    .line 60
    .line 61
    const-string v0, "tvNumer"

    .line 62
    .line 63
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Ln4g;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Ln4g;-><init>(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p2, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/WalletDetailMoreData;->e()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    if-eqz p2, :cond_4

    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    packed-switch v0, :pswitch_data_0

    .line 88
    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :pswitch_0
    const-string v0, "3"

    .line 93
    .line 94
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-nez p2, :cond_1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Lkh3;

    .line 106
    .line 107
    iget-object p2, p2, Lkh3;->i:Landroid/widget/ImageView;

    .line 108
    .line 109
    sget v0, Lteam/opay/pay/R$mipmap;->osdk_kyc_level_3:I

    .line 110
    .line 111
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Lkh3;

    .line 119
    .line 120
    iget-object p2, p2, Lkh3;->p:Landroid/widget/TextView;

    .line 121
    .line 122
    sget v0, Lteam/opay/pay/R$string;->osdk_tier3:I

    .line 123
    .line 124
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :pswitch_1
    const-string v0, "2"

    .line 133
    .line 134
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-nez p2, :cond_2

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    check-cast p2, Lkh3;

    .line 146
    .line 147
    iget-object p2, p2, Lkh3;->i:Landroid/widget/ImageView;

    .line 148
    .line 149
    sget v0, Lteam/opay/pay/R$mipmap;->osdk_kyc_level_2:I

    .line 150
    .line 151
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    check-cast p2, Lkh3;

    .line 159
    .line 160
    iget-object p2, p2, Lkh3;->p:Landroid/widget/TextView;

    .line 161
    .line 162
    sget v0, Lteam/opay/pay/R$string;->osdk_tier2:I

    .line 163
    .line 164
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :pswitch_2
    const-string v0, "1"

    .line 173
    .line 174
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-nez p2, :cond_3

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    check-cast p2, Lkh3;

    .line 186
    .line 187
    iget-object p2, p2, Lkh3;->i:Landroid/widget/ImageView;

    .line 188
    .line 189
    sget v0, Lteam/opay/pay/R$mipmap;->osdk_kyc_level_1:I

    .line 190
    .line 191
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    check-cast p2, Lkh3;

    .line 199
    .line 200
    iget-object p2, p2, Lkh3;->p:Landroid/widget/TextView;

    .line 201
    .line 202
    sget v0, Lteam/opay/pay/R$string;->osdk_tier1:I

    .line 203
    .line 204
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    check-cast p2, Lkh3;

    .line 217
    .line 218
    iget-object p2, p2, Lkh3;->i:Landroid/widget/ImageView;

    .line 219
    .line 220
    sget v0, Lteam/opay/pay/R$mipmap;->osdk_kyc_level_0:I

    .line 221
    .line 222
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    check-cast p2, Lkh3;

    .line 230
    .line 231
    iget-object p2, p2, Lkh3;->p:Landroid/widget/TextView;

    .line 232
    .line 233
    sget v0, Lteam/opay/pay/R$string;->osdk_tier0:I

    .line 234
    .line 235
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    :goto_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    check-cast p2, Lkh3;

    .line 247
    .line 248
    iget-object p2, p2, Lkh3;->c:Landroid/widget/TextView;

    .line 249
    .line 250
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/WalletDetailMoreData;->c()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    check-cast p2, Lkh3;

    .line 262
    .line 263
    iget-object p2, p2, Lkh3;->d:Landroid/widget/TextView;

    .line 264
    .line 265
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/WalletDetailMoreData;->f()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/WalletDetailMoreData;->b()Ljava/lang/Boolean;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 277
    .line 278
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result p2

    .line 282
    if-eqz p2, :cond_5

    .line 283
    .line 284
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    check-cast p2, Lkh3;

    .line 289
    .line 290
    iget-object p2, p2, Lkh3;->r:Landroid/widget/TextView;

    .line 291
    .line 292
    sget v0, Lteam/opay/pay/R$string;->osdk_on:I

    .line 293
    .line 294
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    sget v1, Lteam/opay/pay/R$color;->osdk_color_00B876:I

    .line 306
    .line 307
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    .line 313
    .line 314
    sget v0, Lteam/opay/pay/R$drawable;->shape_f8f8fb_4:I

    .line 315
    .line 316
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 317
    .line 318
    .line 319
    goto :goto_2

    .line 320
    :cond_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 321
    .line 322
    .line 323
    move-result-object p2

    .line 324
    check-cast p2, Lkh3;

    .line 325
    .line 326
    iget-object p2, p2, Lkh3;->r:Landroid/widget/TextView;

    .line 327
    .line 328
    sget v0, Lteam/opay/pay/R$string;->osdk_off:I

    .line 329
    .line 330
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    sget v1, Lteam/opay/pay/R$color;->black_65:I

    .line 342
    .line 343
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    .line 349
    .line 350
    sget v0, Lteam/opay/pay/R$drawable;->shape_f8f8fb_4:I

    .line 351
    .line 352
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 353
    .line 354
    .line 355
    :goto_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 356
    .line 357
    .line 358
    move-result-object p2

    .line 359
    check-cast p2, Lkh3;

    .line 360
    .line 361
    iget-object p2, p2, Lkh3;->f:Landroid/view/View;

    .line 362
    .line 363
    const-string v0, "btnAutoSave"

    .line 364
    .line 365
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    new-instance v0, Lo4g;

    .line 369
    .line 370
    invoke-direct {v0, p0, p1}, Lo4g;-><init>(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;Lteam/opay/core/api/graphql/WalletDetailMoreData;)V

    .line 371
    .line 372
    .line 373
    invoke-static {p2, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 377
    .line 378
    .line 379
    move-result-object p2

    .line 380
    check-cast p2, Lkh3;

    .line 381
    .line 382
    iget-object p2, p2, Lkh3;->h:Landroid/view/View;

    .line 383
    .line 384
    const-string v0, "btnInterset"

    .line 385
    .line 386
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    new-instance v0, Lp4g;

    .line 390
    .line 391
    invoke-direct {v0, p0, p1}, Lp4g;-><init>(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;Lteam/opay/core/api/graphql/WalletDetailMoreData;)V

    .line 392
    .line 393
    .line 394
    invoke-static {p2, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    check-cast p1, Lkh3;

    .line 402
    .line 403
    iget-object p1, p1, Lkh3;->b:Landroid/view/View;

    .line 404
    .line 405
    const-string p2, "accInfoLayout"

    .line 406
    .line 407
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    new-instance p2, Lq4g;

    .line 411
    .line 412
    invoke-direct {p2, p0}, Lq4g;-><init>(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;)V

    .line 413
    .line 414
    .line 415
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    check-cast p1, Lkh3;

    .line 423
    .line 424
    iget-object p1, p1, Lkh3;->g:Landroid/widget/ImageView;

    .line 425
    .line 426
    const-string p2, "btnClose"

    .line 427
    .line 428
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    new-instance p2, Lr4g;

    .line 432
    .line 433
    invoke-direct {p2, p0}, Lr4g;-><init>(Lcom/opay/team/newhome/account/WalletDetailsMoreDialogFragment;)V

    .line 434
    .line 435
    .line 436
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 437
    .line 438
    .line 439
    return-void

    .line 440
    nop

    .line 441
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
