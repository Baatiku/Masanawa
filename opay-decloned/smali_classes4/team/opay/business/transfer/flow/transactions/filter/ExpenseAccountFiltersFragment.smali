.class public final Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;
.super Lteam/opay/business/transfer/flow/transactions/filter/Hilt_ExpenseAccountFiltersFragment;
.source "ExpenseAccountFiltersFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;,
        Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$Companion;,
        Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$TimeAdapter;,
        Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0001\u0018\u0000 F2\u00020\u0001:\u0003GHIB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J+\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0003J\u0019\u0010\u0017\u001a\u00020\u00062\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u001b\u0010$\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R0\u00102\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u0006\u0018\u00010+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u001f\u00107\u001a\u000603R\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u0010\'\u001a\u0004\u00085\u00106R\u001f\u0010<\u001a\u000608R\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u0010\'\u001a\u0004\u0008:\u0010;R\u0016\u0010?\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0018\u0010E\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010B\u00a8\u0006J"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;",
        "Lteam/opay/core/common/base/BaseSheetFragment;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "k0",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "f0",
        "Lteam/opay/business/transfer/flow/api/FilterInfo;",
        "filterInfo",
        "t0",
        "(Lteam/opay/business/transfer/flow/api/FilterInfo;)V",
        "",
        "type",
        "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;",
        "filter",
        "l0",
        "(Ljava/lang/String;Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V",
        "La76;",
        "u",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "e0",
        "()La76;",
        "binding",
        "Lteam/opay/business/transfer/flow/TransferFlowViewModel;",
        "v",
        "Lid8;",
        "j0",
        "()Lteam/opay/business/transfer/flow/TransferFlowViewModel;",
        "viewModel",
        "Lkotlin/Function1;",
        "w",
        "Lkotlin/jvm/functions/Function1;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "s0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "callback",
        "Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;",
        "x",
        "h0",
        "()Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;",
        "categoryAdapter",
        "Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$TimeAdapter;",
        "y",
        "i0",
        "()Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$TimeAdapter;",
        "timeAdapter",
        "z",
        "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;",
        "filters",
        "Ljava/util/Date;",
        "A",
        "Ljava/util/Date;",
        "startDate",
        "B",
        "endDate",
        "C",
        "CategoryAdapter",
        "TimeAdapter",
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
.field public static final C:Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic D:[Lzo7;
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
.field public A:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public B:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final u:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final x:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final y:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public z:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;
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
    const-string v1, "getBinding()Lteam/opay/business/transfer/flow/databinding/FlowFragmentExpenseAccountFiltersBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;

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
    sput-object v1, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->D:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->C:Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/filter/Hilt_ExpenseAccountFiltersFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 5
    .line 6
    const-class v1, La76;

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->u:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 12
    .line 13
    const-class v0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$special$$inlined$activityViewModels$default$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$special$$inlined$activityViewModels$default$2;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-direct {v2, v3, p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$special$$inlined$activityViewModels$default$3;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->v:Lid8;

    .line 40
    .line 41
    new-instance v0, Lrq5;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lrq5;-><init>(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->x:Lid8;

    .line 51
    .line 52
    new-instance v0, Lsq5;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lsq5;-><init>(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->y:Lid8;

    .line 62
    .line 63
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 64
    .line 65
    const/16 v6, 0xf

    .line 66
    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v2, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v4, 0x0

    .line 71
    const/4 v5, 0x0

    .line 72
    move-object v1, v0

    .line 73
    invoke-direct/range {v1 .. v7}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;-><init>(Lteam/opay/business/transfer/flow/internal/Period;Ljava/util/Date;Ljava/util/Date;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->z:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 77
    .line 78
    return-void
.end method

.method public static synthetic T(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;Ljava/util/Calendar;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->r0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;Ljava/util/Calendar;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->d0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic V(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->g0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic W(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->p0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic X(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->o0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->m0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Z(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->q0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic a0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;Ljava/util/Calendar;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->n0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;Ljava/util/Calendar;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$TimeAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->u0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$TimeAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;Ljava/lang/String;Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->l0(Ljava/lang/String;Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final d0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$categoryAdapter$2$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$categoryAdapter$2$1;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;-><init>(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;Lkotlin/jvm/functions/Function2;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final g0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, La76;->f:Lteam/opay/core/widget/PulseLoaderView;

    .line 6
    .line 7
    const-string v1, "httpViewGroup"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v1

    .line 21
    :goto_0
    sget-object v3, Lteam/opay/core/http/arch/Status;->LOADING:Lteam/opay/core/http/arch/Status;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x1

    .line 25
    if-ne v2, v3, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v2, 0x0

    .line 30
    :goto_1
    invoke-static {v0, v2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move-object v0, v1

    .line 41
    :goto_2
    if-nez v0, :cond_3

    .line 42
    .line 43
    const/4 v0, -0x1

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    sget-object v2, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$a;->a:[I

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    aget v0, v2, v0

    .line 52
    .line 53
    :goto_3
    if-eq v0, v5, :cond_6

    .line 54
    .line 55
    const/4 v2, 0x2

    .line 56
    if-eq v0, v2, :cond_4

    .line 57
    .line 58
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 59
    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_4
    invoke-virtual {p0, v1}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->t0(Lteam/opay/business/transfer/flow/api/FilterInfo;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->b()Lteam/opay/core/http/arch/ApiError;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_5
    invoke-static {p0, v1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->a()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lteam/opay/business/transfer/flow/api/CategoryListResp;

    .line 88
    .line 89
    if-eqz p1, :cond_7

    .line 90
    .line 91
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/CategoryListResp;->a()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_7

    .line 96
    .line 97
    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v1, p1

    .line 102
    check-cast v1, Lteam/opay/business/transfer/flow/api/FilterInfo;

    .line 103
    .line 104
    :cond_7
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->j0()Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1, v1}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->T(Lteam/opay/business/transfer/flow/api/FilterInfo;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v1}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->t0(Lteam/opay/business/transfer/flow/api/FilterInfo;)V

    .line 112
    .line 113
    .line 114
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    return-object p0
.end method

.method private final j0()Lteam/opay/business/transfer/flow/TransferFlowViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->v:Lid8;

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

.method public static final m0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->u:Lteam/opay/core/common/android/SpinnerDatePickerFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/common/android/SpinnerDatePickerFragment$Companion;->a()Lteam/opay/core/common/android/SpinnerDatePickerFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->A:Ljava/util/Date;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->c0(Ljava/util/Date;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance v1, Lzq5;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lzq5;-><init>(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->d0(Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->z:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 23
    .line 24
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->getEndDate()Ljava/util/Date;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    new-instance v1, Ljava/util/Date;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->a0(Ljava/util/Date;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Lre6;->p(Landroidx/fragment/app/Fragment;Lteam/opay/core/common/base/BaseSheetFragment;)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method

.method public static final n0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;Ljava/util/Calendar;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "calendar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, La76;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    sget-object v1, Lxa6;->a:Lxa6;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "getTime(...)"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v3, "MMM dd, yyyy"

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Lxa6;->d(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->B:Ljava/util/Date;

    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p1, p1, La76;->b:Lcom/google/android/material/button/MaterialButton;

    .line 43
    .line 44
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->A:Ljava/util/Date;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->B:Ljava/util/Date;

    .line 49
    .line 50
    if-eqz p0, :cond_0

    .line 51
    .line 52
    const/4 p0, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 p0, 0x0

    .line 55
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 56
    .line 57
    .line 58
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p0
.end method

.method public static final o0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->z:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/transfer/flow/internal/Period;->CUSTOM:Lteam/opay/business/transfer/flow/internal/Period;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->setPeriod(Lteam/opay/business/transfer/flow/internal/Period;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->z:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 9
    .line 10
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->A:Ljava/util/Date;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->setStartDate(Ljava/util/Date;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->z:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 16
    .line 17
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->B:Ljava/util/Date;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->setEndDate(Ljava/util/Date;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->w:Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->z:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method public static final p0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final q0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->u:Lteam/opay/core/common/android/SpinnerDatePickerFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/common/android/SpinnerDatePickerFragment$Companion;->a()Lteam/opay/core/common/android/SpinnerDatePickerFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->B:Ljava/util/Date;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->b0(Ljava/util/Date;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance v1, Lxq5;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lxq5;-><init>(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->d0(Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->z:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 23
    .line 24
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->getStartDate()Ljava/util/Date;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    new-instance v1, Ljava/util/Date;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->a0(Ljava/util/Date;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Lre6;->p(Landroidx/fragment/app/Fragment;Lteam/opay/core/common/base/BaseSheetFragment;)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method

.method public static final r0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;Ljava/util/Calendar;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "calendar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, La76;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    sget-object v1, Lxa6;->a:Lxa6;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "getTime(...)"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v3, "MMM dd, yyyy"

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Lxa6;->d(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->A:Ljava/util/Date;

    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p1, p1, La76;->b:Lcom/google/android/material/button/MaterialButton;

    .line 43
    .line 44
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->A:Ljava/util/Date;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->B:Ljava/util/Date;

    .line 49
    .line 50
    if-eqz p0, :cond_0

    .line 51
    .line 52
    const/4 p0, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 p0, 0x0

    .line 55
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 56
    .line 57
    .line 58
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p0
.end method

.method public static final u0(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$TimeAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$TimeAdapter;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$timeAdapter$2$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$timeAdapter$2$1;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$TimeAdapter;-><init>(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;Lkotlin/jvm/functions/Function2;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final e0()La76;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->u:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->D:[Lzo7;

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
    check-cast v0, La76;

    .line 13
    .line 14
    return-object v0
.end method

.method public final f0()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/api/CategoryListReq;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "EXPENSE_ACCOUNT"

    .line 5
    .line 6
    invoke-direct {v0, v1, v2, v1}, Lteam/opay/business/transfer/flow/api/CategoryListReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->j0()Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->u(Lteam/opay/business/transfer/flow/api/CategoryListReq;)Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "getViewLifecycleOwner(...)"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lyq5;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lyq5;-><init>(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Lpna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final h0()Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->x:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final i0()Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$TimeAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->y:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$TimeAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public k0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/constraintlayout/widget/ConstraintLayout;
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
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, La76;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

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

.method public final l0(Ljava/lang/String;Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V
    .locals 5

    .line 1
    sget-object v0, Lkk8;->c:Lkk8;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->z:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "type="

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v3, " filter="

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, "\ntype="

    .line 27
    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, " "

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x2

    .line 51
    invoke-static {v0, v1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "filter_category"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->z:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 63
    .line 64
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->getFilters()Ljava/util/HashMap;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->getFilters()Ljava/util/HashMap;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->w:Lkotlin/jvm/functions/Function1;

    .line 76
    .line 77
    if-eqz p1, :cond_0

    .line 78
    .line 79
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->getPeriod()Lteam/opay/business/transfer/flow/internal/Period;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    sget-object v0, Lteam/opay/business/transfer/flow/internal/Period;->CUSTOM:Lteam/opay/business/transfer/flow/internal/Period;

    .line 91
    .line 92
    if-eq p1, v0, :cond_3

    .line 93
    .line 94
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->z:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 95
    .line 96
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->getPeriod()Lteam/opay/business/transfer/flow/internal/Period;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->setPeriod(Lteam/opay/business/transfer/flow/internal/Period;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->w:Lkotlin/jvm/functions/Function1;

    .line 104
    .line 105
    if-eqz p1, :cond_2

    .line 106
    .line 107
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    :cond_2
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object p1, p1, La76;->d:Landroidx/constraintlayout/widget/Group;

    .line 119
    .line 120
    const-string p2, "customTimeGroup"

    .line 121
    .line 122
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    const/16 v1, 0x21

    .line 13
    .line 14
    const-string v2, "filter"

    .line 15
    .line 16
    if-lt v0, v1, :cond_0

    .line 17
    .line 18
    :try_start_1
    const-class v0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 19
    .line 20
    invoke-static {p1, v2, v0}, Lvx2;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/os/Parcelable;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 28
    .line 29
    .line 30
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    check-cast p1, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    :cond_1
    new-instance p1, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 38
    .line 39
    const/16 v5, 0xf

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    move-object v0, p1

    .line 47
    invoke-direct/range {v0 .. v6}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;-><init>(Lteam/opay/business/transfer/flow/internal/Period;Ljava/util/Date;Ljava/util/Date;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->z:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 51
    .line 52
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->deepCopy()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->h0()Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;->o(Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->i0()Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$TimeAdapter;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$TimeAdapter;->p(Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->k0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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
    invoke-super {p0, p1, p2}, Lteam/opay/core/common/base/BaseSheetFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, La76;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->h0()Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p1, p1, La76;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->i0()Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$TimeAdapter;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {}, Lteam/opay/business/transfer/flow/internal/Period;->values()[Lteam/opay/business/transfer/flow/internal/Period;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$TimeAdapter;->o([Lteam/opay/business/transfer/flow/internal/Period;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->z:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 43
    .line 44
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->getPeriod()Lteam/opay/business/transfer/flow/internal/Period;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object p2, Lteam/opay/business/transfer/flow/internal/Period;->CUSTOM:Lteam/opay/business/transfer/flow/internal/Period;

    .line 49
    .line 50
    if-ne p1, p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p1, p1, La76;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    .line 58
    iget-object p2, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->z:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 59
    .line 60
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->getStartDate()Ljava/util/Date;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    const/4 v0, 0x0

    .line 65
    const-string v1, "MMM dd, yyyy"

    .line 66
    .line 67
    if-eqz p2, :cond_0

    .line 68
    .line 69
    iput-object p2, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->A:Ljava/util/Date;

    .line 70
    .line 71
    sget-object v2, Lxa6;->a:Lxa6;

    .line 72
    .line 73
    invoke-virtual {v2, p2, v1}, Lxa6;->d(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    move-object p2, v0

    .line 79
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object p1, p1, La76;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    iget-object p2, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->z:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 89
    .line 90
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->getEndDate()Ljava/util/Date;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    if-eqz p2, :cond_1

    .line 95
    .line 96
    iput-object p2, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->B:Ljava/util/Date;

    .line 97
    .line 98
    sget-object v0, Lxa6;->a:Lxa6;

    .line 99
    .line 100
    invoke-virtual {v0, p2, v1}, Lxa6;->d(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object p1, p1, La76;->d:Landroidx/constraintlayout/widget/Group;

    .line 112
    .line 113
    const-string p2, "customTimeGroup"

    .line 114
    .line 115
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object p1, p1, La76;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 126
    .line 127
    const-string p2, "closeIv"

    .line 128
    .line 129
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance p2, Ltq5;

    .line 133
    .line 134
    invoke-direct {p2, p0}, Ltq5;-><init>(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)V

    .line 135
    .line 136
    .line 137
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-object p1, p1, La76;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    const-string p2, "tvStartValue"

    .line 147
    .line 148
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance p2, Luq5;

    .line 152
    .line 153
    invoke-direct {p2, p0}, Luq5;-><init>(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)V

    .line 154
    .line 155
    .line 156
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget-object p1, p1, La76;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 164
    .line 165
    const-string p2, "tvEndValue"

    .line 166
    .line 167
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    new-instance p2, Lvq5;

    .line 171
    .line 172
    invoke-direct {p2, p0}, Lvq5;-><init>(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)V

    .line 173
    .line 174
    .line 175
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object p1, p1, La76;->b:Lcom/google/android/material/button/MaterialButton;

    .line 183
    .line 184
    const-string p2, "actionConfirm"

    .line 185
    .line 186
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance p2, Lwq5;

    .line 190
    .line 191
    invoke-direct {p2, p0}, Lwq5;-><init>(Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;)V

    .line 192
    .line 193
    .line 194
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 195
    .line 196
    .line 197
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->j0()Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->x()Lteam/opay/business/transfer/flow/api/FilterInfo;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    if-nez p1, :cond_3

    .line 206
    .line 207
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->f0()V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_3
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->t0(Lteam/opay/business/transfer/flow/api/FilterInfo;)V

    .line 212
    .line 213
    .line 214
    :goto_1
    return-void
.end method

.method public final s0(Lkotlin/jvm/functions/Function1;)V
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
            "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->w:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final t0(Lteam/opay/business/transfer/flow/api/FilterInfo;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/FilterInfo;->getFlowList()Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lteam/opay/business/transfer/flow/api/TypeCategory;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v0

    .line 19
    :goto_0
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->e0()La76;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v2, v2, La76;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/api/TypeCategory;->getTitle()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    sget v3, Lteam/opay/business/transfer/flow/R$string;->flow_filter_type:I

    .line 35
    .line 36
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "getString(...)"

    .line 41
    .line 42
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->h0()Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/api/TypeCategory;->getList()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move-object v1, v0

    .line 60
    :goto_2
    if-nez v1, :cond_3

    .line 61
    .line 62
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :cond_3
    invoke-virtual {v2, v1}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;->setDataList(Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment;->h0()Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/FilterInfo;->getFilterCode()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :cond_4
    if-nez v0, :cond_5

    .line 80
    .line 81
    const-string v0, ""

    .line 82
    .line 83
    :cond_5
    invoke-virtual {v1, v0}, Lteam/opay/business/transfer/flow/transactions/filter/ExpenseAccountFiltersFragment$CategoryAdapter;->p(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
