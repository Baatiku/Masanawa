.class public final Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;
.super Lteam/opay/pay/history/details/Hilt_VoucherPackageDetailsDialogFragment;
.source "VoucherPackageDetailsDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/history/details/Hilt_VoucherPackageDetailsDialogFragment<",
        "Ljya;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 $2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001%B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001b\u0010\u0011\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u000e\u001a\u0004\u0008\u001c\u0010\u001dR\u001d\u0010#\u001a\u0004\u0018\u00010\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u000e\u001a\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;",
        "Lteam/opay/core/base/BaseSheetFragmentV2;",
        "Ljya;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/history/details/VoucherPackageDetailsViewModel;",
        "p",
        "Lid8;",
        "X",
        "()Lteam/opay/pay/history/details/VoucherPackageDetailsViewModel;",
        "viewmodel",
        "",
        "q",
        "Z",
        "I",
        "()Z",
        "setSupportBgTransparent",
        "(Z)V",
        "supportBgTransparent",
        "Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;",
        "r",
        "W",
        "()Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;",
        "bodyAdapter",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;",
        "s",
        "Y",
        "()Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;",
        "voucherPackageRsp",
        "t",
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
.field public static final t:Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Z

.field public final r:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->t:Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$1;->INSTANCE:Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/history/details/Hilt_VoucherPackageDetailsDialogFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lteam/opay/pay/history/details/VoucherPackageDetailsViewModel;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$special$$inlined$viewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$special$$inlined$viewModels$default$4;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$special$$inlined$viewModels$default$5;

    .line 40
    .line 41
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->p:Lid8;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->q:Z

    .line 52
    .line 53
    new-instance v0, Li3g;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Li3g;-><init>(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->r:Lid8;

    .line 63
    .line 64
    new-instance v0, Lj3g;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Lj3g;-><init>(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->s:Lid8;

    .line 74
    .line 75
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->b0(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->a0(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->Z(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->V(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->U(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final U(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2, v1}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->X()Lteam/opay/pay/history/details/VoucherPackageDetailsViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->Y()Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lteam/opay/pay/history/details/VoucherPackageDetailsViewModel;->s(Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lm3g;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lm3g;-><init>(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->J(Lkotlin/jvm/functions/Function2;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public static final V(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "entry"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getType()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "mobile"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->getAppContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p1, p2}, Lteam/opay/core/android/ContextKt;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->getAppContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getLink()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    const-string p2, ""

    .line 46
    .line 47
    :cond_1
    invoke-static {p1, p2}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 51
    .line 52
    .line 53
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0
.end method

.method public static final Z(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)Lkotlin/Unit;
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

.method public static final a0(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)Lkotlin/Unit;
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

.method public static final b0(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "key_voucher_package_rsp"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method


# virtual methods
.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public final W()Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->r:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final X()Lteam/opay/pay/history/details/VoucherPackageDetailsViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/history/details/VoucherPackageDetailsViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Y()Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->s:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;

    .line 8
    .line 9
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
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
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljya;

    .line 14
    .line 15
    iget-object p1, p1, Ljya;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Ljya;

    .line 22
    .line 23
    iget-object p2, p2, Ljya;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v0, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 30
    .line 31
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "requireContext(...)"

    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Ljmf;->q(Landroid/content/Context;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/high16 v1, 0x3f000000    # 0.5f

    .line 50
    .line 51
    invoke-static {v0, v1}, Ljmf;->x(IF)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:I

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->W()Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    .line 78
    .line 79
    new-instance p2, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 80
    .line 81
    const/4 v0, 0x7

    .line 82
    invoke-static {v0}, Ljmf;->d(I)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const/16 v9, 0x7c

    .line 87
    .line 88
    const/4 v10, 0x0

    .line 89
    const/4 v2, 0x0

    .line 90
    const/4 v4, 0x0

    .line 91
    const/4 v5, 0x0

    .line 92
    const/4 v6, 0x0

    .line 93
    const/4 v7, 0x0

    .line 94
    const/4 v8, 0x0

    .line 95
    move-object v1, p2

    .line 96
    invoke-direct/range {v1 .. v10}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Ljya;

    .line 107
    .line 108
    iget-object p1, p1, Ljya;->c:Lcom/google/android/material/button/MaterialButton;

    .line 109
    .line 110
    const-string p2, "btnConfirm"

    .line 111
    .line 112
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance p2, Lk3g;

    .line 116
    .line 117
    invoke-direct {p2, p0}, Lk3g;-><init>(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)V

    .line 118
    .line 119
    .line 120
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Ljya;

    .line 128
    .line 129
    iget-object p1, p1, Ljya;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 130
    .line 131
    const-string p2, "close"

    .line 132
    .line 133
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance p2, Ll3g;

    .line 137
    .line 138
    invoke-direct {p2, p0}, Ll3g;-><init>(Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;)V

    .line 139
    .line 140
    .line 141
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Ljya;

    .line 149
    .line 150
    iget-object p1, p1, Ljya;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    invoke-virtual {p0}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->Y()Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    const/4 v0, 0x0

    .line 157
    if-eqz p2, :cond_0

    .line 158
    .line 159
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;->getTitle()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    goto :goto_0

    .line 164
    :cond_0
    move-object p2, v0

    .line 165
    :goto_0
    const-string v1, ""

    .line 166
    .line 167
    if-nez p2, :cond_1

    .line 168
    .line 169
    move-object p2, v1

    .line 170
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->Y()Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    if-eqz p1, :cond_5

    .line 178
    .line 179
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;->getSingleDetail()Ljava/util/LinkedHashMap;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    if-eqz p1, :cond_5

    .line 184
    .line 185
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    move-object p2, v1

    .line 194
    move-object v2, p2

    .line 195
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_4

    .line 200
    .line 201
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    check-cast p2, Ljava/util/Map$Entry;

    .line 206
    .line 207
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    check-cast p2, Ljava/util/List;

    .line 216
    .line 217
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    check-cast p2, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 222
    .line 223
    if-eqz p2, :cond_3

    .line 224
    .line 225
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    goto :goto_2

    .line 230
    :cond_3
    move-object p2, v0

    .line 231
    :goto_2
    if-nez p2, :cond_2

    .line 232
    .line 233
    move-object p2, v1

    .line 234
    goto :goto_1

    .line 235
    :cond_4
    move-object v1, v2

    .line 236
    goto :goto_3

    .line 237
    :cond_5
    move-object p2, v1

    .line 238
    :goto_3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Ljya;

    .line 243
    .line 244
    iget-object p1, p1, Ljya;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 245
    .line 246
    check-cast v1, Ljava/lang/CharSequence;

    .line 247
    .line 248
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Ljya;

    .line 256
    .line 257
    iget-object p1, p1, Ljya;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 258
    .line 259
    invoke-static {p2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    return-void
.end method
