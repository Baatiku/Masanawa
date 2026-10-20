.class public final Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;
.super Lteam/opay/business/transfer/flow/transactions/eod/Hilt_EODFragment;
.source "EODFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u0000 @2\u00020\u0001:\u0001AB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u0019\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\u000c\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u0019\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J!\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u001b\u0010 \u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u001b\u0010&\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R\u001b\u0010+\u001a\u00020\'8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010#\u001a\u0004\u0008)\u0010*R\u001b\u00100\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010#\u001a\u0004\u0008.\u0010/R\u0018\u00103\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u0010#\u001a\u0004\u00086\u00107R\u001b\u0010;\u001a\u0002048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u0010#\u001a\u0004\u0008:\u00107R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>\u00a8\u0006B"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;",
        "Lteam/opay/core/common/base/BaseFragment;",
        "<init>",
        "()V",
        "",
        "o0",
        "q0",
        "Lteam/opay/core/common/amount/MoneyAmount;",
        "wallet",
        "s0",
        "(Lteam/opay/core/common/amount/MoneyAmount;)V",
        "Z",
        "h0",
        "Lteam/opay/business/transfer/flow/api/EodMerchantInfo;",
        "info",
        "p0",
        "(Lteam/opay/business/transfer/flow/api/EodMerchantInfo;)V",
        "Lteam/opay/business/transfer/flow/api/EodInfo;",
        "eodInfo",
        "k0",
        "(Lteam/opay/business/transfer/flow/api/EodInfo;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Ly66;",
        "f",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "a0",
        "()Ly66;",
        "binding",
        "Lteam/opay/business/transfer/flow/TransferFlowViewModel;",
        "g",
        "Lid8;",
        "f0",
        "()Lteam/opay/business/transfer/flow/TransferFlowViewModel;",
        "viewModel",
        "Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;",
        "h",
        "d0",
        "()Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;",
        "mAdapter",
        "Lteam/opay/business/transfer/flow/transactions/eod/EODHolderAdapter;",
        "i",
        "c0",
        "()Lteam/opay/business/transfer/flow/transactions/eod/EODHolderAdapter;",
        "holderAdapter",
        "j",
        "Lteam/opay/core/common/amount/MoneyAmount;",
        "availableBalance",
        "",
        "k",
        "b0",
        "()Ljava/lang/String;",
        "errorString",
        "l",
        "e0",
        "maskString",
        "Lteam/opay/business/transfer/flow/api/TransactionActionResp;",
        "m",
        "Lteam/opay/business/transfer/flow/api/TransactionActionResp;",
        "actionResp",
        "n",
        "Companion",
        "business-transfer-flow_release"
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
.field public static final n:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic o:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final f:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lteam/opay/core/common/amount/MoneyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lteam/opay/business/transfer/flow/api/TransactionActionResp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/business/transfer/flow/databinding/FlowFragmentEodBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->o:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->n:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget v0, Lteam/opay/business/transfer/flow/R$layout;->flow_fragment_eod:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/business/transfer/flow/transactions/eod/Hilt_EODFragment;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 7
    .line 8
    const-class v1, Ly66;

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->f:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 14
    .line 15
    const-class v0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$special$$inlined$activityViewModels$default$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$special$$inlined$activityViewModels$default$2;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v2, v3, p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$special$$inlined$activityViewModels$default$3;

    .line 33
    .line 34
    invoke-direct {v3, p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->g:Lid8;

    .line 42
    .line 43
    new-instance v0, La45;

    .line 44
    .line 45
    invoke-direct {v0, p0}, La45;-><init>(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->h:Lid8;

    .line 53
    .line 54
    new-instance v0, Lb45;

    .line 55
    .line 56
    invoke-direct {v0}, Lb45;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->i:Lid8;

    .line 64
    .line 65
    new-instance v0, Lc45;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lc45;-><init>(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->k:Lid8;

    .line 75
    .line 76
    new-instance v0, Ld45;

    .line 77
    .line 78
    invoke-direct {v0, p0}, Ld45;-><init>(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->l:Lid8;

    .line 86
    .line 87
    return-void
.end method

.method public static synthetic F(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->i0(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G()Lteam/opay/business/transfer/flow/transactions/eod/EODHolderAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->g0()Lteam/opay/business/transfer/flow/transactions/eod/EODHolderAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic H(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Lteam/opay/business/transfer/flow/api/TransactionActionResp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->r0(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Lteam/opay/business/transfer/flow/api/TransactionActionResp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->n0(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->Y(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->j0(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->m0(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->l0(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic N(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lteam/opay/core/common/amount/MoneyAmount;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->j:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic P(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lteam/opay/business/transfer/flow/transactions/eod/EODHolderAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->c0()Lteam/opay/business/transfer/flow/transactions/eod/EODHolderAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Q(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->d0()Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic R(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lteam/opay/business/transfer/flow/TransferFlowViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->f0()Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic S(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Lteam/opay/business/transfer/flow/api/EodInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->k0(Lteam/opay/business/transfer/flow/api/EodInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic T(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Lteam/opay/business/transfer/flow/api/EodMerchantInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->p0(Lteam/opay/business/transfer/flow/api/EodMerchantInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic U(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic V(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Lteam/opay/business/transfer/flow/api/TransactionActionResp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->m:Lteam/opay/business/transfer/flow/api/TransactionActionResp;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic W(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Lteam/opay/core/common/amount/MoneyAmount;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->j:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic X(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Lteam/opay/core/common/amount/MoneyAmount;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->s0(Lteam/opay/core/common/amount/MoneyAmount;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final Y(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lteam/opay/core/common/R$string;->common_none_money_place_holder:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private final f0()Lteam/opay/business/transfer/flow/TransferFlowViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final g0()Lteam/opay/business/transfer/flow/transactions/eod/EODHolderAdapter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/eod/EODHolderAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/transfer/flow/transactions/eod/EODHolderAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final i0(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$mAdapter$2$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$mAdapter$2$1;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final j0(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lteam/opay/business/transfer/flow/R$string;->flow_money_place_holder:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final l0(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->Z()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->h0()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->m:Lteam/opay/business/transfer/flow/api/TransactionActionResp;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->o0()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static final m0(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ly66;->e:Lb96;

    .line 6
    .line 7
    iget-object v0, v0, Lb96;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Ly66;->e:Lb96;

    .line 14
    .line 15
    iget-object v1, v1, Lb96;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->isActivated()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    xor-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->j:Lteam/opay/core/common/amount/MoneyAmount;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->s0(Lteam/opay/core/common/amount/MoneyAmount;)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method public static final n0(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->j:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->Z()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->m:Lteam/opay/business/transfer/flow/api/TransactionActionResp;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->o0()V

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->h0()V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private final o0()V
    .locals 8

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/api/TransactionActionReq;

    .line 2
    .line 3
    const-string v1, "EodDailyStatistics"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lteam/opay/business/transfer/flow/api/TransactionActionReq;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v5, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$qryButtonAction$1;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v5, p0, v0, v1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$qryButtonAction$1;-><init>(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Lteam/opay/business/transfer/flow/api/TransactionActionReq;Ljr2;)V

    .line 16
    .line 17
    .line 18
    const/4 v6, 0x3

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final q0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->m:Lteam/opay/business/transfer/flow/api/TransactionActionResp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Ly66;->b:Lteam/opay/core/widget/CorpActionBar;

    .line 10
    .line 11
    sget v2, Lteam/opay/core/common/R$color;->black_65:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lteam/opay/core/widget/CorpActionBar;->setActionButtonColor(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v1, v1, Ly66;->b:Lteam/opay/core/widget/CorpActionBar;

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/TransactionActionResp;->getIcon()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget v3, Lteam/opay/business/transfer/flow/R$drawable;->flow_icon_download:I

    .line 27
    .line 28
    new-instance v4, Le45;

    .line 29
    .line 30
    invoke-direct {v4, p0, v0}, Le45;-><init>(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Lteam/opay/business/transfer/flow/api/TransactionActionResp;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2, v3, v4}, Lteam/opay/core/widget/CorpActionBar;->q(Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public static final r0(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Lteam/opay/business/transfer/flow/api/TransactionActionResp;)Lkotlin/Unit;
    .locals 10

    .line 1
    sget-object v0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    new-array v2, v2, [Lkotlin/Pair;

    .line 9
    .line 10
    const-string v3, "app_eod_download_statement_click"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v3, v2}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 13
    .line 14
    .line 15
    sget-object v4, Lud;->a:Lud;

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/TransactionActionResp;->getJumpUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const-string p0, ""

    .line 28
    .line 29
    :cond_0
    move-object v6, p0

    .line 30
    const/4 v8, 0x4

    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-static/range {v4 .. v9}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method


# virtual methods
.method public final Z()V
    .locals 6

    .line 1
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;-><init>(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Ljr2;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final a0()Ly66;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->f:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->o:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;->g(Landroidx/fragment/app/Fragment;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ly66;

    .line 13
    .line 14
    return-object v0
.end method

.method public final b0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public final c0()Lteam/opay/business/transfer/flow/transactions/eod/EODHolderAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->i:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/transfer/flow/transactions/eod/EODHolderAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final d0()Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final e0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public final h0()V
    .locals 6

    .line 1
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;-><init>(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Ljr2;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final k0(Lteam/opay/business/transfer/flow/api/EodInfo;)V
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;->m:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->m:Lteam/opay/business/transfer/flow/api/TransactionActionResp;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$Companion;->a(Lteam/opay/business/transfer/flow/api/EodInfo;Lteam/opay/business/transfer/flow/api/TransactionActionResp;)Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    :cond_0
    invoke-virtual {p1, v0}, Lteam/opay/core/common/base/BaseFragment;->setPreFragment(Landroidx/fragment/app/Fragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget v2, Lteam/opay/business/transfer/flow/R$id;->fragment_container:I

    .line 24
    .line 25
    invoke-static {v1, v2, p1, v0}, Lre6;->c(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    return-void
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
    invoke-super {p0, p1, p2}, Lteam/opay/core/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [Lkotlin/Pair;

    .line 17
    .line 18
    const-string v1, "app_eod_show"

    .line 19
    .line 20
    invoke-virtual {p1, p2, v1, v0}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p1, p1, Ly66;->g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 28
    .line 29
    sget p2, Lteam/opay/core/common/R$color;->mint:I

    .line 30
    .line 31
    filled-new-array {p2}, [I

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 36
    .line 37
    .line 38
    new-instance p2, Lf45;

    .line 39
    .line 40
    invoke-direct {p2, p0}, Lf45;-><init>(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p1, p1, Ly66;->e:Lb96;

    .line 51
    .line 52
    iget-object p1, p1, Lb96;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 53
    .line 54
    const/4 p2, 0x1

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p1, p1, Ly66;->e:Lb96;

    .line 63
    .line 64
    iget-object p1, p1, Lb96;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 65
    .line 66
    const-string p2, "iconEye"

    .line 67
    .line 68
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Lg45;

    .line 72
    .line 73
    invoke-direct {p2, p0}, Lg45;-><init>(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p1, p1, Ly66;->d:Lteam/opay/core/widget/HttpViewGroup;

    .line 84
    .line 85
    new-instance p2, Lh45;

    .line 86
    .line 87
    invoke-direct {p2, p0}, Lh45;-><init>(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Lteam/opay/core/widget/HttpViewGroup;->setOnRetryListener(Lkotlin/jvm/functions/Function0;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p1, p1, Ly66;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    .line 99
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->c0()Lteam/opay/business/transfer/flow/transactions/eod/EODHolderAdapter;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->o0()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->Z()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->h0()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final p0(Lteam/opay/business/transfer/flow/api/EodMerchantInfo;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ly66;->e:Lb96;

    .line 6
    .line 7
    iget-object v1, v0, Lb96;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/EodMerchantInfo;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v3, v2

    .line 18
    :goto_0
    const-string v4, ""

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    move-object v3, v4

    .line 23
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lb96;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/EodMerchantInfo;->b()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move-object v3, v2

    .line 36
    :goto_1
    if-nez v3, :cond_3

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    move-object v4, v3

    .line 40
    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Lb96;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    const-string v1, "accountName"

    .line 46
    .line 47
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/EodMerchantInfo;->b()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :cond_4
    const/4 p1, 0x1

    .line 57
    if-eqz v2, :cond_6

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_5

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_5
    const/4 v1, 0x0

    .line 67
    goto :goto_4

    .line 68
    :cond_6
    :goto_3
    const/4 v1, 0x1

    .line 69
    :goto_4
    xor-int/2addr p1, v1

    .line 70
    invoke-static {v0, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final s0(Lteam/opay/core/common/amount/MoneyAmount;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->j:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Ly66;->e:Lb96;

    .line 8
    .line 9
    iget-object v0, v0, Lb96;->k:Lteam/opay/business/widget/shimmer/CorpShimmerView;

    .line 10
    .line 11
    const-string v1, "shimmerBalance"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Ly66;->e:Lb96;

    .line 24
    .line 25
    iget-object v0, v0, Lb96;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    const-string v1, "balanceAmount"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p1, p1, Ly66;->e:Lb96;

    .line 42
    .line 43
    iget-object p1, p1, Lb96;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->b0()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v0, v0, Ly66;->e:Lb96;

    .line 58
    .line 59
    iget-object v0, v0, Lb96;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p1, p1, Ly66;->e:Lb96;

    .line 72
    .line 73
    iget-object p1, p1, Lb96;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->e0()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->a0()Ly66;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v0, v0, Ly66;->e:Lb96;

    .line 88
    .line 89
    iget-object v0, v0, Lb96;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    .line 91
    const-string v1, ""

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method
