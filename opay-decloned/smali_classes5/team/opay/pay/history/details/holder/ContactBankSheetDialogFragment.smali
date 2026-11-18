.class public final Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;
.super Lteam/opay/pay/history/details/holder/Hilt_ContactBankSheetDialogFragment;
.source "ContactBankSheetDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/history/details/holder/Hilt_ContactBankSheetDialogFragment<",
        "Ldxa;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00162\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;",
        "Lteam/opay/core/base/BaseSheetFragmentV2;",
        "Ldxa;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "action",
        "V",
        "(Ljava/lang/String;)V",
        "Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;",
        "p",
        "Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;",
        "data",
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
.field public static final q:Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public p:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->q:Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment$1;->INSTANCE:Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/history/details/holder/Hilt_ContactBankSheetDialogFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->T(Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->U(Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->S(Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "bank_call_pop_contact_click"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->V(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "requireContext(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->p:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;->getBankMobile()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    if-nez p0, :cond_1

    .line 26
    .line 27
    const-string p0, ""

    .line 28
    .line 29
    :cond_1
    invoke-static {v0, p0}, Lteam/opay/core/android/ContextKt;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "bank_call_pop_copy_click"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->V(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "requireContext(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "Session ID"

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Lteam/opay/core/android/ContextKt;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/history/details/holder/Hilt_ContactBankSheetDialogFragment;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sget p1, Lteam/opay/pay/R$string;->clipboard_copy:I

    .line 25
    .line 26
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p0, p1}, Lkmf;->J(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method

.method public static final U(Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "bank_call_pop_close_click"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->V(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public final V(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->p:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;->getOrderNo()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v2

    .line 14
    :goto_0
    const-string v3, "order_no"

    .line 15
    .line 16
    invoke-static {v3, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v3, p0, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->p:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {v3}, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;->getType()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v3, v2

    .line 30
    :goto_1
    const-string v4, "type"

    .line 31
    .line 32
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v4, p0, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->p:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 37
    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-virtual {v4}, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;->getFrom()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_2
    const-string v4, "from"

    .line 45
    .line 46
    invoke-static {v4, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v4, 0x3

    .line 51
    new-array v4, v4, [Lkotlin/Pair;

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    aput-object v1, v4, v5

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    aput-object v3, v4, v1

    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    aput-object v2, v4, v1

    .line 61
    .line 62
    invoke-virtual {v0, p1, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/core/base/BaseSheetFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    sget v0, Lteam/opay/pay/R$style;->osdk_bottom_sheet:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v0, "key_data"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, p2

    .line 24
    :goto_0
    instance-of v0, p1, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p1, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object p1, p2

    .line 32
    :goto_1
    iput-object p1, p0, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->p:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ldxa;

    .line 39
    .line 40
    iget-object p1, p1, Ldxa;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 41
    .line 42
    const-string v0, "bankIcon"

    .line 43
    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->p:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;->getBankLogo()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move-object v0, p2

    .line 57
    :goto_2
    const-string v1, ""

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    move-object v0, v1

    .line 62
    :cond_3
    const/4 v2, 0x0

    .line 63
    const/4 v3, 0x2

    .line 64
    invoke-static {p1, v0, v2, v3, p2}, Lkzf;->k(Landroid/widget/ImageView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Ldxa;

    .line 72
    .line 73
    iget-object p1, p1, Ldxa;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    iget-object v0, p0, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->p:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;->getBankName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move-object v0, p2

    .line 85
    :goto_3
    if-nez v0, :cond_5

    .line 86
    .line 87
    move-object v0, v1

    .line 88
    :cond_5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->p:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 92
    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;->getBankMobile()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    goto :goto_4

    .line 100
    :cond_6
    move-object p1, p2

    .line 101
    :goto_4
    const-string v0, "bankCallMobile"

    .line 102
    .line 103
    if-eqz p1, :cond_c

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_7

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_7
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Ldxa;

    .line 117
    .line 118
    iget-object p1, p1, Ldxa;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 119
    .line 120
    iget-object v2, p0, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->p:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 121
    .line 122
    if-eqz v2, :cond_8

    .line 123
    .line 124
    invoke-virtual {v2}, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;->getBankMobile()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    goto :goto_5

    .line 129
    :cond_8
    move-object v2, p2

    .line 130
    :goto_5
    if-nez v2, :cond_9

    .line 131
    .line 132
    move-object v2, v1

    .line 133
    :cond_9
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Ldxa;

    .line 141
    .line 142
    iget-object p1, p1, Ldxa;->b:Lcom/google/android/material/button/MaterialButton;

    .line 143
    .line 144
    iget-object v2, p0, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->p:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 145
    .line 146
    if-eqz v2, :cond_a

    .line 147
    .line 148
    invoke-virtual {v2}, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;->getButtonName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    goto :goto_6

    .line 153
    :cond_a
    move-object v2, p2

    .line 154
    :goto_6
    if-nez v2, :cond_b

    .line 155
    .line 156
    move-object v2, v1

    .line 157
    :cond_b
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Ldxa;

    .line 165
    .line 166
    iget-object p1, p1, Ldxa;->b:Lcom/google/android/material/button/MaterialButton;

    .line 167
    .line 168
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    new-instance v0, Len2;

    .line 172
    .line 173
    invoke-direct {v0, p0}, Len2;-><init>(Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;)V

    .line 174
    .line 175
    .line 176
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 177
    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_c
    :goto_7
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Ldxa;

    .line 185
    .line 186
    iget-object p1, p1, Ldxa;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 187
    .line 188
    const-string v2, "bankMobile"

    .line 189
    .line 190
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Ldxa;

    .line 201
    .line 202
    iget-object p1, p1, Ldxa;->b:Lcom/google/android/material/button/MaterialButton;

    .line 203
    .line 204
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 208
    .line 209
    .line 210
    :goto_8
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Ldxa;

    .line 215
    .line 216
    iget-object p1, p1, Ldxa;->h:Landroid/widget/TextView;

    .line 217
    .line 218
    if-eqz p1, :cond_e

    .line 219
    .line 220
    iget-object v0, p0, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->p:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 221
    .line 222
    if-eqz v0, :cond_d

    .line 223
    .line 224
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;->getBankTips()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    goto :goto_9

    .line 229
    :cond_d
    move-object v0, p2

    .line 230
    :goto_9
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    :cond_e
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    check-cast p1, Ldxa;

    .line 238
    .line 239
    iget-object p1, p1, Ldxa;->i:Landroid/widget/TextView;

    .line 240
    .line 241
    iget-object v0, p0, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->p:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 242
    .line 243
    if-eqz v0, :cond_f

    .line 244
    .line 245
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;->getSessionId()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    :cond_f
    if-nez p2, :cond_10

    .line 250
    .line 251
    goto :goto_a

    .line 252
    :cond_10
    move-object v1, p2

    .line 253
    :goto_a
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 254
    .line 255
    .line 256
    move-result p2

    .line 257
    if-nez p2, :cond_11

    .line 258
    .line 259
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    check-cast p1, Ldxa;

    .line 264
    .line 265
    iget-object p1, p1, Ldxa;->g:Landroidx/constraintlayout/widget/Group;

    .line 266
    .line 267
    if-eqz p1, :cond_13

    .line 268
    .line 269
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 270
    .line 271
    .line 272
    goto :goto_b

    .line 273
    :cond_11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    check-cast p2, Ldxa;

    .line 278
    .line 279
    iget-object p2, p2, Ldxa;->g:Landroidx/constraintlayout/widget/Group;

    .line 280
    .line 281
    if-eqz p2, :cond_12

    .line 282
    .line 283
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 284
    .line 285
    .line 286
    :cond_12
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    .line 288
    .line 289
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    new-instance p2, Lfn2;

    .line 293
    .line 294
    invoke-direct {p2, p0, v1}, Lfn2;-><init>(Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 298
    .line 299
    .line 300
    :cond_13
    :goto_b
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    check-cast p1, Ldxa;

    .line 305
    .line 306
    iget-object p1, p1, Ldxa;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 307
    .line 308
    const-string p2, "close"

    .line 309
    .line 310
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    new-instance p2, Lgn2;

    .line 314
    .line 315
    invoke-direct {p2, p0}, Lgn2;-><init>(Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;)V

    .line 316
    .line 317
    .line 318
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 319
    .line 320
    .line 321
    const-string p1, "bank_call_pop_page_show"

    .line 322
    .line 323
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->V(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    return-void
.end method
