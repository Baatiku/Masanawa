.class public final Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;
.super Lteam/opay/pay/payment/voucherpackage/Hilt_VoucherPackageDialogFragment;
.source "VoucherPackageDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/payment/voucherpackage/Hilt_VoucherPackageDialogFragment<",
        "Ly1b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\u000c8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;",
        "Lteam/opay/core/base/BaseDialogInjectFragmentV2;",
        "Ly1b;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "p",
        "Z",
        "getSupportBack",
        "()Z",
        "setSupportBack",
        "(Z)V",
        "supportBack",
        "Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;",
        "q",
        "Lid8;",
        "P",
        "()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;",
        "viewModel",
        "r",
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
.field public static final r:Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public p:Z

.field public final q:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->r:Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$1;->INSTANCE:Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/payment/voucherpackage/Hilt_VoucherPackageDialogFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->p:Z

    .line 8
    .line 9
    const-class v0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$special$$inlined$activityViewModels$default$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$special$$inlined$activityViewModels$default$2;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$special$$inlined$activityViewModels$default$3;

    .line 27
    .line 28
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->q:Lid8;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic M(Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->S(Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic N(Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;Ljava/lang/Long;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->Q(Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;Ljava/lang/Long;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->R(Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final P()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->q:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final Q(Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;Ljava/lang/Long;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ly1b;

    .line 6
    .line 7
    iget-object p1, p1, Ly1b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->P()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;->L()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-static {v0, v1}, Lg33;->a(J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final R(Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->P()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "COMMON_voucher_package_countdown_box_cancel_click"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;->u(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static final S(Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->P()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "COMMON_voucher_package_countdown_box_buy_click"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;->u(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->P()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;->K(Z)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->P()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;->y()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public getSupportBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    invoke-super {p0, p1, p2}, Lteam/opay/core/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->P()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x2

    .line 14
    const/4 v0, 0x0

    .line 15
    const-string v1, "COMMON_voucher_package_countdown_box_show"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {p1, v1, v2, p2, v0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;->v(Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ly1b;

    .line 26
    .line 27
    iget-object p1, p1, Ly1b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    invoke-direct {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->P()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;->L()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-static {v0, v1}, Lg33;->a(J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->P()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;->E()Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance p2, Lw3g;

    .line 53
    .line 54
    invoke-direct {p2, p0}, Lw3g;-><init>(Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$a;

    .line 58
    .line 59
    invoke-direct {v0, p2}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Ly1b;

    .line 70
    .line 71
    iget-object p1, p1, Ly1b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 72
    .line 73
    new-instance p2, Lx3g;

    .line 74
    .line 75
    invoke-direct {p2, p0}, Lx3g;-><init>(Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Ly1b;

    .line 86
    .line 87
    iget-object p1, p1, Ly1b;->c:Lcom/google/android/material/button/MaterialButton;

    .line 88
    .line 89
    new-instance p2, Ly3g;

    .line 90
    .line 91
    invoke-direct {p2, p0}, Ly3g;-><init>(Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
