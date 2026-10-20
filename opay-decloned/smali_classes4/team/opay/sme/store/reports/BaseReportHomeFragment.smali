.class public final Lteam/opay/sme/store/reports/BaseReportHomeFragment;
.super Lteam/opay/core/common/base/BaseLazyFragment;
.source "BaseReportHomeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/sme/store/reports/BaseReportHomeFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ)\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0003J\'\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u001b\u0010)\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u001b\u00101\u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010&\u001a\u0004\u0008/\u00100R\u001b\u00104\u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010&\u001a\u0004\u00083\u00100R\u001b\u00109\u001a\u0002058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u0010&\u001a\u0004\u00087\u00108R\u001b\u0010>\u001a\u00020:8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010&\u001a\u0004\u0008<\u0010=R(\u0010A\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0018\u0010D\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u001b\u0010I\u001a\u00020E8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008F\u0010&\u001a\u0004\u0008G\u0010H\u00a8\u0006J"
    }
    d2 = {
        "Lteam/opay/sme/store/reports/BaseReportHomeFragment;",
        "Lteam/opay/core/common/base/BaseLazyFragment;",
        "<init>",
        "()V",
        "",
        "l0",
        "",
        "position",
        "Landroid/view/View;",
        "a0",
        "(I)Landroid/view/View;",
        "tabView",
        "",
        "selected",
        "n0",
        "(Landroid/view/View;IZ)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onLazyLoad",
        "Lteam/opay/sme/store/api/Period;",
        "period",
        "Lkotlin/Pair;",
        "Ljava/util/Date;",
        "T",
        "(Lteam/opay/sme/store/api/Period;)Lkotlin/Pair;",
        "Lgud;",
        "a",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "U",
        "()Lgud;",
        "binding",
        "Lteam/opay/sme/store/StoreViewModel;",
        "b",
        "Lid8;",
        "b0",
        "()Lteam/opay/sme/store/StoreViewModel;",
        "viewModel",
        "Lteam/opay/sme/store/api/ReportType;",
        "c",
        "Lteam/opay/sme/store/api/ReportType;",
        "reportType",
        "d",
        "Z",
        "()Ljava/util/Date;",
        "minDate",
        "e",
        "X",
        "maxDate",
        "Lteam/opay/core/common/android/vp2/TabsAdapter2;",
        "f",
        "W",
        "()Lteam/opay/core/common/android/vp2/TabsAdapter2;",
        "mTabsAdapter",
        "Lcom/google/android/material/tabs/TabLayoutMediator;",
        "g",
        "Y",
        "()Lcom/google/android/material/tabs/TabLayoutMediator;",
        "mediator",
        "h",
        "Lkotlin/Pair;",
        "datePair",
        "i",
        "Lteam/opay/sme/store/api/Period;",
        "headerSelected",
        "Lteam/opay/sme/store/reports/ReportPeroidAdapter;",
        "j",
        "V",
        "()Lteam/opay/sme/store/reports/ReportPeroidAdapter;",
        "headerAdapter",
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
.field public static final synthetic k:[Lzo7;
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

.field public c:Lteam/opay/sme/store/api/ReportType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

.field public h:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/Date;",
            "+",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lteam/opay/sme/store/api/Period;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final j:Lid8;
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
    const-string v1, "getBinding()Lteam/opay/sme/store/databinding/SmeStoreFragmentBaseReportBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/sme/store/reports/BaseReportHomeFragment;

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
    sput-object v1, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->k:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget v0, Lteam/opay/sme/store/R$layout;->sme_store_fragment_base_report:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/common/base/BaseLazyFragment;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 7
    .line 8
    const-class v1, Lgud;

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->a:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 14
    .line 15
    const-class v0, Lteam/opay/sme/store/StoreViewModel;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lteam/opay/sme/store/reports/BaseReportHomeFragment$special$$inlined$activityViewModels$default$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lteam/opay/sme/store/reports/BaseReportHomeFragment$special$$inlined$activityViewModels$default$2;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v2, v3, p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lteam/opay/sme/store/reports/BaseReportHomeFragment$special$$inlined$activityViewModels$default$3;

    .line 33
    .line 34
    invoke-direct {v3, p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->b:Lid8;

    .line 42
    .line 43
    new-instance v0, Lqv0;

    .line 44
    .line 45
    invoke-direct {v0}, Lqv0;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->d:Lid8;

    .line 53
    .line 54
    new-instance v0, Lrv0;

    .line 55
    .line 56
    invoke-direct {v0}, Lrv0;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->e:Lid8;

    .line 64
    .line 65
    new-instance v0, Lsv0;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lsv0;-><init>(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->f:Lid8;

    .line 75
    .line 76
    new-instance v0, Ltv0;

    .line 77
    .line 78
    invoke-direct {v0, p0}, Ltv0;-><init>(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->g:Lid8;

    .line 86
    .line 87
    new-instance v0, Luv0;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Luv0;-><init>(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->j:Lid8;

    .line 97
    .line 98
    return-void
.end method

.method public static synthetic H(Lteam/opay/sme/store/reports/BaseReportHomeFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->j0(Lteam/opay/sme/store/reports/BaseReportHomeFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)Lcom/google/android/material/tabs/TabLayoutMediator;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->i0(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->f0()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic K(Lteam/opay/sme/store/reports/BaseReportHomeFragment;Lteam/opay/sme/store/api/Period;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->m0(Lteam/opay/sme/store/reports/BaseReportHomeFragment;Lteam/opay/sme/store/api/Period;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)Lteam/opay/core/common/android/vp2/TabsAdapter2;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->e0(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)Lteam/opay/core/common/android/vp2/TabsAdapter2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M()Ljava/util/Date;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->k0()Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic N(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)Lteam/opay/sme/store/reports/ReportPeroidAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->c0(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)Lteam/opay/sme/store/reports/ReportPeroidAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O()Ljava/util/Date;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->h0()Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic P(Lteam/opay/sme/store/reports/BaseReportHomeFragment;Lteam/opay/sme/store/api/Period;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->d0(Lteam/opay/sme/store/reports/BaseReportHomeFragment;Lteam/opay/sme/store/api/Period;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->g0()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic R(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)Lteam/opay/core/common/android/vp2/TabsAdapter2;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->W()Lteam/opay/core/common/android/vp2/TabsAdapter2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic S(Lteam/opay/sme/store/reports/BaseReportHomeFragment;Landroid/view/View;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->n0(Landroid/view/View;IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final X()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Date;

    .line 8
    .line 9
    return-object v0
.end method

.method private final Z()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Date;

    .line 8
    .line 9
    return-object v0
.end method

.method private final a0(I)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lteam/opay/sme/store/R$layout;->sme_store_item_user_tab:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-direct {p0, v0, p1, v1}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->n0(Landroid/view/View;IZ)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private final b0()Lteam/opay/sme/store/StoreViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/sme/store/StoreViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final c0(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)Lteam/opay/sme/store/reports/ReportPeroidAdapter;
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/sme/store/reports/ReportPeroidAdapter;

    .line 2
    .line 3
    new-instance v1, Lvv0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lvv0;-><init>(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v0, v3, v1, p0, v2}, Lteam/opay/sme/store/reports/ReportPeroidAdapter;-><init>(ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final d0(Lteam/opay/sme/store/reports/BaseReportHomeFragment;Lteam/opay/sme/store/api/Period;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/sme/store/api/Period;->CUSTOM:Lteam/opay/sme/store/api/Period;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->l0()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-object p1, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->i:Lteam/opay/sme/store/api/Period;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->T(Lteam/opay/sme/store/api/Period;)Lkotlin/Pair;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iput-object p1, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->h:Lkotlin/Pair;

    .line 23
    .line 24
    invoke-direct {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->b0()Lteam/opay/sme/store/StoreViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object p0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->c:Lteam/opay/sme/store/api/ReportType;

    .line 29
    .line 30
    invoke-static {p0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Lteam/opay/sme/store/StoreViewModel;->Z(Lkotlin/Pair;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static final e0(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)Lteam/opay/core/common/android/vp2/TabsAdapter2;
    .locals 7

    .line 1
    new-instance v6, Lteam/opay/core/common/android/vp2/TabsAdapter2;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v0, "getChildFragmentManager(...)"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    move-object v0, v6

    .line 24
    invoke-direct/range {v0 .. v5}, Lteam/opay/core/common/android/vp2/TabsAdapter2;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;Lea7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->c:Lteam/opay/sme/store/api/ReportType;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v1, Lteam/opay/sme/store/reports/BaseReportHomeFragment$a;->a:[I

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    aget v0, v1, v0

    .line 40
    .line 41
    :goto_0
    const/4 v1, 0x1

    .line 42
    const-class v2, Lteam/opay/sme/store/reports/ReportBranchFragment;

    .line 43
    .line 44
    if-eq v0, v1, :cond_3

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    if-eq v0, v1, :cond_2

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    if-eq v0, v1, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const-class v2, Lteam/opay/sme/store/reports/ReportStatementFragment;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const-class v2, Lteam/opay/sme/store/reports/ReportEODFragment;

    .line 57
    .line 58
    :cond_3
    :goto_1
    new-instance v0, Lteam/opay/core/common/android/TabInfo;

    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1, v2}, Lteam/opay/core/common/android/TabInfo;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .line 66
    .line 67
    const-string v1, "My Branch"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/TabInfo;->h(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v3, "VIRTUAL"

    .line 78
    .line 79
    const-string v4, "branchType"

    .line 80
    .line 81
    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->h:Lkotlin/Pair;

    .line 85
    .line 86
    const-string v5, "datePair"

    .line 87
    .line 88
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/TabInfo;->f(Landroid/os/Bundle;)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Lwv0;

    .line 95
    .line 96
    invoke-direct {v1}, Lwv0;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v0, v1}, Lteam/opay/core/common/android/vp2/TabsAdapter2;->c(Lteam/opay/core/common/android/TabInfo;Lkotlin/jvm/functions/Function0;)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lteam/opay/core/common/android/TabInfo;

    .line 103
    .line 104
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-direct {v0, v1, v2}, Lteam/opay/core/common/android/TabInfo;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .line 110
    .line 111
    const-string v1, "Linked Branch"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/TabInfo;->h(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v1, Landroid/os/Bundle;

    .line 117
    .line 118
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v2, "REAL"

    .line 122
    .line 123
    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object p0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->h:Lkotlin/Pair;

    .line 127
    .line 128
    invoke-virtual {v1, v5, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/TabInfo;->f(Landroid/os/Bundle;)V

    .line 132
    .line 133
    .line 134
    new-instance p0, Lxv0;

    .line 135
    .line 136
    invoke-direct {p0}, Lxv0;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v0, p0}, Lteam/opay/core/common/android/vp2/TabsAdapter2;->c(Lteam/opay/core/common/android/TabInfo;Lkotlin/jvm/functions/Function0;)V

    .line 140
    .line 141
    .line 142
    return-object v6
.end method

.method public static final f0()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final g0()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final h0()Ljava/util/Date;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final i0(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)Lcom/google/android/material/tabs/TabLayoutMediator;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->U()Lgud;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lgud;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->U()Lgud;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v2, v2, Lgud;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 14
    .line 15
    new-instance v3, Lyv0;

    .line 16
    .line 17
    invoke-direct {v3, p0}, Lyv0;-><init>(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static final j0(Lteam/opay/sme/store/reports/BaseReportHomeFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->a0(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final k0()Ljava/util/Date;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-static {v0, v1, v2}, Le33;->a(Ljava/util/Date;II)Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Le33;->d(Ljava/util/Date;I)Ljava/util/Date;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private final l0()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/sme/store/reports/PeriodFragment;->D:Lteam/opay/sme/store/reports/PeriodFragment$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->c:Lteam/opay/sme/store/api/ReportType;

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->V()Lteam/opay/sme/store/reports/ReportPeroidAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lteam/opay/sme/store/reports/ReportPeroidAdapter;->getDataList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    new-array v3, v3, [Lteam/opay/sme/store/api/Period;

    .line 15
    .line 16
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, [Lteam/opay/sme/store/api/Period;

    .line 21
    .line 22
    iget-object v3, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->i:Lteam/opay/sme/store/api/Period;

    .line 23
    .line 24
    iget-object v4, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->h:Lkotlin/Pair;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3, v4}, Lteam/opay/sme/store/reports/PeriodFragment$Companion;->a(Lteam/opay/sme/store/api/ReportType;[Lteam/opay/sme/store/api/Period;Lteam/opay/sme/store/api/Period;Lkotlin/Pair;)Lteam/opay/sme/store/reports/PeriodFragment;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lzv0;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lzv0;-><init>(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lteam/opay/sme/store/reports/PeriodFragment;->r0(Lkotlin/jvm/functions/Function2;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Lre6;->p(Landroidx/fragment/app/Fragment;Lteam/opay/core/common/base/BaseSheetFragment;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static final m0(Lteam/opay/sme/store/reports/BaseReportHomeFragment;Lteam/opay/sme/store/api/Period;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "pair"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->i:Lteam/opay/sme/store/api/Period;

    .line 7
    .line 8
    sget-object v0, Lteam/opay/sme/store/api/Period;->ALL_TIME:Lteam/opay/sme/store/api/Period;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->V()Lteam/opay/sme/store/reports/ReportPeroidAdapter;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->Z()Ljava/util/Date;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->X()Ljava/util/Date;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lteam/opay/sme/store/reports/ReportPeroidAdapter;->o(Lkotlin/Pair;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->V()Lteam/opay/sme/store/reports/ReportPeroidAdapter;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lteam/opay/sme/store/api/Period;->CUSTOM:Lteam/opay/sme/store/api/Period;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lteam/opay/sme/store/reports/ReportPeroidAdapter;->p(Lteam/opay/sme/store/api/Period;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->V()Lteam/opay/sme/store/reports/ReportPeroidAdapter;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p2}, Lteam/opay/sme/store/reports/ReportPeroidAdapter;->o(Lkotlin/Pair;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->V()Lteam/opay/sme/store/reports/ReportPeroidAdapter;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Lteam/opay/sme/store/reports/ReportPeroidAdapter;->p(Lteam/opay/sme/store/api/Period;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->V()Lteam/opay/sme/store/reports/ReportPeroidAdapter;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->T(Lteam/opay/sme/store/api/Period;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move-object p2, p1

    .line 70
    :goto_1
    iput-object p2, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->h:Lkotlin/Pair;

    .line 71
    .line 72
    invoke-direct {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->b0()Lteam/opay/sme/store/StoreViewModel;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object p2, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->c:Lteam/opay/sme/store/api/ReportType;

    .line 77
    .line 78
    iget-object p0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->h:Lkotlin/Pair;

    .line 79
    .line 80
    invoke-static {p2, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p1, p0}, Lteam/opay/sme/store/StoreViewModel;->Z(Lkotlin/Pair;)V

    .line 85
    .line 86
    .line 87
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    return-object p0
.end method

.method private final n0(Landroid/view/View;IZ)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget v0, Lteam/opay/sme/store/R$id;->tabItem:I

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->W()Lteam/opay/core/common/android/vp2/TabsAdapter2;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p2}, Lteam/opay/core/common/android/vp2/TabsAdapter2;->e(I)Lteam/opay/core/common/android/TabInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lteam/opay/core/common/android/TabInfo;->e()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    if-eqz p3, :cond_4

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    sget p2, Lteam/opay/sme/store/R$drawable;->sme_store_shape_solid_white_tlr16:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    if-eqz p1, :cond_3

    .line 40
    .line 41
    const/high16 p2, 0x41600000    # 14.0f

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44
    .line 45
    .line 46
    :cond_3
    if-eqz p1, :cond_8

    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    sget p3, Lteam/opay/core/common/R$font;->roboto_500:I

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-static {p2, p3, v0}, Lwie;->n(Landroid/content/Context;II)Landroid/graphics/Typeface;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    if-nez p2, :cond_5

    .line 64
    .line 65
    sget p2, Lteam/opay/sme/store/R$drawable;->sme_store_icon_tab_left:I

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    sget p2, Lteam/opay/sme/store/R$drawable;->sme_store_icon_tab_right:I

    .line 69
    .line 70
    :goto_1
    if-eqz p1, :cond_6

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 73
    .line 74
    .line 75
    :cond_6
    if-eqz p1, :cond_7

    .line 76
    .line 77
    const/high16 p2, 0x41400000    # 12.0f

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    .line 81
    .line 82
    :cond_7
    if-eqz p1, :cond_8

    .line 83
    .line 84
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    sget p3, Lteam/opay/core/common/R$font;->roboto_400:I

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    invoke-static {p2, p3, v0}, Lwie;->n(Landroid/content/Context;II)Landroid/graphics/Typeface;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    .line 97
    .line 98
    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public final T(Lteam/opay/sme/store/api/Period;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/api/Period;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v1, Lteam/opay/sme/store/reports/BaseReportHomeFragment$a;->b:[I

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    aget p1, v1, p1

    .line 17
    .line 18
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    goto :goto_1

    .line 23
    :pswitch_0
    const/4 p1, 0x2

    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-static {v0, p1, v1}, Le33;->a(Ljava/util/Date;II)Ljava/util/Date;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->X()Ljava/util/Date;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_1

    .line 38
    :pswitch_1
    const/16 p1, 0x1e

    .line 39
    .line 40
    invoke-static {v0, p1}, Le33;->b(Ljava/util/Date;I)Ljava/util/Date;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->X()Ljava/util/Date;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {p1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_1

    .line 53
    :pswitch_2
    const/16 p1, 0xe

    .line 54
    .line 55
    invoke-static {v0, p1}, Le33;->b(Ljava/util/Date;I)Ljava/util/Date;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->X()Ljava/util/Date;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {p1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_1

    .line 68
    :pswitch_3
    const/4 p1, 0x7

    .line 69
    invoke-static {v0, p1}, Le33;->b(Ljava/util/Date;I)Ljava/util/Date;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->X()Ljava/util/Date;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {p1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    goto :goto_1

    .line 82
    :pswitch_4
    invoke-static {v0, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    goto :goto_1

    .line 87
    :pswitch_5
    const/4 p1, 0x1

    .line 88
    invoke-static {v0, p1}, Le33;->b(Ljava/util/Date;I)Ljava/util/Date;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v0, p1}, Le33;->b(Ljava/util/Date;I)Ljava/util/Date;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_1
    return-object p1

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final U()Lgud;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->a:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->k:[Lzo7;

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
    check-cast v0, Lgud;

    .line 13
    .line 14
    return-object v0
.end method

.method public final V()Lteam/opay/sme/store/reports/ReportPeroidAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/sme/store/reports/ReportPeroidAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final W()Lteam/opay/core/common/android/vp2/TabsAdapter2;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/common/android/vp2/TabsAdapter2;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Y()Lcom/google/android/material/tabs/TabLayoutMediator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 8
    .line 9
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
    const-string v3, "reportType"

    .line 16
    .line 17
    if-lt v1, v2, :cond_0

    .line 18
    .line 19
    :try_start_1
    const-class v1, Lteam/opay/sme/store/api/ReportType;

    .line 20
    .line 21
    invoke-static {p1, v3, v1}, Lyb0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    move-object v0, p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    instance-of v1, p1, Lteam/opay/sme/store/api/ReportType;

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    move-object p1, v0

    .line 36
    :cond_1
    check-cast p1, Lteam/opay/sme/store/api/ReportType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    :goto_1
    check-cast v0, Lteam/opay/sme/store/api/ReportType;

    .line 40
    .line 41
    :cond_2
    iput-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->c:Lteam/opay/sme/store/api/ReportType;

    .line 42
    .line 43
    return-void
.end method

.method public onLazyLoad()V
    .locals 0

    .line 1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    const-string v4, "view"

    .line 6
    .line 7
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2}, Lteam/opay/core/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->U()Lgud;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lgud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->V()Lteam/opay/sme/store/reports/ReportPeroidAdapter;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->c:Lteam/opay/sme/store/api/ReportType;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    const/4 p1, -0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object p2, Lteam/opay/sme/store/reports/BaseReportHomeFragment$a;->a:[I

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    aget p1, p2, p1

    .line 39
    .line 40
    :goto_0
    const-string p2, "recyclerView"

    .line 41
    .line 42
    if-eq p1, v3, :cond_2

    .line 43
    .line 44
    if-eq p1, v2, :cond_2

    .line 45
    .line 46
    if-eq p1, v1, :cond_1

    .line 47
    .line 48
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->U()Lgud;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p1, p1, Lgud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .line 58
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->U()Lgud;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p1, p1, Lgud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .line 71
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    sget-object p1, Lteam/opay/sme/store/api/Period;->TODAY:Lteam/opay/sme/store/api/Period;

    .line 78
    .line 79
    iput-object p1, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->i:Lteam/opay/sme/store/api/Period;

    .line 80
    .line 81
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->V()Lteam/opay/sme/store/reports/ReportPeroidAdapter;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    iget-object v4, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->i:Lteam/opay/sme/store/api/Period;

    .line 86
    .line 87
    invoke-virtual {p2, v4}, Lteam/opay/sme/store/reports/ReportPeroidAdapter;->p(Lteam/opay/sme/store/api/Period;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->V()Lteam/opay/sme/store/reports/ReportPeroidAdapter;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    new-array v4, v0, [Lteam/opay/sme/store/api/Period;

    .line 95
    .line 96
    const/4 v5, 0x0

    .line 97
    aput-object p1, v4, v5

    .line 98
    .line 99
    sget-object p1, Lteam/opay/sme/store/api/Period;->YESTERDAY:Lteam/opay/sme/store/api/Period;

    .line 100
    .line 101
    aput-object p1, v4, v3

    .line 102
    .line 103
    sget-object p1, Lteam/opay/sme/store/api/Period;->LAST_WEEK:Lteam/opay/sme/store/api/Period;

    .line 104
    .line 105
    aput-object p1, v4, v2

    .line 106
    .line 107
    sget-object p1, Lteam/opay/sme/store/api/Period;->CUSTOM:Lteam/opay/sme/store/api/Period;

    .line 108
    .line 109
    aput-object p1, v4, v1

    .line 110
    .line 111
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p2, p1}, Lteam/opay/sme/store/reports/ReportPeroidAdapter;->setDataList(Ljava/util/List;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->U()Lgud;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object p1, p1, Lgud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    .line 124
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 125
    .line 126
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 134
    .line 135
    .line 136
    :goto_1
    iget-object p1, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->i:Lteam/opay/sme/store/api/Period;

    .line 137
    .line 138
    if-eqz p1, :cond_3

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->T(Lteam/opay/sme/store/api/Period;)Lkotlin/Pair;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-eqz p1, :cond_3

    .line 145
    .line 146
    iput-object p1, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->h:Lkotlin/Pair;

    .line 147
    .line 148
    invoke-direct {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->b0()Lteam/opay/sme/store/StoreViewModel;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    iget-object v0, p0, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->c:Lteam/opay/sme/store/api/ReportType;

    .line 153
    .line 154
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p2, p1}, Lteam/opay/sme/store/StoreViewModel;->Z(Lkotlin/Pair;)V

    .line 159
    .line 160
    .line 161
    :cond_3
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->U()Lgud;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iget-object p1, p1, Lgud;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 166
    .line 167
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->W()Lteam/opay/core/common/android/vp2/TabsAdapter2;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->Y()Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->U()Lgud;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iget-object p1, p1, Lgud;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 186
    .line 187
    const/4 p2, 0x0

    .line 188
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment;->U()Lgud;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    iget-object p1, p1, Lgud;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 196
    .line 197
    new-instance p2, Lteam/opay/sme/store/reports/BaseReportHomeFragment$b;

    .line 198
    .line 199
    invoke-direct {p2, p0}, Lteam/opay/sme/store/reports/BaseReportHomeFragment$b;-><init>(Lteam/opay/sme/store/reports/BaseReportHomeFragment;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 203
    .line 204
    .line 205
    return-void
.end method
