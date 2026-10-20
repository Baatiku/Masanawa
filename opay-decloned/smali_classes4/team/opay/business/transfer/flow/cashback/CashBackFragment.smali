.class public final Lteam/opay/business/transfer/flow/cashback/CashBackFragment;
.super Lteam/opay/business/transfer/flow/cashback/Hilt_CashBackFragment;
.source "CashBackFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J+\u0010\u0011\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\'\u0010\u0017\u001a\u00020\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00062\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0003J\u0017\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010$\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008$\u0010\"J\u000f\u0010%\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008%\u0010\u0003J\u000f\u0010&\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008&\u0010\u0003J!\u0010+\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\'2\u0008\u0010*\u001a\u0004\u0018\u00010)H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008-\u0010\u0003R\u001b\u00103\u001a\u00020.8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R\u001b\u00109\u001a\u0002048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108R\u0016\u0010\r\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u001b\u0010@\u001a\u00020<8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008=\u00106\u001a\u0004\u0008>\u0010?R$\u0010E\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150B\u0018\u00010A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010H\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u001b\u0010M\u001a\u00020I8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u00106\u001a\u0004\u0008K\u0010L\u00a8\u0006N"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/cashback/CashBackFragment;",
        "Lteam/opay/core/common/base/BaseFragment;",
        "<init>",
        "()V",
        "",
        "initView",
        "Lteam/opay/business/transfer/flow/api/CashBackRsp;",
        "rsp",
        "x0",
        "(Lteam/opay/business/transfer/flow/api/CashBackRsp;)V",
        "addAction",
        "t0",
        "",
        "operationType",
        "",
        "isFirstPage",
        "searchDateType",
        "g0",
        "(Ljava/lang/String;ZLjava/lang/String;)V",
        "res",
        "Lteam/opay/core/http/internal/PagingResult;",
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        "result",
        "r0",
        "(Lteam/opay/business/transfer/flow/api/CashBackRsp;Lteam/opay/core/http/internal/PagingResult;)V",
        "",
        "position",
        "",
        "delayMillis",
        "v0",
        "(IJ)V",
        "u0",
        "inProgress",
        "z0",
        "(Z)V",
        "contentEmpty",
        "A0",
        "s0",
        "q0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onResume",
        "Lx56;",
        "f",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "k0",
        "()Lx56;",
        "binding",
        "Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;",
        "g",
        "Lid8;",
        "n0",
        "()Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;",
        "viewModel",
        "h",
        "Ljava/lang/String;",
        "Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;",
        "i",
        "l0",
        "()Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;",
        "cashAdapter",
        "Landroidx/lifecycle/LiveData;",
        "Landroidx/paging/PagingData;",
        "j",
        "Landroidx/lifecycle/LiveData;",
        "currentLiveData",
        "k",
        "Z",
        "isShowSeeMore",
        "Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;",
        "l",
        "m0",
        "()Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;",
        "footerAdapter",
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
.field public static final synthetic m:[Lzo7;
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

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/paging/PagingData<",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Z

.field public final l:Lid8;
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
    const-string v1, "getBinding()Lteam/opay/business/transfer/flow/databinding/FlowCashbackHistoryLayoutBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

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
    sput-object v1, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->m:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget v0, Lteam/opay/business/transfer/flow/R$layout;->flow_cashback_history_layout:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/business/transfer/flow/cashback/Hilt_CashBackFragment;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 7
    .line 8
    const-class v1, Lx56;

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->f:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 14
    .line 15
    const-class v0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$special$$inlined$activityViewModels$default$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$special$$inlined$activityViewModels$default$2;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v2, v3, p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$special$$inlined$activityViewModels$default$3;

    .line 33
    .line 34
    invoke-direct {v3, p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->g:Lid8;

    .line 42
    .line 43
    const-string v0, ""

    .line 44
    .line 45
    iput-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->h:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v0, Lb22;

    .line 48
    .line 49
    invoke-direct {v0}, Lb22;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->i:Lid8;

    .line 57
    .line 58
    new-instance v0, Ld22;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Ld22;-><init>(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->l:Lid8;

    .line 68
    .line 69
    return-void
.end method

.method public static synthetic F(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->p0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->j0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Landroidx/paging/CombinedLoadStates;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->o0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Landroidx/paging/CombinedLoadStates;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I()Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->f0()Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic J(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->w0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->c0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Landroid/widget/RadioGroup;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->e0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Lteam/opay/business/transfer/flow/api/CashBackRsp;Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->y0(Lteam/opay/business/transfer/flow/api/CashBackRsp;Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->d0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Landroidx/paging/PagingData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->i0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Landroidx/paging/PagingData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic P(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lx56;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Q(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->l0()Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic R(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->m0()Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic S(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->n0()Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic T(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic U(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic V(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Lteam/opay/business/transfer/flow/api/CashBackRsp;Lteam/opay/core/http/internal/PagingResult;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->r0(Lteam/opay/business/transfer/flow/api/CashBackRsp;Lteam/opay/core/http/internal/PagingResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic W(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic X(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->u0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Y(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->v0(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Z(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Lteam/opay/business/transfer/flow/api/CashBackRsp;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->x0(Lteam/opay/business/transfer/flow/api/CashBackRsp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method private final addAction()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lx56;->j:Landroid/widget/RadioGroup;

    .line 6
    .line 7
    new-instance v1, Lh22;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lh22;-><init>(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lx56;->r:Ly56;

    .line 20
    .line 21
    iget-object v0, v0, Ly56;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    const-string v1, "emptyViewMore"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lj22;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lj22;-><init>(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v0, v0, Lx56;->s:Lteam/opay/core/widget/HttpViewGroup;

    .line 41
    .line 42
    new-instance v1, Ll22;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Ll22;-><init>(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lteam/opay/core/widget/HttpViewGroup;->setOnRetryListener(Lkotlin/jvm/functions/Function0;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static final synthetic b0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->A0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Landroid/widget/RadioGroup;I)V
    .locals 5

    .line 1
    sget p1, Lteam/opay/business/transfer/flow/R$id;->cash_type_all:I

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    iput-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->h:Ljava/lang/String;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget p1, Lteam/opay/business/transfer/flow/R$id;->cash_type_earnings:I

    .line 11
    .line 12
    if-ne p2, p1, :cond_1

    .line 13
    .line 14
    const-string p1, "PLUS"

    .line 15
    .line 16
    iput-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->h:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget p1, Lteam/opay/business/transfer/flow/R$id;->cash_type_expenses:I

    .line 20
    .line 21
    if-ne p2, p1, :cond_2

    .line 22
    .line 23
    const-string p1, "SUBTRACT"

    .line 24
    .line 25
    iput-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->h:Ljava/lang/String;

    .line 26
    .line 27
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p1, p1, Lx56;->j:Landroid/widget/RadioGroup;

    .line 32
    .line 33
    const-string v0, "cashTypeGroup"

    .line 34
    .line 35
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 v0, 0x0

    .line 43
    const/4 v1, 0x0

    .line 44
    :goto_1
    if-ge v1, p1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v2, v2, Lx56;->j:Landroid/widget/RadioGroup;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "null cannot be cast to non-null type android.widget.RadioButton"

    .line 57
    .line 58
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    check-cast v2, Landroid/widget/RadioButton;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-ne v3, p2, :cond_3

    .line 68
    .line 69
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 81
    .line 82
    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    .line 88
    .line 89
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->t0()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public static final d0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->h:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const-string v2, "Year"

    .line 12
    .line 13
    invoke-direct {p0, v0, v1, v2}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->g0(Ljava/lang/String;ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final e0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lkotlin/Unit;
    .locals 6

    .line 1
    iget-object v1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->h:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v4, 0x6

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v0, p0

    .line 8
    invoke-static/range {v0 .. v5}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->h0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final f0()Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final g0(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->j:Landroidx/lifecycle/LiveData;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObservers(Lag8;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->j:Landroidx/lifecycle/LiveData;

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->m0()Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p3}, Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;->v(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->m0()Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-boolean v1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k:Z

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;->w(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->n0()Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, "<get-lifecycle>(...)"

    .line 61
    .line 62
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v3, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$fetchCashBack$1;

    .line 66
    .line 67
    invoke-direct {v3, p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$fetchCashBack$1;-><init>(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v1, v2, v3}, Lteam/opay/core/http/internal/PagingResultWrapper2;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function2;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1, p2, p3, v1}, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->r(Ljava/lang/String;ZLjava/lang/String;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/lifecycle/LiveData;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->j:Landroidx/lifecycle/LiveData;

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    const-string p3, "getViewLifecycleOwner(...)"

    .line 86
    .line 87
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance p3, Lf22;

    .line 91
    .line 92
    invoke-direct {p3, p0}, Lf22;-><init>(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1, p2, p3}, Lmna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic h0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const-string p3, "Month"

    .line 11
    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->g0(Ljava/lang/String;ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final i0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Landroidx/paging/PagingData;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lkk8;->c:Lkk8;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "zhj submitData ================"

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x2

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {v0, v1, v3, v2, v3}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->l0()Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v1, "<get-lifecycle>(...)"

    .line 41
    .line 42
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0, p1}, Landroidx/paging/PagingDataAdapter;->s(Landroidx/lifecycle/Lifecycle;Landroidx/paging/PagingData;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method private final initView()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lx56;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;

    .line 24
    .line 25
    invoke-direct {v2}, Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;->b(Z)Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;->a()Landroidx/recyclerview/widget/ConcatAdapter$Config;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v4, "build(...)"

    .line 38
    .line 39
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->l0()Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->m0()Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const/4 v7, 0x2

    .line 53
    new-array v7, v7, [Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 54
    .line 55
    aput-object v5, v7, v3

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    aput-object v6, v7, v3

    .line 59
    .line 60
    invoke-direct {v4, v2, v7}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>(Landroidx/recyclerview/widget/ConcatAdapter$Config;[Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->l0()Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-instance v3, Ls12;

    .line 68
    .line 69
    invoke-direct {v3, p0}, Ls12;-><init>(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroidx/paging/PagingDataAdapter;->m(Lkotlin/jvm/functions/Function1;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v0, v0, Lx56;->w:Lteam/opay/core/widget/OPaySwipeRefreshLayout;

    .line 89
    .line 90
    new-instance v2, Lv12;

    .line 91
    .line 92
    invoke-direct {v2, p0}, Lv12;-><init>(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    .line 96
    .line 97
    .line 98
    sget v2, Lteam/opay/core/common/R$color;->mint:I

    .line 99
    .line 100
    filled-new-array {v2}, [I

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->x0(Lteam/opay/business/transfer/flow/api/CashBackRsp;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public static final j0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$footerAdapter$2$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$footerAdapter$2$1;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$footerAdapter$2$2;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$footerAdapter$2$2;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static final o0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Landroidx/paging/CombinedLoadStates;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "loadStates"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->m0()Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;

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

.method public static final p0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->t0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final t0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lx56;->t:Lteam/opay/core/widget/PulseLoaderView;

    .line 6
    .line 7
    const-string v1, "loadingView"

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
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, v0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->z0(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->h:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    const/4 v4, 0x0

    .line 29
    move-object v1, p0

    .line 30
    invoke-static/range {v1 .. v6}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->h0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static final w0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lx56;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public static final y0(Lteam/opay/business/transfer/flow/api/CashBackRsp;Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lkotlin/Unit;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/api/CashBackRsp;->d()Lteam/opay/business/transfer/flow/api/JumpTextUrl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/api/JumpTextUrl;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    sget-object v0, Lud;->a:Lud;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v4, 0x4

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v0 .. v5}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method private final z0(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lx56;->w:Lteam/opay/core/widget/OPaySwipeRefreshLayout;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p1, p1, Lx56;->r:Ly56;

    .line 17
    .line 18
    iget-object p1, p1, Ly56;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    .line 20
    const-string v0, "walletNothingFiltered"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lx56;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    const-string v1, "recyclerViewHistory"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    xor-int/lit8 v1, p1, 0x1

    .line 13
    .line 14
    invoke-static {v0, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->z0(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lx56;->s:Lteam/opay/core/widget/HttpViewGroup;

    .line 26
    .line 27
    const-string v1, "httpViewGroup"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, Lx56;->r:Ly56;

    .line 40
    .line 41
    iget-object v0, v0, Ly56;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    .line 43
    const-string v1, "walletNothingFiltered"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 49
    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget-boolean p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k:Z

    .line 54
    .line 55
    const-string v0, "emptyViewMore"

    .line 56
    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p1, p1, Lx56;->r:Ly56;

    .line 64
    .line 65
    iget-object p1, p1, Ly56;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->n0()Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->s()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "Year"

    .line 79
    .line 80
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {p1, v0}, Lg0g;->f(Landroid/view/View;Z)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p1, p1, Lx56;->r:Ly56;

    .line 93
    .line 94
    iget-object p1, p1, Ly56;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 v0, 0x1

    .line 100
    invoke-static {p1, v0}, Lg0g;->f(Landroid/view/View;Z)V

    .line 101
    .line 102
    .line 103
    :goto_0
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->n0()Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->s()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v0, "Month"

    .line 112
    .line 113
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_1

    .line 118
    .line 119
    sget p1, Lteam/opay/business/transfer/flow/R$string;->flow_no_records_three_month:I

    .line 120
    .line 121
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    goto :goto_2

    .line 126
    :cond_1
    sget p1, Lteam/opay/business/transfer/flow/R$string;->flow_cashback_empty_tip:I

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :goto_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v0, v0, Lx56;->r:Ly56;

    .line 137
    .line 138
    iget-object v0, v0, Ly56;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    :cond_2
    return-void
.end method

.method public final k0()Lx56;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->f:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->m:[Lzo7;

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
    check-cast v0, Lx56;

    .line 13
    .line 14
    return-object v0
.end method

.method public final l0()Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->i:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final m0()Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final n0()Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/core/common/base/BaseFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->t0()V

    .line 7
    .line 8
    .line 9
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
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->initView()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->addAction()V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const/4 v0, 0x0

    .line 24
    new-array v0, v0, [Lkotlin/Pair;

    .line 25
    .line 26
    const-string v1, "cashback_home_show"

    .line 27
    .line 28
    invoke-virtual {p1, p2, v1, v0}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final q0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->l0()Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/paging/PagingDataAdapter;->q()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final r0(Lteam/opay/business/transfer/flow/api/CashBackRsp;Lteam/opay/core/http/internal/PagingResult;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/CashBackRsp;",
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lkk8;->c:Lkk8;

    .line 2
    .line 3
    invoke-virtual {p2}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p2}, Lteam/opay/core/http/internal/PagingResult;->e()Lteam/opay/core/http/arch/Status;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p2}, Lteam/opay/core/http/internal/PagingResult;->a()Lteam/opay/core/http/arch/ApiError;

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
    const-string v6, "zhj onPagingResult -> page = "

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
    new-instance v8, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;

    .line 70
    .line 71
    invoke-direct {v8, p2, p0, p1, v4}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;-><init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Lteam/opay/business/transfer/flow/api/CashBackRsp;Ljr2;)V

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

.method public final s0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->h:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "Year"

    .line 5
    .line 6
    invoke-direct {p0, v0, v1, v2}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->g0(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final u0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lx56;->w:Lteam/opay/core/widget/OPaySwipeRefreshLayout;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lx56;->t:Lteam/opay/core/widget/PulseLoaderView;

    .line 16
    .line 17
    const-string v2, "loadingView"

    .line 18
    .line 19
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->l0()Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "<get-lifecycle>(...)"

    .line 34
    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v3, Landroidx/paging/PagingData;->e:Landroidx/paging/PagingData$Companion;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroidx/paging/PagingData$Companion;->a()Landroidx/paging/PagingData;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0, v2, v3}, Landroidx/paging/PagingDataAdapter;->s(Landroidx/lifecycle/Lifecycle;Landroidx/paging/PagingData;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->m0()Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v2, Landroidx/paging/LoadState$NotLoading;

    .line 52
    .line 53
    invoke-direct {v2, v1}, Landroidx/paging/LoadState$NotLoading;-><init>(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroidx/paging/LoadStateAdapter;->o(Landroidx/paging/LoadState;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final v0(IJ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseFragment;->getMHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lx12;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lx12;-><init>(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final x0(Lteam/opay/business/transfer/flow/api/CashBackRsp;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lx56;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    const-string v1, "getString(...)"

    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/CashBackRsp;->b()Lteam/opay/core/common/amount/MoneyAmount;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget v3, Lteam/opay/business/transfer/flow/R$string;->flow_default_money:I

    .line 44
    .line 45
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v0, v0, Lx56;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/CashBackRsp;->e()Lteam/opay/core/common/amount/MoneyAmount;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {v3, v2}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    sget v3, Lteam/opay/business/transfer/flow/R$string;->flow_default_money:I

    .line 77
    .line 78
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v0, v0, Lx56;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/CashBackRsp;->a()Lteam/opay/core/common/amount/MoneyAmount;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_3

    .line 101
    .line 102
    invoke-virtual {v3, v2}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    sget v2, Lteam/opay/business/transfer/flow/R$string;->flow_default_money:I

    .line 110
    .line 111
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/CashBackRsp;->d()Lteam/opay/business/transfer/flow/api/JumpTextUrl;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/JumpTextUrl;->a()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    goto :goto_3

    .line 134
    :cond_4
    const/4 v0, 0x0

    .line 135
    :goto_3
    const-string v1, "descLayout"

    .line 136
    .line 137
    if-eqz v0, :cond_6

    .line 138
    .line 139
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_5
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v0, v0, Lx56;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget-object v0, v0, Lx56;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 163
    .line 164
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/CashBackRsp;->d()Lteam/opay/business/transfer/flow/api/JumpTextUrl;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lteam/opay/business/transfer/flow/api/JumpTextUrl;->a()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget-object v0, v0, Lx56;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 180
    .line 181
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Lz12;

    .line 185
    .line 186
    invoke-direct {v1, p1, p0}, Lz12;-><init>(Lteam/opay/business/transfer/flow/api/CashBackRsp;Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)V

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 190
    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->k0()Lx56;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iget-object p1, p1, Lx56;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 198
    .line 199
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 203
    .line 204
    .line 205
    :goto_5
    return-void
.end method
