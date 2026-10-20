.class public final Lteam/opay/sme/store/reports/ReportBranchFragment;
.super Lteam/opay/sme/store/reports/Hilt_ReportBranchFragment;
.source "ReportBranchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/sme/store/reports/ReportBranchFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0001\u0018\u0000 #2\u00020\u0001:\u0001$B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\u000c\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u0017\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\u00082\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lteam/opay/sme/store/reports/ReportBranchFragment;",
        "Lteam/opay/sme/store/reports/BaseReportFragment;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onLazyLoad",
        "c0",
        "",
        "show",
        "h0",
        "(Z)V",
        "Lteam/opay/sme/store/api/ReportBranchResp;",
        "data",
        "v0",
        "(Lteam/opay/sme/store/api/ReportBranchResp;)V",
        "Lavd;",
        "r",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "r0",
        "()Lavd;",
        "binding",
        "Lteam/opay/sme/store/api/ReportType;",
        "s",
        "Lteam/opay/sme/store/api/ReportType;",
        "T",
        "()Lteam/opay/sme/store/api/ReportType;",
        "setReportType",
        "(Lteam/opay/sme/store/api/ReportType;)V",
        "reportType",
        "t",
        "Companion",
        "business-sme-store_release"
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
.field public static final t:Lteam/opay/sme/store/reports/ReportBranchFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic u:[Lzo7;
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
.field public final r:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lteam/opay/sme/store/api/ReportType;
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
    const-string v1, "getBinding()Lteam/opay/sme/store/databinding/SmeStoreFragmentReportBranchBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/sme/store/reports/ReportBranchFragment;

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
    sput-object v1, Lteam/opay/sme/store/reports/ReportBranchFragment;->u:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/sme/store/reports/ReportBranchFragment$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/sme/store/reports/ReportBranchFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/sme/store/reports/ReportBranchFragment;->t:Lteam/opay/sme/store/reports/ReportBranchFragment$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lteam/opay/sme/store/R$layout;->sme_store_fragment_report_branch:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/sme/store/reports/Hilt_ReportBranchFragment;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 7
    .line 8
    const-class v1, Lavd;

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/sme/store/reports/ReportBranchFragment;->r:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 14
    .line 15
    sget-object v0, Lteam/opay/sme/store/api/ReportType;->REPORTS_BRANCH:Lteam/opay/sme/store/api/ReportType;

    .line 16
    .line 17
    iput-object v0, p0, Lteam/opay/sme/store/reports/ReportBranchFragment;->s:Lteam/opay/sme/store/api/ReportType;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic m0(Lteam/opay/sme/store/reports/ReportBranchFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->s0(Lteam/opay/sme/store/reports/ReportBranchFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n0(Lteam/opay/sme/store/reports/ReportBranchFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->u0(Lteam/opay/sme/store/reports/ReportBranchFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o0(Lteam/opay/sme/store/reports/ReportBranchFragment;Lteam/opay/sme/store/api/BranchInfo;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/sme/store/reports/ReportBranchFragment;->t0(Lteam/opay/sme/store/reports/ReportBranchFragment;Lteam/opay/sme/store/api/BranchInfo;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic p0(Lteam/opay/sme/store/reports/ReportBranchFragment;)Lavd;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic q0(Lteam/opay/sme/store/reports/ReportBranchFragment;Lteam/opay/sme/store/api/ReportBranchResp;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/sme/store/reports/ReportBranchFragment;->v0(Lteam/opay/sme/store/api/ReportBranchResp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final s0(Lteam/opay/sme/store/reports/ReportBranchFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    new-instance v0, Lxnc;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lxnc;-><init>(Lteam/opay/sme/store/reports/ReportBranchFragment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lteam/opay/sme/store/reports/BaseReportFragment;->i0(Lkotlin/jvm/functions/Function2;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final t0(Lteam/opay/sme/store/reports/ReportBranchFragment;Lteam/opay/sme/store/api/BranchInfo;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p1, "showName"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lavd;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->c0()V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final u0(Lteam/opay/sme/store/reports/ReportBranchFragment;)Lkotlin/Unit;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lud;->a:Lud;

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    sget-object v4, Lf6e;->a:Lf6e;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportFragment;->U()Lteam/opay/sme/store/api/ReportReq;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Lteam/opay/sme/store/api/ReportReq;->getBranchId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    const-string v4, ""

    .line 22
    .line 23
    :cond_0
    new-array v5, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    aput-object v4, v5, v0

    .line 26
    .line 27
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, "opay://transfer/transferFlow/transactionList?branchId=%s"

    .line 32
    .line 33
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-string v5, "format(...)"

    .line 38
    .line 39
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x4

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-static/range {v2 .. v7}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object v2, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportFragment;->U()Lteam/opay/sme/store/api/ReportReq;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lteam/opay/sme/store/api/ReportReq;->getBranchId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string v4, "branchId"

    .line 63
    .line 64
    invoke-static {v4, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    new-array v1, v1, [Lkotlin/Pair;

    .line 69
    .line 70
    aput-object p0, v1, v0

    .line 71
    .line 72
    const-string p0, "report_home_branch_total_received_click"

    .line 73
    .line 74
    invoke-virtual {v2, v3, p0, v1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 75
    .line 76
    .line 77
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p0
.end method


# virtual methods
.method public T()Lteam/opay/sme/store/api/ReportType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/reports/ReportBranchFragment;->s:Lteam/opay/sme/store/api/ReportType;

    .line 2
    .line 3
    return-object v0
.end method

.method public c0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lavd;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportFragment;->W()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "getViewLifecycleOwner(...)"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v5, Lteam/opay/sme/store/reports/ReportBranchFragment$requestDetail$1;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-direct {v5, p0, v0}, Lteam/opay/sme/store/reports/ReportBranchFragment$requestDetail$1;-><init>(Lteam/opay/sme/store/reports/ReportBranchFragment;Ljr2;)V

    .line 31
    .line 32
    .line 33
    const/4 v6, 0x3

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public h0(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lavd;->f:Lteam/opay/core/widget/PulseLoaderView;

    .line 6
    .line 7
    const-string v1, "loadingView"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onLazyLoad()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/sme/store/reports/BaseReportFragment;->onLazyLoad()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
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
    invoke-super {p0, p1, p2}, Lteam/opay/sme/store/reports/BaseReportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

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
    const-string v1, "report_home_branch_show"

    .line 19
    .line 20
    invoke-virtual {p1, p2, v1, v0}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p1, p1, Lavd;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportFragment;->W()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p1, p1, Lavd;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    const-string p2, "selectBranch"

    .line 43
    .line 44
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Lvnc;

    .line 48
    .line 49
    invoke-direct {p2, p0}, Lvnc;-><init>(Lteam/opay/sme/store/reports/ReportBranchFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p1, p1, Lavd;->d:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    const-string p2, "layoutReceived"

    .line 62
    .line 63
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance p2, Lwnc;

    .line 67
    .line 68
    invoke-direct {p2, p0}, Lwnc;-><init>(Lteam/opay/sme/store/reports/ReportBranchFragment;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final r0()Lavd;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/reports/ReportBranchFragment;->r:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/sme/store/reports/ReportBranchFragment;->u:[Lzo7;

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
    check-cast v0, Lavd;

    .line 13
    .line 14
    return-object v0
.end method

.method public final v0(Lteam/opay/sme/store/api/ReportBranchResp;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "sentRanking"

    .line 4
    .line 5
    const-string v3, "collectionRanking"

    .line 6
    .line 7
    const-string v4, "layoutSent"

    .line 8
    .line 9
    const-string v5, "layoutReceived"

    .line 10
    .line 11
    if-eqz p1, :cond_b

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    iget-object v6, v6, Lavd;->d:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/sme/store/api/ReportBranchResp;->c()Lteam/opay/core/common/amount/MoneyAmount;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v5, 0x0

    .line 31
    :goto_0
    invoke-static {v6, v5}, Lg0g;->j(Landroid/view/View;Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iget-object v5, v5, Lavd;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    sget v6, Lteam/opay/sme/store/R$string;->sme_store_total_size_title:I

    .line 41
    .line 42
    invoke-virtual {p1}, Lteam/opay/sme/store/api/ReportBranchResp;->a()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    new-array v8, v0, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object v7, v8, v1

    .line 53
    .line 54
    invoke-virtual {p0, v6, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    iget-object v5, v5, Lavd;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    invoke-virtual {p1}, Lteam/opay/sme/store/api/ReportBranchResp;->c()Lteam/opay/core/common/amount/MoneyAmount;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    const/4 v8, 0x0

    .line 72
    const-string v9, ""

    .line 73
    .line 74
    if-eqz v7, :cond_1

    .line 75
    .line 76
    invoke-virtual {v7, v9}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    move-object v7, v8

    .line 82
    :goto_1
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    iget-object v5, v5, Lavd;->d:Landroid/widget/LinearLayout;

    .line 90
    .line 91
    invoke-virtual {p1}, Lteam/opay/sme/store/api/ReportBranchResp;->f()Lteam/opay/core/common/amount/MoneyAmount;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    if-eqz v7, :cond_2

    .line 96
    .line 97
    const/16 v7, 0x11

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    const/16 v7, 0x10

    .line 101
    .line 102
    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    iget-object v5, v5, Lavd;->e:Lteam/opay/core/widget/fillet/CorpConstraintLayout;

    .line 110
    .line 111
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lteam/opay/sme/store/api/ReportBranchResp;->f()Lteam/opay/core/common/amount/MoneyAmount;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    if-eqz v4, :cond_3

    .line 119
    .line 120
    const/4 v4, 0x1

    .line 121
    goto :goto_3

    .line 122
    :cond_3
    const/4 v4, 0x0

    .line 123
    :goto_3
    invoke-static {v5, v4}, Lg0g;->j(Landroid/view/View;Z)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    iget-object v4, v4, Lavd;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    invoke-virtual {p1}, Lteam/opay/sme/store/api/ReportBranchResp;->d()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    new-array v7, v0, [Ljava/lang/Object;

    .line 141
    .line 142
    aput-object v5, v7, v1

    .line 143
    .line 144
    invoke-virtual {p0, v6, v7}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    iget-object v4, v4, Lavd;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 156
    .line 157
    invoke-virtual {p1}, Lteam/opay/sme/store/api/ReportBranchResp;->f()Lteam/opay/core/common/amount/MoneyAmount;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    if-eqz v5, :cond_4

    .line 162
    .line 163
    invoke-virtual {v5, v9}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    :cond_4
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    iget-object v4, v4, Lavd;->b:Lteam/opay/sme/store/widget/RankingView;

    .line 175
    .line 176
    invoke-virtual {p1}, Lteam/opay/sme/store/api/ReportBranchResp;->b()Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    if-nez v5, :cond_5

    .line 181
    .line 182
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    :cond_5
    invoke-virtual {v4, v5}, Lteam/opay/sme/store/widget/RankingView;->setRankingList(Ljava/util/List;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    iget-object v4, v4, Lavd;->b:Lteam/opay/sme/store/widget/RankingView;

    .line 194
    .line 195
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Lteam/opay/sme/store/api/ReportBranchResp;->b()Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    if-eqz v3, :cond_7

    .line 203
    .line 204
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_6

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_6
    const/4 v3, 0x0

    .line 212
    goto :goto_5

    .line 213
    :cond_7
    :goto_4
    const/4 v3, 0x1

    .line 214
    :goto_5
    xor-int/2addr v3, v0

    .line 215
    invoke-static {v4, v3}, Lg0g;->j(Landroid/view/View;Z)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    iget-object v3, v3, Lavd;->l:Lteam/opay/sme/store/widget/RankingView;

    .line 223
    .line 224
    invoke-virtual {p1}, Lteam/opay/sme/store/api/ReportBranchResp;->e()Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    if-nez v4, :cond_8

    .line 229
    .line 230
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    :cond_8
    invoke-virtual {v3, v4}, Lteam/opay/sme/store/widget/RankingView;->setRankingList(Ljava/util/List;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    iget-object v3, v3, Lavd;->l:Lteam/opay/sme/store/widget/RankingView;

    .line 242
    .line 243
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1}, Lteam/opay/sme/store/api/ReportBranchResp;->e()Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    if-eqz p1, :cond_9

    .line 251
    .line 252
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    if-eqz p1, :cond_a

    .line 257
    .line 258
    :cond_9
    const/4 v1, 0x1

    .line 259
    :cond_a
    xor-int/lit8 p1, v1, 0x1

    .line 260
    .line 261
    invoke-static {v3, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 262
    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_b
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    iget-object p1, p1, Lavd;->d:Landroid/widget/LinearLayout;

    .line 270
    .line 271
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    iget-object p1, p1, Lavd;->e:Lteam/opay/core/widget/fillet/CorpConstraintLayout;

    .line 282
    .line 283
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    iget-object p1, p1, Lavd;->b:Lteam/opay/sme/store/widget/RankingView;

    .line 294
    .line 295
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportBranchFragment;->r0()Lavd;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    iget-object p1, p1, Lavd;->l:Lteam/opay/sme/store/widget/RankingView;

    .line 306
    .line 307
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 311
    .line 312
    .line 313
    :goto_6
    return-void
.end method
