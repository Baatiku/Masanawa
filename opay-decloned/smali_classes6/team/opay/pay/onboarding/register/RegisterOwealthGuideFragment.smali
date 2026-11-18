.class public final Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;
.super Lteam/opay/pay/onboarding/register/Hilt_RegisterOwealthGuideFragment;
.source "RegisterOwealthGuideFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/onboarding/register/Hilt_RegisterOwealthGuideFragment<",
        "Lsza;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0007\u0018\u0000 &2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J!\u0010\u000c\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0004R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R*\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010%\u001a\u00020\u000e8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010\u0010\"\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lsza;",
        "<init>",
        "()V",
        "",
        "addObserver",
        "initView",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "onBackPressed",
        "()Z",
        "b0",
        "Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;",
        "o",
        "Lid8;",
        "Y",
        "()Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;",
        "viewModel",
        "Lkotlin/Function0;",
        "p",
        "Lkotlin/jvm/functions/Function0;",
        "getOnGuideBackOrFinish",
        "()Lkotlin/jvm/functions/Function0;",
        "e0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onGuideBackOrFinish",
        "q",
        "Z",
        "getSupportBack",
        "setSupportBack",
        "(Z)V",
        "supportBack",
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
.field public static final r:Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->r:Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$1;->INSTANCE:Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/onboarding/register/Hilt_RegisterOwealthGuideFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$special$$inlined$viewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$special$$inlined$viewModels$default$4;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$special$$inlined$viewModels$default$5;

    .line 40
    .line 41
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->o:Lid8;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->q:Z

    .line 52
    .line 53
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->Z(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->W(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->d0(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->c0(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->X(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->V(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->a0(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lsza;

    .line 6
    .line 7
    iget-object p0, p0, Lsza;->o:Lteam/opay/core/android/views/PulseLoaderView;

    .line 8
    .line 9
    const-string v0, "loadingView"

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

.method public static final W(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;Ljava/lang/String;)Lkotlin/Unit;
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

.method public static final X(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->p:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final Z(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object p0, p0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->p:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lx7b;->a:Lx7b;

    .line 9
    .line 10
    const-string v0, "choice"

    .line 11
    .line 12
    const-string v1, "No"

    .line 13
    .line 14
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Source"

    .line 19
    .line 20
    const-string v2, "createAccount"

    .line 21
    .line 22
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x2

    .line 27
    new-array v2, v2, [Lkotlin/Pair;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    aput-object v0, v2, v3

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    aput-object v1, v2, v0

    .line 34
    .line 35
    const-string v0, "register_interestAccount_continue_click"

    .line 36
    .line 37
    invoke-virtual {p0, v0, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method public static final a0(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->b0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final addObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->Y()Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;->t()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lmkc;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lmkc;-><init>(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$a;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->Y()Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lnkc;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lnkc;-><init>(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$a;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->Y()Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;->u()Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Lokc;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lokc;-><init>(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$a;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public static final c0(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->Y()Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v1, "getViewLifecycleOwner(...)"

    .line 10
    .line 11
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;->v(Lag8;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final d0(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->Y()Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v1, "getViewLifecycleOwner(...)"

    .line 10
    .line 11
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;->v(Lag8;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private final initView()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lsza;

    .line 7
    .line 8
    iget-object v1, v1, Lsza;->c:Lcom/google/android/material/button/MaterialButton;

    .line 9
    .line 10
    const-string v2, "cancelButton"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lkkc;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lkkc;-><init>(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lsza;

    .line 28
    .line 29
    iget-object v1, v1, Lsza;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    sget-object v2, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->r:Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "requireContext(...)"

    .line 38
    .line 39
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget v4, Lteam/opay/pay/R$string;->osdk_register_conditions_andprivacy:I

    .line 43
    .line 44
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string v5, "getString(...)"

    .line 49
    .line 50
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3, v4}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lsza;

    .line 76
    .line 77
    iget-object v1, v1, Lsza;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    sget-object v3, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;->Companion:Lteam/opay/pay/onboarding/register/RegisterOwealthConfig$Companion;

    .line 80
    .line 81
    invoke-virtual {v3}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig$Companion;->a()Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const/4 v5, 0x0

    .line 86
    if-eqz v4, :cond_0

    .line 87
    .line 88
    invoke-virtual {v4}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;->getTipsV2()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    move-object v4, v5

    .line 94
    :goto_0
    const-string v6, ""

    .line 95
    .line 96
    if-nez v4, :cond_1

    .line 97
    .line 98
    move-object v4, v6

    .line 99
    :cond_1
    invoke-static {v4}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Lsza;

    .line 111
    .line 112
    iget-object v1, v1, Lsza;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    .line 114
    invoke-virtual {v3}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig$Companion;->a()Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    if-eqz v4, :cond_2

    .line 119
    .line 120
    invoke-virtual {v4}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;->getYearly()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    goto :goto_1

    .line 125
    :cond_2
    move-object v4, v5

    .line 126
    :goto_1
    if-nez v4, :cond_3

    .line 127
    .line 128
    move-object v4, v6

    .line 129
    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lsza;

    .line 137
    .line 138
    iget-object v1, v1, Lsza;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    invoke-virtual {v3}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig$Companion;->a()Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    if-eqz v4, :cond_4

    .line 145
    .line 146
    invoke-virtual {v4}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;->getMonthly()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    goto :goto_2

    .line 151
    :cond_4
    move-object v4, v5

    .line 152
    :goto_2
    if-nez v4, :cond_5

    .line 153
    .line 154
    move-object v4, v6

    .line 155
    :cond_5
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Lsza;

    .line 163
    .line 164
    iget-object v1, v1, Lsza;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 165
    .line 166
    invoke-virtual {v3}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig$Companion;->a()Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    if-eqz v4, :cond_6

    .line 171
    .line 172
    invoke-virtual {v4}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;->getDaily()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    goto :goto_3

    .line 177
    :cond_6
    move-object v4, v5

    .line 178
    :goto_3
    if-nez v4, :cond_7

    .line 179
    .line 180
    move-object v4, v6

    .line 181
    :cond_7
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    check-cast v1, Lsza;

    .line 189
    .line 190
    iget-object v1, v1, Lsza;->e:Lcom/google/android/material/button/MaterialButton;

    .line 191
    .line 192
    const-string v4, "continueButton"

    .line 193
    .line 194
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    new-instance v4, Llkc;

    .line 198
    .line 199
    invoke-direct {v4, p0}, Llkc;-><init>(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v1, v4}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    check-cast v1, Lsza;

    .line 210
    .line 211
    iget-object v1, v1, Lsza;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 212
    .line 213
    sget v4, Lteam/opay/pay/R$string;->osdk_register_owealth_guide_tips:I

    .line 214
    .line 215
    invoke-virtual {v3}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig$Companion;->a()Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    if-eqz v7, :cond_8

    .line 220
    .line 221
    invoke-virtual {v7}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;->getSampleAmount()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    goto :goto_4

    .line 226
    :cond_8
    move-object v7, v5

    .line 227
    :goto_4
    if-nez v7, :cond_9

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_9
    move-object v6, v7

    .line 231
    :goto_5
    new-array v7, v0, [Ljava/lang/Object;

    .line 232
    .line 233
    aput-object v6, v7, v2

    .line 234
    .line 235
    invoke-virtual {p0, v4, v7}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    check-cast v1, Lsza;

    .line 247
    .line 248
    iget-object v1, v1, Lsza;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 249
    .line 250
    sget v4, Lteam/opay/pay/R$string;->osdk_user_s_choice:I

    .line 251
    .line 252
    invoke-virtual {v3}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig$Companion;->a()Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    if-eqz v3, :cond_a

    .line 257
    .line 258
    invoke-virtual {v3}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;->getNeedInterestPercent()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    :cond_a
    new-array v0, v0, [Ljava/lang/Object;

    .line 263
    .line 264
    aput-object v5, v0, v2

    .line 265
    .line 266
    invoke-virtual {p0, v4, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    return-void
.end method


# virtual methods
.method public final Y()Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final b0()V
    .locals 6

    .line 1
    sget-object v0, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;->Companion:Lteam/opay/pay/onboarding/register/RegisterOwealthConfig$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig$Companion;->a()Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;->getConfirmDialogEnable()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    sget-object v0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideSheetFragment;->r:Lteam/opay/pay/onboarding/register/RegisterOwealthGuideSheetFragment$Companion;

    .line 17
    .line 18
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideSheetFragment$Companion;->a()Lteam/opay/pay/onboarding/register/RegisterOwealthGuideSheetFragment;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lpkc;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lpkc;-><init>(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideSheetFragment;->V(Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->E(Landroidx/fragment/app/Fragment;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig$Companion;->a()Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;->getConfirmDialogV2Enable()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-ne v0, v2, :cond_1

    .line 45
    .line 46
    sget-object v0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideV2SheetFragment;->m:Lteam/opay/pay/onboarding/register/RegisterOwealthGuideV2SheetFragment$Companion;

    .line 47
    .line 48
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideV2SheetFragment$Companion;->a()Lteam/opay/pay/onboarding/register/RegisterOwealthGuideV2SheetFragment;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lqkc;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lqkc;-><init>(Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideV2SheetFragment;->V(Lkotlin/jvm/functions/Function0;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->E(Landroidx/fragment/app/Fragment;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->Y()Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v3, "getViewLifecycleOwner(...)"

    .line 73
    .line 74
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;->v(Lag8;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    sget-object v0, Lx7b;->a:Lx7b;

    .line 81
    .line 82
    const-string v1, "choice"

    .line 83
    .line 84
    const-string v3, "Yes"

    .line 85
    .line 86
    invoke-static {v1, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v3, "Source"

    .line 91
    .line 92
    const-string v4, "createAccount"

    .line 93
    .line 94
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const/4 v4, 0x2

    .line 99
    new-array v4, v4, [Lkotlin/Pair;

    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    aput-object v1, v4, v5

    .line 103
    .line 104
    aput-object v3, v4, v2

    .line 105
    .line 106
    const-string v1, "register_interestAccount_continue_click"

    .line 107
    .line 108
    invoke-virtual {v0, v1, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final e0(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->p:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public getSupportBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public onBackPressed()Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->p:Lkotlin/jvm/functions/Function0;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    :cond_0
    sget-object v1, Lx7b;->a:Lx7b;

    .line 10
    .line 11
    const-string v2, "Source"

    .line 12
    .line 13
    const-string v3, "createAccount"

    .line 14
    .line 15
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-array v3, v0, [Lkotlin/Pair;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aput-object v2, v3, v4

    .line 23
    .line 24
    const-string v2, "register_interestAccount_return"

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 27
    .line 28
    .line 29
    return v0
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->initView()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->addObserver()V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lx7b;->a:Lx7b;

    .line 16
    .line 17
    const-string p2, "Source"

    .line 18
    .line 19
    const-string v0, "createAccount"

    .line 20
    .line 21
    invoke-static {p2, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const/4 v0, 0x1

    .line 26
    new-array v0, v0, [Lkotlin/Pair;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    aput-object p2, v0, v1

    .line 30
    .line 31
    const-string p2, "register_interestAccount_show"

    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
