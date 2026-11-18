.class public final Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;
.super Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_TransactionLabelFragment;
.source "TransactionLabelFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$Companion;,
        Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$ItemAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000U\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0008*\u0001:\u0008\u0001\u0018\u0000 >2\u00020\u0001:\u0002?@B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000c\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0015R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R0\u0010*\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0007\u0018\u00010#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001e\u0010.\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u0012\u0004\u0008-\u0010\u0003R\u0018\u00100\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010,R\u0018\u00102\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u0010,R\u0018\u00104\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u0010,R\u001f\u00109\u001a\u000605R\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u0010\u001f\u001a\u0004\u00087\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<\u00a8\u0006A"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;",
        "Lteam/opay/core/common/base/BaseFragment;",
        "<init>",
        "()V",
        "Lteam/opay/core/http/internal/PagingResult;",
        "",
        "result",
        "",
        "b0",
        "(Lteam/opay/core/http/internal/PagingResult;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "W",
        "label",
        "d0",
        "(Ljava/lang/String;)V",
        "S",
        "Li76;",
        "f",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "T",
        "()Li76;",
        "binding",
        "Lteam/opay/business/transfer/flow/TransferFlowViewModel;",
        "g",
        "Lid8;",
        "Y",
        "()Lteam/opay/business/transfer/flow/TransferFlowViewModel;",
        "viewModel",
        "Lkotlin/Function1;",
        "h",
        "Lkotlin/jvm/functions/Function1;",
        "V",
        "()Lkotlin/jvm/functions/Function1;",
        "c0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onCategorySelected",
        "i",
        "Ljava/lang/String;",
        "getMenuType$annotations",
        "menuType",
        "j",
        "expenseAccountNo",
        "k",
        "expenseAccountId",
        "l",
        "orderNo",
        "Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$ItemAdapter;",
        "m",
        "U",
        "()Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$ItemAdapter;",
        "mAdapter",
        "team/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$a",
        "n",
        "Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$a;",
        "diffCallback",
        "o",
        "ItemAdapter",
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
.field public static final o:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic p:[Lzo7;
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

.field public h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/business/transfer/flow/databinding/FlowFragmentTransactionCategoryBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;

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
    sput-object v1, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->p:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->o:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget v0, Lteam/opay/business/transfer/flow/R$layout;->flow_fragment_transaction_category:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_TransactionLabelFragment;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 7
    .line 8
    const-class v1, Li76;

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->f:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

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
    new-instance v1, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$special$$inlined$activityViewModels$default$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$special$$inlined$activityViewModels$default$2;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v2, v3, p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$special$$inlined$activityViewModels$default$3;

    .line 33
    .line 34
    invoke-direct {v3, p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->g:Lid8;

    .line 42
    .line 43
    new-instance v0, Ldze;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Ldze;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->m:Lid8;

    .line 53
    .line 54
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$a;

    .line 55
    .line 56
    invoke-direct {v0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$a;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->n:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$a;

    .line 60
    .line 61
    return-void
.end method

.method public static synthetic F(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->a0(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;Landroidx/paging/PagingData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->X(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;Landroidx/paging/PagingData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$ItemAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->Z(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$ItemAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->e0(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic J(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)Li76;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->T()Li76;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic K(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->n:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic L(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic M(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$ItemAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->U()Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$ItemAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic N(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)Landroid/os/Handler;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseFragment;->getMHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic O(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic P(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Q(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)Lteam/opay/business/transfer/flow/TransferFlowViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->Y()Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic R(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;Lteam/opay/core/http/internal/PagingResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->b0(Lteam/opay/core/http/internal/PagingResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final X(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;Landroidx/paging/PagingData;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->U()Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$ItemAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v1, "<get-lifecycle>(...)"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0, p1}, Landroidx/paging/PagingDataAdapter;->s(Landroidx/lifecycle/Lifecycle;Landroidx/paging/PagingData;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private final Y()Lteam/opay/business/transfer/flow/TransferFlowViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->g:Lid8;

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

.method public static final Z(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$ItemAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$ItemAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$ItemAdapter;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Leze;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Leze;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$ItemAdapter;->x(Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final a0(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->d0(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final b0(Lteam/opay/core/http/internal/PagingResult;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/internal/PagingResult<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lkk8;->c:Lkk8;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->e()Lteam/opay/core/http/arch/Status;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->a()Lteam/opay/core/http/arch/ApiError;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v3, v4

    .line 24
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v6, "onPagingResult -> page = "

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", status = "

    .line 38
    .line 39
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " errorMsg="

    .line 46
    .line 47
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x2

    .line 58
    invoke-static {v0, v1, v4, v2, v4}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    new-instance v8, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$onPagingResult$1;

    .line 70
    .line 71
    invoke-direct {v8, p1, p0, v4}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$onPagingResult$1;-><init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;Ljr2;)V

    .line 72
    .line 73
    .line 74
    const/4 v9, 0x2

    .line 75
    const/4 v10, 0x0

    .line 76
    const/4 v7, 0x0

    .line 77
    invoke-static/range {v5 .. v10}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static final e0(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->S(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "orderNo"

    .line 11
    .line 12
    iget-object p0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->l:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v2, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "categoryLabel"

    .line 19
    .line 20
    invoke-static {v2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v2, 0x2

    .line 25
    new-array v2, v2, [Lkotlin/Pair;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object p0, v2, v3

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    aput-object p1, v2, p0

    .line 32
    .line 33
    const-string p0, "bind_transaction_label_confirm"

    .line 34
    .line 35
    invoke-virtual {v0, v1, p0, v2}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method


# virtual methods
.method public final S(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;Ljava/lang/String;Ljr2;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleCoroutineScope;->b(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/l;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final T()Li76;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->f:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->p:[Lzo7;

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
    check-cast v0, Li76;

    .line 13
    .line 14
    return-object v0
.end method

.method public final U()Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$ItemAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$ItemAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final V()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->h:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W()V
    .locals 7

    .line 1
    new-instance v6, Lteam/opay/business/transfer/flow/api/TransLabelReq;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->j:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x6

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    move-object v0, v6

    .line 10
    invoke-direct/range {v0 .. v5}, Lteam/opay/business/transfer/flow/api/TransLabelReq;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->Y()Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lteam/opay/core/http/internal/PagingResultWrapper;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "<get-lifecycle>(...)"

    .line 24
    .line 25
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$getTransactionCategory$1;

    .line 29
    .line 30
    invoke-direct {v3, p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$getTransactionCategory$1;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v3}, Lteam/opay/core/http/internal/PagingResultWrapper;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v6, v1}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->G(Lteam/opay/business/transfer/flow/api/TransLabelReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Landroidx/lifecycle/LiveData;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcze;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcze;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p0, v1}, Lmna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final c0(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->h:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final d0(Ljava/lang/String;)V
    .locals 12

    .line 1
    new-instance v11, Lteam/opay/core/common/base/DialogInfo;

    .line 2
    .line 3
    sget v0, Lteam/opay/business/transfer/flow/R$string;->flow_confirm_label:I

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->l:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v1, v2, v3

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    aput-object p1, v2, v1

    .line 15
    .line 16
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v0, "getString(...)"

    .line 21
    .line 22
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget v1, Lteam/opay/core/common/R$string;->common_confirm:I

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget v1, Lteam/opay/core/common/R$string;->common_cancel:I

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/16 v9, 0xa3

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v1, 0x0

    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    const/4 v7, 0x1

    .line 50
    const/4 v8, 0x0

    .line 51
    move-object v0, v11

    .line 52
    invoke-direct/range {v0 .. v10}, Lteam/opay/core/common/base/DialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lteam/opay/core/common/base/CorpDialogFragment;->u:Lteam/opay/core/common/base/CorpDialogFragment$Companion;

    .line 56
    .line 57
    invoke-virtual {v0, v11}, Lteam/opay/core/common/base/CorpDialogFragment$Companion;->a(Lteam/opay/core/common/base/DialogInfo;)Lteam/opay/core/common/base/CorpDialogFragment;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Lfze;

    .line 62
    .line 63
    invoke-direct {v1, p0, p1}, Lfze;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lteam/opay/core/common/base/CorpDialogFragment;->m0(Lkotlin/jvm/functions/Function0;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v0}, Lre6;->l(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v1, "menuType"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p1, v0

    .line 21
    :goto_0
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->i:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const-string v1, "orderNo"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object p1, v0

    .line 37
    :goto_1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->l:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    const-string v1, "expenseAccountNo"

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move-object p1, v0

    .line 53
    :goto_2
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->j:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    const-string v0, "expenseAccountId"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :cond_3
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->k:Ljava/lang/String;

    .line 68
    .line 69
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->l:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_4

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    return-void

    .line 81
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseFragment;->onBackPressed()Z

    .line 82
    .line 83
    .line 84
    return-void
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
    invoke-super {p0, p1, p2}, Lteam/opay/core/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->T()Li76;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Li76;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->U()Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$ItemAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->W()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
