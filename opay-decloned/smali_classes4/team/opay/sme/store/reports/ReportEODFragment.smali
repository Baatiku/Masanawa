.class public final Lteam/opay/sme/store/reports/ReportEODFragment;
.super Lteam/opay/sme/store/reports/Hilt_ReportEODFragment;
.source "ReportEODFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/sme/store/reports/ReportEODFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0001\u0018\u0000 +2\u00020\u0001:\u0001,B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J!\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u0017\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u0019\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lteam/opay/sme/store/reports/ReportEODFragment;",
        "Lteam/opay/sme/store/reports/BaseReportFragment;",
        "<init>",
        "()V",
        "",
        "z0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onLazyLoad",
        "c0",
        "",
        "show",
        "h0",
        "(Z)V",
        "B0",
        "Lteam/opay/sme/store/api/ReportEODResp;",
        "data",
        "A0",
        "(Lteam/opay/sme/store/api/ReportEODResp;)V",
        "Lbvd;",
        "r",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "v0",
        "()Lbvd;",
        "binding",
        "Lteam/opay/sme/store/api/ReportType;",
        "s",
        "Lteam/opay/sme/store/api/ReportType;",
        "T",
        "()Lteam/opay/sme/store/api/ReportType;",
        "setReportType",
        "(Lteam/opay/sme/store/api/ReportType;)V",
        "reportType",
        "Lteam/opay/sme/store/reports/ReportEODAdapter;",
        "t",
        "Lid8;",
        "u0",
        "()Lteam/opay/sme/store/reports/ReportEODAdapter;",
        "adapter",
        "u",
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
.field public static final u:Lteam/opay/sme/store/reports/ReportEODFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic v:[Lzo7;
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

.field public final t:Lid8;
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
    const-string v1, "getBinding()Lteam/opay/sme/store/databinding/SmeStoreFragmentReportEodBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/sme/store/reports/ReportEODFragment;

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
    sput-object v1, Lteam/opay/sme/store/reports/ReportEODFragment;->v:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/sme/store/reports/ReportEODFragment$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/sme/store/reports/ReportEODFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/sme/store/reports/ReportEODFragment;->u:Lteam/opay/sme/store/reports/ReportEODFragment$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lteam/opay/sme/store/R$layout;->sme_store_fragment_report_eod:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/sme/store/reports/Hilt_ReportEODFragment;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 7
    .line 8
    const-class v1, Lbvd;

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/sme/store/reports/ReportEODFragment;->r:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 14
    .line 15
    sget-object v0, Lteam/opay/sme/store/api/ReportType;->REPORTS_EOD:Lteam/opay/sme/store/api/ReportType;

    .line 16
    .line 17
    iput-object v0, p0, Lteam/opay/sme/store/reports/ReportEODFragment;->s:Lteam/opay/sme/store/api/ReportType;

    .line 18
    .line 19
    new-instance v0, Leoc;

    .line 20
    .line 21
    invoke-direct {v0}, Leoc;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lteam/opay/sme/store/reports/ReportEODFragment;->t:Lid8;

    .line 29
    .line 30
    return-void
.end method

.method public static final C0(Lteam/opay/sme/store/reports/ReportEODFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportFragment;->U()Lteam/opay/sme/store/api/ReportReq;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/sme/store/api/ReportReq;->setEmail(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->z0()V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static synthetic m0()Lteam/opay/sme/store/reports/ReportEODAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/sme/store/reports/ReportEODFragment;->t0()Lteam/opay/sme/store/reports/ReportEODAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic n0(Lteam/opay/sme/store/reports/ReportEODFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->y0(Lteam/opay/sme/store/reports/ReportEODFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o0(Lteam/opay/sme/store/reports/ReportEODFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->w0(Lteam/opay/sme/store/reports/ReportEODFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p0(Lteam/opay/sme/store/reports/ReportEODFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/store/reports/ReportEODFragment;->C0(Lteam/opay/sme/store/reports/ReportEODFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q0(Lteam/opay/sme/store/reports/ReportEODFragment;Lteam/opay/sme/store/api/BranchInfo;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/sme/store/reports/ReportEODFragment;->x0(Lteam/opay/sme/store/reports/ReportEODFragment;Lteam/opay/sme/store/api/BranchInfo;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic r0(Lteam/opay/sme/store/reports/ReportEODFragment;)Lbvd;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->v0()Lbvd;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic s0(Lteam/opay/sme/store/reports/ReportEODFragment;Lteam/opay/sme/store/api/ReportEODResp;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/sme/store/reports/ReportEODFragment;->A0(Lteam/opay/sme/store/api/ReportEODResp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final t0()Lteam/opay/sme/store/reports/ReportEODAdapter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/sme/store/reports/ReportEODAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/sme/store/reports/ReportEODAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final w0(Lteam/opay/sme/store/reports/ReportEODFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    new-instance v0, Lfoc;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lfoc;-><init>(Lteam/opay/sme/store/reports/ReportEODFragment;)V

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

.method public static final x0(Lteam/opay/sme/store/reports/ReportEODFragment;Lteam/opay/sme/store/api/BranchInfo;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p1, "showName"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->v0()Lbvd;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lbvd;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->c0()V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final y0(Lteam/opay/sme/store/reports/ReportEODFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->B0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final z0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getViewLifecycleOwner(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v5, Lteam/opay/sme/store/reports/ReportEODFragment$sendEmail$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v5, p0, v0}, Lteam/opay/sme/store/reports/ReportEODFragment$sendEmail$1;-><init>(Lteam/opay/sme/store/reports/ReportEODFragment;Ljr2;)V

    .line 18
    .line 19
    .line 20
    const/4 v6, 0x3

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final A0(Lteam/opay/sme/store/api/ReportEODResp;)V
    .locals 12

    .line 1
    const-string v0, "layoutInfos"

    .line 2
    .line 3
    if-eqz p1, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->v0()Lbvd;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lbvd;->b:Lcom/google/android/material/button/MaterialButton;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->v0()Lbvd;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v1, v1, Lbvd;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 20
    .line 21
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lg0g;->h(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/sme/store/api/ReportEODResp;->b()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/16 v2, 0x101

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    move-object v1, v3

    .line 48
    :cond_0
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    new-instance v1, Lteam/opay/sme/store/api/EODInfo;

    .line 54
    .line 55
    invoke-direct {v1, v3, v3, v3, v2}, Lteam/opay/sme/store/api/EODInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {p1}, Lteam/opay/sme/store/api/ReportEODResp;->a()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    move-object v1, v3

    .line 74
    :cond_2
    if-eqz v1, :cond_6

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/4 v4, 0x0

    .line 81
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_6

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    add-int/lit8 v6, v4, 0x1

    .line 92
    .line 93
    if-gez v4, :cond_3

    .line 94
    .line 95
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 96
    .line 97
    .line 98
    :cond_3
    check-cast v5, Lteam/opay/sme/store/api/EODBodyItem;

    .line 99
    .line 100
    new-instance v7, Lteam/opay/sme/store/api/EODInfo;

    .line 101
    .line 102
    invoke-virtual {v5}, Lteam/opay/sme/store/api/EODBodyItem;->b()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-virtual {v5}, Lteam/opay/sme/store/api/EODBodyItem;->b()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    invoke-virtual {v5}, Lteam/opay/sme/store/api/EODBodyItem;->b()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    const/16 v11, 0x102

    .line 115
    .line 116
    invoke-direct {v7, v8, v9, v10, v11}, Lteam/opay/sme/store/api/EODInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5}, Lteam/opay/sme/store/api/EODBodyItem;->a()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    if-nez v5, :cond_4

    .line 127
    .line 128
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    :cond_4
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lteam/opay/sme/store/api/ReportEODResp;->a()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->m(Ljava/util/List;)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eq v4, v5, :cond_5

    .line 144
    .line 145
    new-instance v4, Lteam/opay/sme/store/api/EODInfo;

    .line 146
    .line 147
    invoke-direct {v4, v3, v3, v3, v2}, Lteam/opay/sme/store/api/EODInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :cond_5
    move v4, v6

    .line 154
    goto :goto_0

    .line 155
    :cond_6
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->u0()Lteam/opay/sme/store/reports/ReportEODAdapter;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1, v0}, Lteam/opay/sme/store/reports/ReportEODAdapter;->setDataList(Ljava/util/List;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_7
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->v0()Lbvd;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iget-object p1, p1, Lbvd;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 168
    .line 169
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 173
    .line 174
    .line 175
    :goto_1
    return-void
.end method

.method public final B0()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/sme/store/reports/InputEmailDialog;->p:Lteam/opay/sme/store/reports/InputEmailDialog$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportFragment;->U()Lteam/opay/sme/store/api/ReportReq;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lteam/opay/sme/store/api/ReportReq;->getEmail()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/sme/store/reports/InputEmailDialog$Companion;->a(Ljava/lang/String;)Lteam/opay/sme/store/reports/InputEmailDialog;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "<get-lifecycle>(...)"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lgoc;

    .line 27
    .line 28
    invoke-direct {v3, p0}, Lgoc;-><init>(Lteam/opay/sme/store/reports/ReportEODFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, v3}, Lteam/opay/core/common/android/event/CallbackWrapper;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lteam/opay/sme/store/reports/InputEmailDialog;->e0(Lteam/opay/core/common/android/event/CallbackWrapper;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0}, Lre6;->l(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public T()Lteam/opay/sme/store/api/ReportType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/reports/ReportEODFragment;->s:Lteam/opay/sme/store/api/ReportType;

    .line 2
    .line 3
    return-object v0
.end method

.method public c0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->v0()Lbvd;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lbvd;->g:Landroidx/appcompat/widget/AppCompatTextView;

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
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseFragment;->hideKeyboard()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->v0()Lbvd;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lbvd;->b:Lcom/google/android/material/button/MaterialButton;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "getViewLifecycleOwner(...)"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v5, Lteam/opay/sme/store/reports/ReportEODFragment$requestDetail$1;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-direct {v5, p0, v0}, Lteam/opay/sme/store/reports/ReportEODFragment$requestDetail$1;-><init>(Lteam/opay/sme/store/reports/ReportEODFragment;Ljr2;)V

    .line 44
    .line 45
    .line 46
    const/4 v6, 0x3

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public h0(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->v0()Lbvd;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lbvd;->e:Lteam/opay/core/widget/PulseLoaderView;

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
    const-string v1, "report_home_EOD_show"

    .line 19
    .line 20
    invoke-virtual {p1, p2, v1, v0}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->v0()Lbvd;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p1, p1, Lbvd;->g:Landroidx/appcompat/widget/AppCompatTextView;

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
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportFragment;->U()Lteam/opay/sme/store/api/ReportReq;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->T()Lteam/opay/sme/store/api/ReportType;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Lteam/opay/sme/store/api/ReportReq;->setBusinessType(Lteam/opay/sme/store/api/ReportType;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->v0()Lbvd;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p1, p1, Lbvd;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->u0()Lteam/opay/sme/store/reports/ReportEODAdapter;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->v0()Lbvd;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p1, p1, Lbvd;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    const-string p2, "selectBranch"

    .line 67
    .line 68
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Lcoc;

    .line 72
    .line 73
    invoke-direct {p2, p0}, Lcoc;-><init>(Lteam/opay/sme/store/reports/ReportEODFragment;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportEODFragment;->v0()Lbvd;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p1, p1, Lbvd;->b:Lcom/google/android/material/button/MaterialButton;

    .line 84
    .line 85
    const-string p2, "actionSend"

    .line 86
    .line 87
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance p2, Ldoc;

    .line 91
    .line 92
    invoke-direct {p2, p0}, Ldoc;-><init>(Lteam/opay/sme/store/reports/ReportEODFragment;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final u0()Lteam/opay/sme/store/reports/ReportEODAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/reports/ReportEODFragment;->t:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/sme/store/reports/ReportEODAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final v0()Lbvd;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/reports/ReportEODFragment;->r:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/sme/store/reports/ReportEODFragment;->v:[Lzo7;

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
    check-cast v0, Lbvd;

    .line 13
    .line 14
    return-object v0
.end method
