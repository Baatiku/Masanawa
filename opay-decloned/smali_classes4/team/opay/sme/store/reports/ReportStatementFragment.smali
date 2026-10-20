.class public final Lteam/opay/sme/store/reports/ReportStatementFragment;
.super Lteam/opay/sme/store/reports/Hilt_ReportStatementFragment;
.source "ReportStatementFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/sme/store/reports/ReportStatementFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0001\u0018\u0000  2\u00020\u0001:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J!\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0003R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lteam/opay/sme/store/reports/ReportStatementFragment;",
        "Lteam/opay/sme/store/reports/BaseReportFragment;",
        "<init>",
        "()V",
        "",
        "E0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "c0",
        "",
        "show",
        "h0",
        "(Z)V",
        "onLazyLoad",
        "Lcvd;",
        "r",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "v0",
        "()Lcvd;",
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
.field public static final t:Lteam/opay/sme/store/reports/ReportStatementFragment$Companion;
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
    const-string v1, "getBinding()Lteam/opay/sme/store/databinding/SmeStoreFragmentReportStatementBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/sme/store/reports/ReportStatementFragment;

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
    sput-object v1, Lteam/opay/sme/store/reports/ReportStatementFragment;->u:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/sme/store/reports/ReportStatementFragment$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/sme/store/reports/ReportStatementFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/sme/store/reports/ReportStatementFragment;->t:Lteam/opay/sme/store/reports/ReportStatementFragment$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lteam/opay/sme/store/R$layout;->sme_store_fragment_report_statement:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/sme/store/reports/Hilt_ReportStatementFragment;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 7
    .line 8
    const-class v1, Lcvd;

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/sme/store/reports/ReportStatementFragment;->r:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 14
    .line 15
    sget-object v0, Lteam/opay/sme/store/api/ReportType;->REPORTS_STATEMENT:Lteam/opay/sme/store/api/ReportType;

    .line 16
    .line 17
    iput-object v0, p0, Lteam/opay/sme/store/reports/ReportStatementFragment;->s:Lteam/opay/sme/store/api/ReportType;

    .line 18
    .line 19
    return-void
.end method

