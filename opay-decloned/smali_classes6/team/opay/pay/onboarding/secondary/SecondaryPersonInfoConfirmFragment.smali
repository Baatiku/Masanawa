.class public final Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;
.super Lteam/opay/pay/onboarding/secondary/Hilt_SecondaryPersonInfoConfirmFragment;
.source "SecondaryPersonInfoConfirmFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/onboarding/secondary/Hilt_SecondaryPersonInfoConfirmFragment<",
        "Lyza;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u001f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J!\u0010\u000c\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0004R\u001b\u0010\u0014\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0011\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lyza;",
        "<init>",
        "()V",
        "",
        "initView",
        "addObserver",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "h0",
        "Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;",
        "o",
        "Lid8;",
        "c0",
        "()Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;",
        "viewModel",
        "Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;",
        "p",
        "b0",
        "()Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;",
        "secondaryViewModel",
        "Lteam/opay/pay/kyc/base/KycPairAdapter;",
        "q",
        "a0",
        "()Lteam/opay/pay/kyc/base/KycPairAdapter;",
        "infoAdapter",
        "r",
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
.field public static final r:Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->r:Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget-object v0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$1;->INSTANCE:Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/onboarding/secondary/Hilt_SecondaryPersonInfoConfirmFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$special$$inlined$viewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$special$$inlined$viewModels$default$4;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 37
    .line 38
    .line 39
    new-instance v5, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$special$$inlined$viewModels$default$5;

    .line 40
    .line 41
    invoke-direct {v5, p0, v0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1, v2, v3, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->o:Lid8;

    .line 49
    .line 50
    const-class v0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;

    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$special$$inlined$activityViewModels$default$1;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$special$$inlined$activityViewModels$default$2;

    .line 62
    .line 63
    invoke-direct {v2, v4, p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$special$$inlined$activityViewModels$default$3;

    .line 67
    .line 68
    invoke-direct {v3, p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->p:Lid8;

    .line 76
    .line 77
    new-instance v0, Lj7d;

    .line 78
    .line 79
    invoke-direct {v0}, Lj7d;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->q:Lid8;

    .line 87
    .line 88
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->Y(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;Lteam/opay/core/api/graphql/ReleaseCheckRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->W(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;Lteam/opay/core/api/graphql/ReleaseCheckRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->e0(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->g0(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->X(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->f0(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;Lteam/opay/core/api/graphql/QueryUserInfoRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->Z(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;Lteam/opay/core/api/graphql/QueryUserInfoRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic V()Lteam/opay/pay/kyc/base/KycPairAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->d0()Lteam/opay/pay/kyc/base/KycPairAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final W(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;Lteam/opay/core/api/graphql/ReleaseCheckRsp;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/ReleaseCheckRsp;->c()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    sget-object v1, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->j:Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$Companion;

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/ReleaseCheckRsp;->b()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, ""

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    move-object v4, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v4, p1

    .line 30
    :goto_0
    invoke-direct {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->b0()Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->v()Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/ReleaseCheckReq;->getChannel()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-nez p0, :cond_1

    .line 43
    .line 44
    move-object v5, v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v5, p0

    .line 47
    :goto_1
    const-string v6, "recycled_number"

    .line 48
    .line 49
    const-string v3, "REGISTER"

    .line 50
    .line 51
    invoke-virtual/range {v1 .. v6}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    sget-object v0, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;->n:Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment$Companion;

    .line 56
    .line 57
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/ReleaseCheckRsp;->a()Lteam/opay/core/api/graphql/ReleaseDialogInfo;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment$Companion;->a(Lteam/opay/core/api/graphql/ReleaseDialogInfo;)Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->E(Landroidx/fragment/app/Fragment;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 66
    .line 67
    .line 68
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0
.end method

.method public static final X(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lyza;

    .line 6
    .line 7
    iget-object p0, p0, Lyza;->f:Lteam/opay/core/android/views/PulseLoaderView;

    .line 8
    .line 9
    const-string v0, "loading"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final Y(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final Z(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;Lteam/opay/core/api/graphql/QueryUserInfoRsp;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lyza;

    .line 6
    .line 7
    iget-object v0, v0, Lyza;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    sget v1, Lteam/opay/pay/R$string;->osdk_secondary_desc:I

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/QueryUserInfoRsp;->e()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x1

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aput-object v2, v3, v4

    .line 20
    .line 21
    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->a0()Lteam/opay/pay/kyc/base/KycPairAdapter;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->b0()Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v2, "requireContext(...)"

    .line 45
    .line 46
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p0, p1}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->u(Landroid/content/Context;Lteam/opay/core/api/graphql/QueryUserInfoRsp;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p0
.end method

.method private final a0()Lteam/opay/pay/kyc/base/KycPairAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->q:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/KycPairAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final addObserver()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->b0()Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->w()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lf7d;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lf7d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$a;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->c0()Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Lg7d;

    .line 39
    .line 40
    invoke-direct {v3, p0}, Lg7d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$a;

    .line 44
    .line 45
    invoke-direct {v4, v3}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v3, Lh7d;

    .line 60
    .line 61
    invoke-direct {v3, p0}, Lh7d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;)V

    .line 62
    .line 63
    .line 64
    new-instance v4, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$a;

    .line 65
    .line 66
    invoke-direct {v4, v3}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;->u()Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    new-instance v2, Li7d;

    .line 81
    .line 82
    invoke-direct {v2, p0}, Li7d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;)V

    .line 83
    .line 84
    .line 85
    new-instance v3, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$a;

    .line 86
    .line 87
    invoke-direct {v3, v2}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private final b0()Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final d0()Lteam/opay/pay/kyc/base/KycPairAdapter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/base/KycPairAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/kyc/base/KycPairAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final e0(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "recycled_number_notmine_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->c0()Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "getViewLifecycleOwner(...)"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->b0()Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->v()Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, v1, p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;->v(Lag8;Lteam/opay/core/api/graphql/ReleaseCheckReq;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method public static final f0(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "recycled_number_mine_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "key_result_action"

    .line 17
    .line 18
    const-string v2, "result_action_login"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, -0x1

    .line 28
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method public static final g0(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->h0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final initView()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lyza;

    .line 6
    .line 7
    iget-object v0, v0, Lyza;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->a0()Lteam/opay/pay/kyc/base/KycPairAdapter;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 29
    .line 30
    const/4 v2, 0x6

    .line 31
    invoke-static {v2}, Lkmf;->g(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/16 v10, 0x7c

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    move-object v2, v1

    .line 45
    invoke-direct/range {v2 .. v11}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lyza;

    .line 56
    .line 57
    iget-object v0, v0, Lyza;->h:Lcom/google/android/material/button/MaterialButton;

    .line 58
    .line 59
    const-string v1, "notMeButton"

    .line 60
    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lc7d;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lc7d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lyza;

    .line 77
    .line 78
    iget-object v0, v0, Lyza;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    const-string v1, "meButton"

    .line 81
    .line 82
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Ld7d;

    .line 86
    .line 87
    invoke-direct {v1, p0}, Ld7d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v1}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lyza;

    .line 98
    .line 99
    iget-object v0, v0, Lyza;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 100
    .line 101
    const-string v1, "tipsIcon"

    .line 102
    .line 103
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v1, Le7d;

    .line 107
    .line 108
    invoke-direct {v1, p0}, Le7d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v1}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method


# virtual methods
.method public final c0()Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final h0()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lteam/opay/pay/R$string;->osdk_secondary_confirm_tips_desc:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    const-string v0, "getString(...)"

    .line 12
    .line 13
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 17
    .line 18
    sget v2, Lteam/opay/pay/R$string;->osdk_got_it:I

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/16 v11, 0x73

    .line 28
    .line 29
    const/4 v12, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v10, 0x0

    .line 36
    move-object v2, v1

    .line 37
    invoke-direct/range {v2 .. v12}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 47
    .line 48
    .line 49
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->initView()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->addObserver()V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lx7b;->a:Lx7b;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    new-array p2, p2, [Lkotlin/Pair;

    .line 19
    .line 20
    const-string v0, "recycled_number_page_show"

    .line 21
    .line 22
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
