.class public final Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;
.super Lteam/opay/pay/onboarding/secondary/Hilt_SecondaryContainerFragment;
.source "SecondaryContainerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/onboarding/secondary/Hilt_SecondaryContainerFragment<",
        "Lxza;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lxza;",
        "<init>",
        "()V",
        "",
        "addObserver",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;",
        "o",
        "Lid8;",
        "W",
        "()Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;",
        "secondaryViewModel",
        "p",
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
.field public static final p:Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;->p:Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$1;->INSTANCE:Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/onboarding/secondary/Hilt_SecondaryContainerFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;->o:Lid8;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;->U(Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;->V(Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;->S(Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;Lteam/opay/core/api/graphql/QueryUserInfoRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;->T(Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;Lteam/opay/core/api/graphql/QueryUserInfoRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lxza;

    .line 6
    .line 7
    iget-object p0, p0, Lxza;->d:Lteam/opay/core/android/views/PulseLoaderView;

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

.method public static final T(Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;Lteam/opay/core/api/graphql/QueryUserInfoRsp;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lxza;

    .line 6
    .line 7
    iget-object p1, p1, Lxza;->c:Lteam/opay/pay/kyc/view/EmptyView;

    .line 8
    .line 9
    const-string v0, "emptyView"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    sget p1, Lteam/opay/pay/R$id;->personInfoContainer:I

    .line 18
    .line 19
    sget-object v0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;->r:Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$Companion;

    .line 20
    .line 21
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment$Companion;->a()Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmFragment;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->t(Landroidx/fragment/app/Fragment;ILandroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method public static final U(Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxza;

    .line 6
    .line 7
    iget-object v1, v0, Lxza;->c:Lteam/opay/pay/kyc/view/EmptyView;

    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    move-object v3, p1

    .line 30
    check-cast v3, Ljava/lang/String;

    .line 31
    .line 32
    new-instance v8, Ls6d;

    .line 33
    .line 34
    invoke-direct {v8, p0}, Ls6d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;)V

    .line 35
    .line 36
    .line 37
    const/16 v9, 0x3c

    .line 38
    .line 39
    const/4 v10, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    invoke-static/range {v1 .. v10}, Lteam/opay/pay/kyc/view/EmptyView;->j(Lteam/opay/pay/kyc/view/EmptyView;ILjava/lang/String;ILjava/lang/String;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;->W()Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "getViewLifecycleOwner(...)"

    .line 15
    .line 16
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->x(Lag8;)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private final W()Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;->o:Lid8;

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

.method private final addObserver()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;->W()Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Lp6d;

    .line 14
    .line 15
    invoke-direct {v3, p0}, Lp6d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v4, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$a;

    .line 19
    .line 20
    invoke-direct {v4, v3}, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->w()Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v3, Lq6d;

    .line 35
    .line 36
    invoke-direct {v3, p0}, Lq6d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$a;

    .line 40
    .line 41
    invoke-direct {v4, v3}, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Lr6d;

    .line 56
    .line 57
    invoke-direct {v2, p0}, Lr6d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;)V

    .line 58
    .line 59
    .line 60
    new-instance v3, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$a;

    .line 61
    .line 62
    invoke-direct {v3, v2}, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method


# virtual methods
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
    invoke-direct {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;->W()Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "getViewLifecycleOwner(...)"

    .line 18
    .line 19
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->x(Lag8;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lxza;

    .line 30
    .line 31
    iget-object p1, p1, Lxza;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 32
    .line 33
    const-string p2, "actionBar"

    .line 34
    .line 35
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p2}, Lteam/opay/swarmfoundation/utils/StatusBarUtil;->d(Landroid/content/Context;)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-static {p1, v0, p2, v0, v0}, Lteam/opay/core/android/ViewKt;->r(Landroid/view/View;IIII)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;->addObserver()V

    .line 51
    .line 52
    .line 53
    return-void
.end method
