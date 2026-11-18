.class public final Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;
.super Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;
.source "KycGuardianAuthorizationFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment<",
        "Lk0b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 ,2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001-B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010!\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0019\u001a\u0004\u0008\u001f\u0010 R\u001d\u0010&\u001a\u0004\u0018\u00010\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u0019\u001a\u0004\u0008$\u0010%R\u001b\u0010+\u001a\u00020\'8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u0019\u001a\u0004\u0008)\u0010*\u00a8\u0006."
    }
    d2 = {
        "Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;",
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;",
        "Lk0b;",
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
        "initView",
        "Lteam/opay/pay/kyc/base/KycNodeData;",
        "Y",
        "()Lteam/opay/pay/kyc/base/KycNodeData;",
        "",
        "onBackPressed",
        "()Z",
        "",
        "y0",
        "()Ljava/lang/CharSequence;",
        "Lteam/opay/pay/kyc/base/SceneViewModel;",
        "l",
        "Lid8;",
        "w0",
        "()Lteam/opay/pay/kyc/base/SceneViewModel;",
        "sceneViewModel",
        "Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationViewModel;",
        "m",
        "x0",
        "()Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationViewModel;",
        "taskViewModel",
        "Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;",
        "n",
        "v0",
        "()Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;",
        "authorizationInfo",
        "Lteam/opay/core/settings/SettingsStorage;",
        "o",
        "getSettingsStorage",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
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
.field public static final p:Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->p:Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$1;->INSTANCE:Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v4, p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->l:Lid8;

    .line 33
    .line 34
    new-instance v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$special$$inlined$viewModels$default$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 40
    .line 41
    new-instance v2, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$special$$inlined$viewModels$default$2;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-class v1, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationViewModel;

    .line 51
    .line 52
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$special$$inlined$viewModels$default$3;

    .line 57
    .line 58
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 59
    .line 60
    .line 61
    new-instance v4, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$special$$inlined$viewModels$default$4;

    .line 62
    .line 63
    invoke-direct {v4, v3, v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$special$$inlined$viewModels$default$5;

    .line 67
    .line 68
    invoke-direct {v3, p0, v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v1, v2, v4, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->m:Lid8;

    .line 76
    .line 77
    new-instance v0, Lrx7;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lrx7;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->n:Lid8;

    .line 87
    .line 88
    new-instance v0, Lsx7;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lsx7;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->o:Lid8;

    .line 98
    .line 99
    return-void
.end method

.method public static final A0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)Lkotlin/Unit;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v3, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    const/16 v6, 0xc

    .line 5
    .line 6
    const/4 v7, 0x0

    .line 7
    const-string v2, "Guardian_authorization_agree_click"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v1, p0

    .line 12
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->x0()Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "getViewLifecycleOwner(...)"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->w0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/SceneViewModel;->L()Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, v1, p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationViewModel;->H(Lag8;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method public static final B0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)Lteam/opay/core/settings/SettingsStorage;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method private final addObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->x0()Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lnx7;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lnx7;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$b;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->x0()Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->t()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lox7;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lox7;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$b;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->x0()Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationViewModel;->G()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lpx7;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lpx7;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$b;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->x0()Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lteam/opay/pay/kyc/task/guardian/BaseGuardianViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    new-instance v2, Lqx7;

    .line 89
    .line 90
    invoke-direct {v2, p0}, Lqx7;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$b;

    .line 94
    .line 95
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method private final getSettingsStorage()Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/SettingsStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic i0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->r0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->u0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->z0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;Landroid/widget/CompoundButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->t0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->s0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->A0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->q0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)Lteam/opay/core/settings/SettingsStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->B0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final q0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lk0b;

    .line 6
    .line 7
    iget-object p0, p0, Lk0b;->c:Lteam/opay/core/android/views/PulseLoaderView;

    .line 8
    .line 9
    const-string v0, "authLoading"

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

.method public static final r0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ErrorMsg;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    const/16 v6, 0x1e

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    move-object v0, p0

    .line 18
    invoke-static/range {v0 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static final s0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->x0()Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getViewLifecycleOwner(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->w0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/SceneViewModel;->L()Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1, v0, p0}, Lteam/opay/pay/kyc/task/guardian/BaseGuardianViewModel;->D(Lag8;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method public static final t0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->w0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->getTaskNode()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->V0(Lteam/opay/pay/kyc/base/KycTaskNode;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->getTaskNode()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->w0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/SceneViewModel;->a0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v1, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;

    .line 33
    .line 34
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->isFinish()Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->getKycLevel()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v1, v2, p1, v0}, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method public static final u0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "key_guardian_id_number_rsp"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method

.method private final w0()Lteam/opay/pay/kyc/base/SceneViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final z0(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lk0b;

    .line 6
    .line 7
    iget-object p0, p0, Lk0b;->d:Lcom/google/android/material/button/MaterialButton;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public Y()Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lteam/opay/pay/kyc/base/KycNodeData;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->w0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->w0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->T()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->w0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->m0()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->w0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->s0()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const/4 v3, 0x0

    .line 36
    const-string v4, "FILL_GUARDIAN_INFO"

    .line 37
    .line 38
    move-object v0, v7

    .line 39
    invoke-direct/range {v0 .. v6}, Lteam/opay/pay/kyc/base/KycNodeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    return-object v7
.end method

.method public final initView()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lk0b;

    .line 6
    .line 7
    iget-object v0, v0, Lk0b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    sget v1, Lteam/opay/pay/R$string;->osdk_kyc_authorization_tips:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->v0()Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;->getGuardianName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v2, v3

    .line 24
    :goto_0
    const-string v4, ""

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    move-object v2, v4

    .line 29
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->v0()Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    if-eqz v5, :cond_2

    .line 34
    .line 35
    invoke-virtual {v5}, Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;->getUserName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move-object v5, v3

    .line 41
    :goto_1
    if-nez v5, :cond_3

    .line 42
    .line 43
    move-object v5, v4

    .line 44
    :cond_3
    const/4 v6, 0x2

    .line 45
    new-array v6, v6, [Ljava/lang/Object;

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    aput-object v2, v6, v7

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    aput-object v5, v6, v2

    .line 52
    .line 53
    invoke-virtual {p0, v1, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lk0b;

    .line 69
    .line 70
    iget-object v0, v0, Lk0b;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->v0()Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    invoke-virtual {v1}, Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;->getUserName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move-object v1, v3

    .line 84
    :goto_2
    if-nez v1, :cond_5

    .line 85
    .line 86
    move-object v1, v4

    .line 87
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lk0b;

    .line 95
    .line 96
    iget-object v0, v0, Lk0b;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    sget-object v1, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 99
    .line 100
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->v0()Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_6

    .line 105
    .line 106
    invoke-virtual {v2}, Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;->getGuardianAuthRequestDate()Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    goto :goto_3

    .line 111
    :cond_6
    move-object v2, v3

    .line 112
    :goto_3
    invoke-virtual {v1, v2}, Lteam/opay/pay/kyc/a;->e(Ljava/lang/Long;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    sget-object v0, Lteam/opay/pay/security/SecurityUtils;->a:Lteam/opay/pay/security/SecurityUtils;

    .line 120
    .line 121
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->v0()Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-eqz v1, :cond_7

    .line 126
    .line 127
    invoke-virtual {v1}, Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;->getUserFacePicture()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    goto :goto_4

    .line 132
    :cond_7
    move-object v1, v3

    .line 133
    :goto_4
    if-nez v1, :cond_8

    .line 134
    .line 135
    move-object v1, v4

    .line 136
    :cond_8
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getGenerator()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    if-eqz v2, :cond_9

    .line 141
    .line 142
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->appId()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    :cond_9
    if-nez v3, :cond_a

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_a
    move-object v4, v3

    .line 150
    :goto_5
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->getSettingsStorage()Lteam/opay/core/settings/SettingsStorage;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v2}, Lteam/opay/core/settings/SettingsStorage;->c()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v0, v1, v4, v2}, Lteam/opay/pay/security/SecurityUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    check-cast v1, Lk0b;

    .line 167
    .line 168
    iget-object v1, v1, Lk0b;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 169
    .line 170
    const-string v2, "avatarView"

    .line 171
    .line 172
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sget v2, Lteam/opay/pay/R$mipmap;->user_default_avatar_gray:I

    .line 176
    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-static {v1, v0, v2}, Lme7;->a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Lk0b;

    .line 189
    .line 190
    iget-object v0, v0, Lk0b;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 191
    .line 192
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->y0()Ljava/lang/CharSequence;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Lk0b;

    .line 204
    .line 205
    iget-object v0, v0, Lk0b;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 206
    .line 207
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Lk0b;

    .line 219
    .line 220
    iget-object v0, v0, Lk0b;->f:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 221
    .line 222
    new-instance v1, Llx7;

    .line 223
    .line 224
    invoke-direct {v1, p0}, Llx7;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Lk0b;

    .line 235
    .line 236
    iget-object v0, v0, Lk0b;->d:Lcom/google/android/material/button/MaterialButton;

    .line 237
    .line 238
    const-string v1, "authorizationButton"

    .line 239
    .line 240
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    new-instance v1, Lmx7;

    .line 244
    .line 245
    invoke-direct {v1, p0}, Lmx7;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v0, v1}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 249
    .line 250
    .line 251
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->k1()Z

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
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
    invoke-super {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->x0()Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->w0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/SceneViewModel;->s0()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->z(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->initView()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->addObserver()V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    new-array v2, p1, [Lkotlin/Pair;

    .line 32
    .line 33
    const/16 v5, 0xc

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    const-string v1, "Guardian_authorization_page_show"

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    move-object v0, p0

    .line 41
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final v0()Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->n:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;

    .line 8
    .line 9
    return-object v0
.end method

.method public final x0()Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final y0()Ljava/lang/CharSequence;
    .locals 7

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Lteam/opay/pay/R$string;->osdk_kyc_guardian_agreee_start:I

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, " "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 19
    .line 20
    .line 21
    new-instance v1, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$a;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$a;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Landroid/text/SpannableString;

    .line 27
    .line 28
    sget v3, Lteam/opay/pay/R$string;->osdk_kyc_guardian_agree_end:I

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    sget v5, Lteam/opay/pay/R$color;->mint:I

    .line 44
    .line 45
    invoke-static {v4, v5}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const/4 v5, 0x0

    .line 57
    const/16 v6, 0x11

    .line 58
    .line 59
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {v2, v1, v5, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 70
    .line 71
    .line 72
    return-object v0
.end method
