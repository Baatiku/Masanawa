.class public final Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;
.super Lteam/opay/pay/payment/voucherpackage/Hilt_VoucherPackageActivity;
.source "VoucherPackageActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0003R\u001b\u0010\u000f\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0014\u001a\u00020\u00108VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u0019\u001a\u0004\u0018\u00010\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u000c\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "finish",
        "Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;",
        "e",
        "Lid8;",
        "I",
        "()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;",
        "viewModel",
        "Lu1b;",
        "f",
        "H",
        "()Lu1b;",
        "viewBinding",
        "Lteam/opay/pay/cashier/LifePreOrder;",
        "g",
        "G",
        "()Lteam/opay/pay/cashier/LifePreOrder;",
        "reqData",
        "h",
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
.field public static final h:Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->h:Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->osdk_voucher_package_activity:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/payment/voucherpackage/Hilt_VoucherPackageActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 12
    .line 13
    const-class v2, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$special$$inlined$viewModels$default$2;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$special$$inlined$viewModels$default$3;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->e:Lid8;

    .line 34
    .line 35
    new-instance v0, Ld3g;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Ld3g;-><init>(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->f:Lid8;

    .line 45
    .line 46
    new-instance v0, Le3g;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Le3g;-><init>(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->g:Lid8;

    .line 56
    .line 57
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;)Lteam/opay/pay/cashier/LifePreOrder;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->N(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;)Lteam/opay/pay/cashier/LifePreOrder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->K(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;Lteam/opay/pay/payment/voucherpackage/VoucherPackageResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->L(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;Lteam/opay/pay/payment/voucherpackage/VoucherPackageResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->M(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;Lteam/opay/pay/payment/voucherpackage/VoucherPackageRsq;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->J(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;Lteam/opay/pay/payment/voucherpackage/VoucherPackageRsq;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;)Lu1b;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->O(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;)Lu1b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final J(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;Lteam/opay/pay/payment/voucherpackage/VoucherPackageRsq;)Lkotlin/Unit;
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageRsq;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageRsq;->c()Lteam/opay/pay/payment/voucherpackage/VoucherPackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageInfo;->i()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p1, v0

    .line 23
    :goto_0
    if-eqz p1, :cond_3

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->H()Lu1b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lu1b;->b:Lteam/opay/core/android/views/PulseLoaderView;

    .line 37
    .line 38
    const-string v2, "vLoading"

    .line 39
    .line 40
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/16 v2, 0x8

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->I()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->G()Lteam/opay/pay/cashier/LifePreOrder;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    invoke-virtual {v2}, Lteam/opay/pay/cashier/LifePreOrder;->getServiceType()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :cond_2
    invoke-virtual {p1, v1, v0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;->z(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialog;

    .line 66
    .line 67
    invoke-direct {p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialog;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lf3g;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lf3g;-><init>(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialog;->h0(Lkotlin/jvm/functions/Function0;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string v0, "getSupportFragmentManager(...)"

    .line 83
    .line 84
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v0, "VoucherPackageDialog"

    .line 88
    .line 89
    invoke-virtual {p1, p0, v0}, Lteam/opay/core/base/BaseSheetFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->finish()V

    .line 94
    .line 95
    .line 96
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    return-object p0
.end method

.method public static final K(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->finish()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final L(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;Lteam/opay/pay/payment/voucherpackage/VoucherPackageResult;)Lkotlin/Unit;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->I()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->G()Lteam/opay/pay/cashier/LifePreOrder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/pay/cashier/LifePreOrder;->getServiceType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    const/4 v2, 0x2

    .line 20
    invoke-virtual {v0, v2, v1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;->z(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "rsqData"

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const/4 p1, -0x1

    .line 34
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->finish()V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method public static final M(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object p1, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;->r:Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment$Companion;->a()Lteam/opay/pay/payment/voucherpackage/VoucherPackageDialogFragment;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "getSupportFragmentManager(...)"

    .line 12
    .line 13
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "dialogKey"

    .line 17
    .line 18
    invoke-virtual {p1, p0, v0}, Lteam/opay/core/base/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static final N(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;)Lteam/opay/pay/cashier/LifePreOrder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "BundleData"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const-string v0, "reqData"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lteam/opay/pay/cashier/LifePreOrder;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return-object p0
.end method

.method public static final O(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;)Lu1b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lu1b;->inflate(Landroid/view/LayoutInflater;)Lu1b;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final G()Lteam/opay/pay/cashier/LifePreOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/cashier/LifePreOrder;

    .line 8
    .line 9
    return-object v0
.end method

.method public H()Lu1b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lu1b;

    .line 8
    .line 9
    return-object v0
.end method

.method public final I()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->e:Lid8;

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

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->H()Lu1b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/payment/voucherpackage/Hilt_VoucherPackageActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->G()Lteam/opay/pay/cashier/LifePreOrder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->finish()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->I()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, La3g;

    .line 23
    .line 24
    invoke-direct {v0, p0}, La3g;-><init>(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$a;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->G()Lteam/opay/pay/cashier/LifePreOrder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_7

    .line 40
    .line 41
    new-instance v9, Lteam/opay/pay/payment/voucherpackage/VoucherPackageReq;

    .line 42
    .line 43
    const/16 v7, 0x3f

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v1, 0x0

    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    move-object v0, v9

    .line 53
    invoke-direct/range {v0 .. v8}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageReq;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getProductId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getProductId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v9, v0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageReq;->setProductId(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getProductCode()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-lez v0, :cond_3

    .line 85
    .line 86
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getProductCode()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v9, v0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageReq;->setChannelProductCode(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getPaymentAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v9, v0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageReq;->setAmount(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getServiceType()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-lez v0, :cond_4

    .line 109
    .line 110
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getServiceType()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v9, v0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageReq;->setServiceType(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getProviderId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-lez v0, :cond_5

    .line 126
    .line 127
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getProviderId()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v9, v0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageReq;->setServiceId(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getRecipientAccount()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-lez v0, :cond_6

    .line 143
    .line 144
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getRecipientAccount()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {v9, p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageReq;->setRecipientAccount(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->I()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1, v9, p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;->M(Lteam/opay/pay/payment/voucherpackage/VoucherPackageReq;Lag8;)V

    .line 156
    .line 157
    .line 158
    :cond_7
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->I()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    new-instance v0, Lb3g;

    .line 167
    .line 168
    invoke-direct {v0, p0}, Lb3g;-><init>(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;)V

    .line 169
    .line 170
    .line 171
    new-instance v1, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$a;

    .line 172
    .line 173
    invoke-direct {v1, v0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->I()Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    new-instance v0, Lc3g;

    .line 188
    .line 189
    invoke-direct {v0, p0}, Lc3g;-><init>(Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;)V

    .line 190
    .line 191
    .line 192
    new-instance v1, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$a;

    .line 193
    .line 194
    invoke-direct {v1, v0}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 198
    .line 199
    .line 200
    return-void
.end method