.method public static final A0(Lteam/opay/sme/store/reports/ReportStatementFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    new-instance v0, Lxoc;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lxoc;-><init>(Lteam/opay/sme/store/reports/ReportStatementFragment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lteam/opay/sme/store/reports/BaseReportFragment;->f0(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final B0(Lteam/opay/sme/store/reports/ReportStatementFragment;Ljava/util/Calendar;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Lcvd;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    sget-object v0, Lxa6;->a:Lxa6;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "getTime(...)"

    .line 19
    .line 20
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "yyyy-MM-dd"

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Lxa6;->d(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method public static final C0(Lteam/opay/sme/store/reports/ReportStatementFragment;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Lcvd;->d:Lteam/opay/core/widget/TextInputView;

    .line 6
    .line 7
    invoke-virtual {p1}, Lteam/opay/core/widget/TextInputView;->getInputText()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v0, Lmnf;->a:Lmnf;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lmnf;->e(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportFragment;->U()Lteam/opay/sme/store/api/ReportReq;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p1}, Lteam/opay/sme/store/api/ReportReq;->setEmail(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget-object p0, p0, Lcvd;->b:Lcom/google/android/material/button/MaterialButton;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method public static final D0(Lteam/opay/sme/store/reports/ReportStatementFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->E0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final E0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcvd;->g:Lteam/opay/core/widget/DropBoxView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportFragment;->W()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0, v1}, Lteam/opay/core/widget/DropBoxView;->setInputText(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseFragment;->hideKeyboard()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "getViewLifecycleOwner(...)"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v5, Lteam/opay/sme/store/reports/ReportStatementFragment$sendEmail$1;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-direct {v5, p0, v0}, Lteam/opay/sme/store/reports/ReportStatementFragment$sendEmail$1;-><init>(Lteam/opay/sme/store/reports/ReportStatementFragment;Ljr2;)V

    .line 38
    .line 39
    .line 40
    const/4 v6, 0x3

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static synthetic m0(Lteam/opay/sme/store/reports/ReportStatementFragment;Ljava/util/Calendar;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/store/reports/ReportStatementFragment;->z0(Lteam/opay/sme/store/reports/ReportStatementFragment;Ljava/util/Calendar;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n0(Lteam/opay/sme/store/reports/ReportStatementFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->A0(Lteam/opay/sme/store/reports/ReportStatementFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o0(Lteam/opay/sme/store/reports/ReportStatementFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->D0(Lteam/opay/sme/store/reports/ReportStatementFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p0(Lteam/opay/sme/store/reports/ReportStatementFragment;Ljava/util/Calendar;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/store/reports/ReportStatementFragment;->B0(Lteam/opay/sme/store/reports/ReportStatementFragment;Ljava/util/Calendar;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q0(Lteam/opay/sme/store/reports/ReportStatementFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->y0(Lteam/opay/sme/store/reports/ReportStatementFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r0(Lteam/opay/sme/store/reports/ReportStatementFragment;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/store/reports/ReportStatementFragment;->C0(Lteam/opay/sme/store/reports/ReportStatementFragment;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s0(Lteam/opay/sme/store/reports/ReportStatementFragment;Lteam/opay/sme/store/api/BranchInfo;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/sme/store/reports/ReportStatementFragment;->x0(Lteam/opay/sme/store/reports/ReportStatementFragment;Lteam/opay/sme/store/api/BranchInfo;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t0(Lteam/opay/sme/store/reports/ReportStatementFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->w0(Lteam/opay/sme/store/reports/ReportStatementFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic u0(Lteam/opay/sme/store/reports/ReportStatementFragment;)Lcvd;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final w0(Lteam/opay/sme/store/reports/ReportStatementFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    new-instance v0, Lwoc;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lwoc;-><init>(Lteam/opay/sme/store/reports/ReportStatementFragment;)V

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

.method public static final x0(Lteam/opay/sme/store/reports/ReportStatementFragment;Lteam/opay/sme/store/api/BranchInfo;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p1, "showName"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Lcvd;->g:Lteam/opay/core/widget/DropBoxView;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lteam/opay/core/widget/DropBoxView;->setInputText(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static final y0(Lteam/opay/sme/store/reports/ReportStatementFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    new-instance v0, Lyoc;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lyoc;-><init>(Lteam/opay/sme/store/reports/ReportStatementFragment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lteam/opay/sme/store/reports/BaseReportFragment;->k0(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final z0(Lteam/opay/sme/store/reports/ReportStatementFragment;Ljava/util/Calendar;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Lcvd;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    sget-object v0, Lxa6;->a:Lxa6;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "getTime(...)"

    .line 19
    .line 20
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "yyyy-MM-dd"

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Lxa6;->d(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method


# virtual methods
.method public T()Lteam/opay/sme/store/api/ReportType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/reports/ReportStatementFragment;->s:Lteam/opay/sme/store/api/ReportType;

    .line 2
    .line 3
    return-object v0
.end method

.method public c0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcvd;->g:Lteam/opay/core/widget/DropBoxView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportFragment;->W()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/core/widget/DropBoxView;->setInputText(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public h0(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcvd;->f:Lteam/opay/core/widget/PulseLoaderView;

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
    .locals 4

    .line 1
    invoke-super {p0}, Lteam/opay/sme/store/reports/BaseReportFragment;->onLazyLoad()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcvd;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    sget-object v1, Lxa6;->a:Lxa6;

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportFragment;->X()Ljava/util/Date;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "yyyy-MM-dd"

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Lxa6;->d(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Lcvd;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportFragment;->Q()Ljava/util/Date;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2, v3}, Lxa6;->d(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
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
    const-string v1, "report_home_statement_show"

    .line 19
    .line 20
    invoke-virtual {p1, p2, v1, v0}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p1, p1, Lcvd;->g:Lteam/opay/core/widget/DropBoxView;

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportFragment;->W()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Lteam/opay/core/widget/DropBoxView;->setInputText(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportFragment;->U()Lteam/opay/sme/store/api/ReportReq;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->T()Lteam/opay/sme/store/api/ReportType;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Lteam/opay/sme/store/api/ReportReq;->setBusinessType(Lteam/opay/sme/store/api/ReportType;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p1, p1, Lcvd;->g:Lteam/opay/core/widget/DropBoxView;

    .line 52
    .line 53
    const-string p2, "selectBranch"

    .line 54
    .line 55
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Lroc;

    .line 59
    .line 60
    invoke-direct {p2, p0}, Lroc;-><init>(Lteam/opay/sme/store/reports/ReportStatementFragment;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object p1, p1, Lcvd;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    const-string p2, "selectStartDate"

    .line 73
    .line 74
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance p2, Lsoc;

    .line 78
    .line 79
    invoke-direct {p2, p0}, Lsoc;-><init>(Lteam/opay/sme/store/reports/ReportStatementFragment;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p1, p1, Lcvd;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    .line 91
    const-string p2, "selectEndDate"

    .line 92
    .line 93
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance p2, Ltoc;

    .line 97
    .line 98
    invoke-direct {p2, p0}, Ltoc;-><init>(Lteam/opay/sme/store/reports/ReportStatementFragment;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object p1, p1, Lcvd;->d:Lteam/opay/core/widget/TextInputView;

    .line 109
    .line 110
    new-instance p2, Luoc;

    .line 111
    .line 112
    invoke-direct {p2, p0}, Luoc;-><init>(Lteam/opay/sme/store/reports/ReportStatementFragment;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2}, Lteam/opay/core/widget/TextInputView;->g(Lkotlin/jvm/functions/Function1;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/ReportStatementFragment;->v0()Lcvd;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object p1, p1, Lcvd;->b:Lcom/google/android/material/button/MaterialButton;

    .line 123
    .line 124
    const-string p2, "actionSend"

    .line 125
    .line 126
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance p2, Lvoc;

    .line 130
    .line 131
    invoke-direct {p2, p0}, Lvoc;-><init>(Lteam/opay/sme/store/reports/ReportStatementFragment;)V

    .line 132
    .line 133
    .line 134
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public final v0()Lcvd;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/reports/ReportStatementFragment;->r:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/sme/store/reports/ReportStatementFragment;->u:[Lzo7;

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
    check-cast v0, Lcvd;

    .line 13
    .line 14
    return-object v0
.end method
