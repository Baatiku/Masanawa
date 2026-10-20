.class public final Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;
.super Lteam/opay/core/common/base/BaseFragment;
.source "RecordsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 M2\u00020\u0001:\u0001NB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\'\u0010\u000e\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u001f\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J+\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ!\u0010 \u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001c2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u0019\u0010\"\u001a\u00020\u00062\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016\u00a2\u0006\u0004\u0008\"\u0010#R\u001b\u0010)\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R\u001b\u0010/\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R\u001b\u00104\u001a\u0002008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010,\u001a\u0004\u00082\u00103R\u001b\u00109\u001a\u0002058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u0010,\u001a\u0004\u00087\u00108R\u001b\u0010>\u001a\u00020:8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010,\u001a\u0004\u0008<\u0010=R\u001b\u0010C\u001a\u00020?8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008@\u0010,\u001a\u0004\u0008A\u0010BR\u001b\u0010H\u001a\u00020D8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008E\u0010,\u001a\u0004\u0008F\u0010GR\u0014\u0010L\u001a\u00020I8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010K\u00a8\u0006O"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;",
        "Lteam/opay/core/common/base/BaseFragment;",
        "<init>",
        "()V",
        "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
        "data",
        "",
        "w0",
        "(Lteam/opay/business/transfer/flow/api/TransactionInfo;)V",
        "l0",
        "Lteam/opay/business/transfer/flow/api/TransactionsResp;",
        "res",
        "Lteam/opay/core/http/internal/PagingResult;",
        "result",
        "r0",
        "(Lteam/opay/business/transfer/flow/api/TransactionsResp;Lteam/opay/core/http/internal/PagingResult;)V",
        "v0",
        "",
        "position",
        "info",
        "q0",
        "(ILteam/opay/business/transfer/flow/api/TransactionInfo;)V",
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
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Lg76;",
        "a",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "f0",
        "()Lg76;",
        "binding",
        "Lteam/opay/business/transfer/flow/TransferFlowViewModel;",
        "b",
        "Lid8;",
        "n0",
        "()Lteam/opay/business/transfer/flow/TransferFlowViewModel;",
        "viewModel",
        "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;",
        "c",
        "h0",
        "()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;",
        "filterTask",
        "Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;",
        "d",
        "k0",
        "()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;",
        "mAdapter",
        "Lteam/opay/business/transfer/flow/transactions/transactionList/HolderTransactionAdapter;",
        "e",
        "j0",
        "()Lteam/opay/business/transfer/flow/transactions/transactionList/HolderTransactionAdapter;",
        "holderAdapter",
        "Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;",
        "f",
        "i0",
        "()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;",
        "footerAdapter",
        "Landroidx/recyclerview/widget/ConcatAdapter;",
        "g",
        "g0",
        "()Landroidx/recyclerview/widget/ConcatAdapter;",
        "concatAdapter",
        "Lteam/opay/business/transfer/flow/api/TransactionsReq;",
        "h",
        "Lteam/opay/business/transfer/flow/api/TransactionsReq;",
        "request",
        "i",
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
.field public static final i:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic j:[Lzo7;
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
.field public final a:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

.field public final h:Lteam/opay/business/transfer/flow/api/TransactionsReq;
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
    const-string v1, "getBinding()Lteam/opay/business/transfer/flow/databinding/FlowFragmentRecordsBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

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
    sput-object v1, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->j:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->i:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lteam/opay/core/common/base/BaseFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 7
    .line 8
    const-class v2, Lg76;

    .line 9
    .line 10
    invoke-direct {v1, v2, v0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->a:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 14
    .line 15
    const-class v1, Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$special$$inlined$activityViewModels$default$1;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$special$$inlined$activityViewModels$default$2;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-direct {v3, v4, v0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 30
    .line 31
    .line 32
    new-instance v4, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$special$$inlined$activityViewModels$default$3;

    .line 33
    .line 34
    invoke-direct {v4, v0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, v0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->b:Lid8;

    .line 42
    .line 43
    new-instance v1, Lqgc;

    .line 44
    .line 45
    invoke-direct {v1}, Lqgc;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, v0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->c:Lid8;

    .line 53
    .line 54
    new-instance v1, Lrgc;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Lrgc;-><init>(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, v0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->d:Lid8;

    .line 64
    .line 65
    new-instance v1, Lsgc;

    .line 66
    .line 67
    invoke-direct {v1}, Lsgc;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, v0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->e:Lid8;

    .line 75
    .line 76
    new-instance v1, Ltgc;

    .line 77
    .line 78
    invoke-direct {v1}, Ltgc;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, v0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->f:Lid8;

    .line 86
    .line 87
    new-instance v1, Lugc;

    .line 88
    .line 89
    invoke-direct {v1, v0}, Lugc;-><init>(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iput-object v1, v0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->g:Lid8;

    .line 97
    .line 98
    new-instance v1, Lteam/opay/business/transfer/flow/api/TransactionsReq;

    .line 99
    .line 100
    const/16 v15, 0xfff

    .line 101
    .line 102
    const/16 v16, 0x0

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    const/4 v4, 0x0

    .line 106
    const/4 v5, 0x0

    .line 107
    const/4 v6, 0x0

    .line 108
    const/4 v7, 0x0

    .line 109
    const/4 v8, 0x0

    .line 110
    const/4 v9, 0x0

    .line 111
    const/4 v10, 0x0

    .line 112
    const/4 v11, 0x0

    .line 113
    const/4 v12, 0x0

    .line 114
    const/4 v13, 0x0

    .line 115
    const/4 v14, 0x0

    .line 116
    move-object v2, v1

    .line 117
    invoke-direct/range {v2 .. v16}, Lteam/opay/business/transfer/flow/api/TransactionsReq;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 118
    .line 119
    .line 120
    iput-object v1, v0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->h:Lteam/opay/business/transfer/flow/api/TransactionsReq;

    .line 121
    .line 122
    return-void
.end method

.method public static synthetic F()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->c0()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic G(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;Landroidx/paging/PagingData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->m0(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;Landroidx/paging/PagingData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->d0()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic I(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->t0(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->s0(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->e0()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic L(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->p0(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Landroidx/recyclerview/widget/ConcatAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->a0(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N()Lteam/opay/business/transfer/flow/transactions/transactionList/HolderTransactionAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->o0()Lteam/opay/business/transfer/flow/transactions/transactionList/HolderTransactionAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic O(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->u0(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;Landroidx/paging/CombinedLoadStates;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->b0(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;Landroidx/paging/CombinedLoadStates;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Q(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lg76;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->f0()Lg76;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic R(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Landroidx/recyclerview/widget/ConcatAdapter;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->g0()Landroidx/recyclerview/widget/ConcatAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic S(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->i0()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic T(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lteam/opay/business/transfer/flow/transactions/transactionList/HolderTransactionAdapter;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->j0()Lteam/opay/business/transfer/flow/transactions/transactionList/HolderTransactionAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic U(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->k0()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic V(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Landroid/os/Handler;
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

.method public static final synthetic W(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;ILteam/opay/business/transfer/flow/api/TransactionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->q0(ILteam/opay/business/transfer/flow/api/TransactionInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic X(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;Lteam/opay/business/transfer/flow/api/TransactionsResp;Lteam/opay/core/http/internal/PagingResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->r0(Lteam/opay/business/transfer/flow/api/TransactionsResp;Lteam/opay/core/http/internal/PagingResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Y(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->v0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Z(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;Lteam/opay/business/transfer/flow/api/TransactionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->w0(Lteam/opay/business/transfer/flow/api/TransactionInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a0(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Landroidx/recyclerview/widget/ConcatAdapter;
    .locals 6

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;->b(Z)Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;->a()Landroidx/recyclerview/widget/ConcatAdapter$Config;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "build(...)"

    .line 16
    .line 17
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 21
    .line 22
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->k0()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->i0()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/4 v5, 0x2

    .line 31
    new-array v5, v5, [Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 32
    .line 33
    aput-object v3, v5, v1

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    aput-object v4, v5, v1

    .line 37
    .line 38
    invoke-direct {v2, v0, v5}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>(Landroidx/recyclerview/widget/ConcatAdapter$Config;[Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->k0()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lvgc;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lvgc;-><init>(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/paging/PagingDataAdapter;->m(Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    return-object v2
.end method

.method public static final b0(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;Landroidx/paging/CombinedLoadStates;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "loadStates"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->i0()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p1}, Landroidx/paging/CombinedLoadStates;->a()Landroidx/paging/LoadState;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Landroidx/paging/LoadStateAdapter;->o(Landroidx/paging/LoadState;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final c0()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final d0()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;

    .line 2
    .line 3
    new-instance v1, Lngc;

    .line 4
    .line 5
    invoke-direct {v1}, Lngc;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v0, v2, v1}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;-><init>(ZLkotlin/jvm/functions/Function0;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static final e0()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private final g0()Landroidx/recyclerview/widget/ConcatAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final h0()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;

    .line 8
    .line 9
    return-object v0
.end method

.method private final i0()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final j0()Lteam/opay/business/transfer/flow/transactions/transactionList/HolderTransactionAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/transfer/flow/transactions/transactionList/HolderTransactionAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final k0()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final l0()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->k0()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->h0()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;->e()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;->y(Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->n0()Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->h:Lteam/opay/business/transfer/flow/api/TransactionsReq;

    .line 21
    .line 22
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->h0()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;->e()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->getPeriod()Lteam/opay/business/transfer/flow/internal/Period;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v3, Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v5, "<get-lifecycle>(...)"

    .line 41
    .line 42
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$getTransactions$1;

    .line 46
    .line 47
    invoke-direct {v5, p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$getTransactions$1;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v4, v5}, Lteam/opay/core/http/internal/PagingResultWrapper2;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function2;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v2, v3}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->H(Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/business/transfer/flow/internal/Period;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/lifecycle/LiveData;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lwgc;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lwgc;-><init>(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, p0, v1}, Lmna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static final m0(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;Landroidx/paging/PagingData;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->k0()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;

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

.method private final n0()Lteam/opay/business/transfer/flow/TransferFlowViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->b:Lid8;

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

.method private static final o0()Lteam/opay/business/transfer/flow/transactions/transactionList/HolderTransactionAdapter;
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/transactionList/HolderTransactionAdapter;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/business/transfer/flow/transactions/transactionList/HolderTransactionAdapter;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static final p0(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->h0()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;->e()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;-><init>(Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$mAdapter$2$1$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$mAdapter$2$1$1;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;->A(Lkotlin/jvm/functions/Function2;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method private final q0(ILteam/opay/business/transfer/flow/api/TransactionInfo;)V
    .locals 9

    .line 1
    const/4 p1, 0x4

    .line 2
    sget-object v0, Lf6e;->a:Lf6e;

    .line 3
    .line 4
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getMenuType()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "CORE_TRANSACTION"

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getOrderNo()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, ""

    .line 17
    .line 18
    new-array v3, p1, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v0, v3, v4

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    aput-object v1, v3, v0

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    aput-object v2, v3, v0

    .line 28
    .line 29
    const-string v0, "0"

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    aput-object v0, v3, v1

    .line 33
    .line 34
    invoke-static {v3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "opay://transfer/transferFlow/detail?menuType=%s&orderNo=%s&transType=%s&autoPrint=%s"

    .line 39
    .line 40
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v0, "format(...)"

    .line 45
    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getUserId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    if-nez p2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object v2, p2

    .line 57
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, "&userId="

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    sget-object v3, Lud;->a:Lud;

    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    const/4 v7, 0x4

    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v6, 0x0

    .line 86
    invoke-static/range {v3 .. v8}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method private final r0(Lteam/opay/business/transfer/flow/api/TransactionsResp;Lteam/opay/core/http/internal/PagingResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/TransactionsResp;",
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p2, p0, p1, v2}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;-><init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;Lteam/opay/business/transfer/flow/api/TransactionsResp;Ljr2;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final s0(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->l0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final t0(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->h:Lteam/opay/business/transfer/flow/api/TransactionsReq;

    .line 2
    .line 3
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 8
    .line 9
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->getFilters()Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lteam/opay/business/transfer/flow/api/TransactionsReq;->a(Ljava/util/HashMap;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-static {v1, v2, v3, v2}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->formatStartDate$default(Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lteam/opay/business/transfer/flow/api/TransactionsReq;->j(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 36
    .line 37
    invoke-static {v1, v2, v3, v2}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->formatEndDate$default(Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lteam/opay/business/transfer/flow/api/TransactionsReq;->o(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 49
    .line 50
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->getPeriod()Lteam/opay/business/transfer/flow/internal/Period;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    sget-object v2, Lteam/opay/business/transfer/flow/internal/Period;->ALL_TIME:Lteam/opay/business/transfer/flow/internal/Period;

    .line 55
    .line 56
    if-eq v1, v2, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v3, 0x0

    .line 60
    :goto_0
    invoke-virtual {v0, v3}, Lteam/opay/business/transfer/flow/api/TransactionsReq;->q(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->l0()V

    .line 76
    .line 77
    .line 78
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p0
.end method

.method public static final u0(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->l0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final v0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->f0()Lg76;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg76;->g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->k0()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "<get-lifecycle>(...)"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v3, Landroidx/paging/PagingData;->e:Landroidx/paging/PagingData$Companion;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroidx/paging/PagingData$Companion;->a()Landroidx/paging/PagingData;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v0, v2, v3}, Landroidx/paging/PagingDataAdapter;->s(Landroidx/lifecycle/Lifecycle;Landroidx/paging/PagingData;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->i0()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v2, Landroidx/paging/LoadState$NotLoading;

    .line 38
    .line 39
    invoke-direct {v2, v1}, Landroidx/paging/LoadState$NotLoading;-><init>(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroidx/paging/LoadStateAdapter;->o(Landroidx/paging/LoadState;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->f0()Lg76;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v0, v0, Lg76;->c:Lh86;

    .line 50
    .line 51
    invoke-virtual {v0}, Lh86;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->w0(Lteam/opay/business/transfer/flow/api/TransactionInfo;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private final w0(Lteam/opay/business/transfer/flow/api/TransactionInfo;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->k0()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->f0()Lg76;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lg76;->c:Lh86;

    .line 10
    .line 11
    const-string v2, "headerLayout"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, p1, v2}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;->C(Lh86;Lteam/opay/business/transfer/flow/api/TransactionInfo;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final f0()Lg76;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->a:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->j:[Lzo7;

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
    check-cast v0, Lg76;

    .line 13
    .line 14
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    const/16 v2, 0x21

    .line 14
    .line 15
    const-string v3, "info"

    .line 16
    .line 17
    if-lt v1, v2, :cond_0

    .line 18
    .line 19
    :try_start_1
    const-class v1, Lteam/opay/business/transfer/flow/api/ButtonInfo;

    .line 20
    .line 21
    invoke-static {p1, v3, v1}, Lyb0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    instance-of v1, p1, Lteam/opay/business/transfer/flow/api/ButtonInfo;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    move-object p1, v0

    .line 35
    :cond_1
    check-cast p1, Lteam/opay/business/transfer/flow/api/ButtonInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-object p1, v0

    .line 39
    :goto_0
    check-cast p1, Lteam/opay/business/transfer/flow/api/ButtonInfo;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-object p1, v0

    .line 43
    :goto_1
    if-eqz p1, :cond_5

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/ButtonInfo;->getMapData()Ljava/util/HashMap;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Ljava/util/Map$Entry;

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Ljava/lang/CharSequence;

    .line 81
    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    invoke-static {v3}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    if-nez v0, :cond_6

    .line 110
    .line 111
    invoke-static {}, Lkotlin/collections/e;->i()Ljava/util/Map;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :cond_6
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->h:Lteam/opay/business/transfer/flow/api/TransactionsReq;

    .line 116
    .line 117
    if-eqz p1, :cond_7

    .line 118
    .line 119
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/ButtonInfo;->getMenuType()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-nez p1, :cond_8

    .line 124
    .line 125
    :cond_7
    const-string p1, "CORE_TRANSACTION"

    .line 126
    .line 127
    :cond_8
    invoke-virtual {v1, p1}, Lteam/opay/business/transfer/flow/api/TransactionsReq;->l(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->h:Lteam/opay/business/transfer/flow/api/TransactionsReq;

    .line 131
    .line 132
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/TransactionsReq;->c()Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->f0()Lg76;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lg76;->a()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "getRoot(...)"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p1
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
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

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
    const-string v1, "records_show"

    .line 19
    .line 20
    invoke-virtual {p1, p2, v1, v0}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->f0()Lg76;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p1, p1, Lg76;->g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

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
    new-instance p2, Lmgc;

    .line 39
    .line 40
    invoke-direct {p2, p0}, Lmgc;-><init>(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->h0()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;->d()Landroidx/lifecycle/LiveData;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    new-instance v0, Logc;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Logc;-><init>(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$a;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->f0()Lg76;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p1, p1, Lg76;->d:Lteam/opay/core/widget/HttpViewGroup;

    .line 76
    .line 77
    new-instance p2, Lpgc;

    .line 78
    .line 79
    invoke-direct {p2, p0}, Lpgc;-><init>(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lteam/opay/core/widget/HttpViewGroup;->setOnRetryListener(Lkotlin/jvm/functions/Function0;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->f0()Lg76;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p1, p1, Lg76;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    .line 91
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->k0()Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    const-string v0, "CORE_TRANSACTION"

    .line 96
    .line 97
    invoke-virtual {p2, v0}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;->z(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->j0()Lteam/opay/business/transfer/flow/transactions/transactionList/HolderTransactionAdapter;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 105
    .line 106
    .line 107
    const/4 p1, 0x0

    .line 108
    invoke-direct {p0, p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->w0(Lteam/opay/business/transfer/flow/api/TransactionInfo;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->l0()V

    .line 112
    .line 113
    .line 114
    return-void
.end method
