.class public final Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;
.super Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;
.source "KycGuardianVerifyFaceFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment<",
        "Lxya;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \'2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u001b\u0010&\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u001e\u001a\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;",
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;",
        "Lxya;",
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
        "",
        "onBackPressed",
        "()Z",
        "Lteam/opay/pay/kyc/base/KycNodeData;",
        "Y",
        "()Lteam/opay/pay/kyc/base/KycNodeData;",
        "Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;",
        "rsp",
        "y0",
        "(Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)V",
        "C0",
        "",
        "message",
        "w0",
        "(Ljava/lang/String;)V",
        "Lteam/opay/pay/kyc/base/SceneViewModel;",
        "l",
        "Lid8;",
        "A0",
        "()Lteam/opay/pay/kyc/base/SceneViewModel;",
        "sceneViewModel",
        "Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;",
        "m",
        "B0",
        "()Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;",
        "taskViewModel",
        "n",
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
.field public static final n:Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$Companion;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->n:Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$1;->INSTANCE:Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$1;

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
    new-instance v1, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v4, p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->l:Lid8;

    .line 33
    .line 34
    new-instance v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$special$$inlined$viewModels$default$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 40
    .line 41
    new-instance v2, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$special$$inlined$viewModels$default$2;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-class v1, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;

    .line 51
    .line 52
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$special$$inlined$viewModels$default$3;

    .line 57
    .line 58
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 59
    .line 60
    .line 61
    new-instance v4, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$special$$inlined$viewModels$default$4;

    .line 62
    .line 63
    invoke-direct {v4, v3, v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$special$$inlined$viewModels$default$5;

    .line 67
    .line 68
    invoke-direct {v3, p0, v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v1, v2, v4, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->m:Lid8;

    .line 76
    .line 77
    return-void
.end method

.method private final A0()Lteam/opay/pay/kyc/base/SceneViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->l:Lid8;

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

.method private final addObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->B0()Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->t()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lo08;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lo08;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$a;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->B0()Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->F()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lp08;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lp08;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$a;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->B0()Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->D()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lq08;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lq08;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$a;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->B0()Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->E()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lr08;

    .line 89
    .line 90
    invoke-direct {v2, p0}, Lr08;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$a;

    .line 94
    .line 95
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public static synthetic i0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->x0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->t0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->s0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->z0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->r0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->q0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->u0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->v0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final q0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 0

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
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->w0(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final r0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->y0(Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final s0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->o:Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog$Companion;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget v1, Lteam/opay/pay/R$string;->osdk_change_guardian:I

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "getString(...)"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog$Companion;->a(Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;Ljava/lang/String;)Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Lv08;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lv08;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->Z(Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->E(Landroidx/fragment/app/Fragment;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method public static final t0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "KycGuardianIdNumberFragment2"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->m1(Ljava/lang/String;I)Z

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static final u0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/task/dialog/KycErrorDialog;->l:Lteam/opay/pay/kyc/task/dialog/KycErrorDialog$Companion;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getContent()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, ""

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    move-object v1, v2

    .line 12
    :cond_0
    invoke-virtual {p1}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getTitle()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move-object v2, p1

    .line 20
    :goto_0
    sget p1, Lteam/opay/pay/R$string;->osdk_edit_relationship:I

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v3, "getString(...)"

    .line 27
    .line 28
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, p1}, Lteam/opay/pay/kyc/task/dialog/KycErrorDialog$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/kyc/task/dialog/KycErrorDialog;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v0, Lt08;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lt08;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/task/dialog/KycErrorDialog;->R(Lkotlin/jvm/functions/Function0;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p0
.end method

.method public static final v0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-class v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianPhoneFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->m1(Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method public static final x0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->onBackPressed()Z

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final z0(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->C0(Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final B0()Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final C0(Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->onBackPressed()Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;->getNextGuardianItemTask()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const v2, -0x63fd15cf

    .line 15
    .line 16
    .line 17
    if-eq v1, v2, :cond_4

    .line 18
    .line 19
    const v2, -0x4398361a

    .line 20
    .line 21
    .line 22
    if-eq v1, v2, :cond_2

    .line 23
    .line 24
    const p1, 0x3bd5cce2

    .line 25
    .line 26
    .line 27
    if-eq v1, p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p1, "UPLOAD_BIRTH_CERT_TASK"

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;->u:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$Companion;

    .line 40
    .line 41
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$Companion;->a()Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget v1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 50
    .line 51
    invoke-static {v0, v1, p1}, Lteam/opay/pay/base/FragmentKt;->i(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const-string v1, "NO_OPAY_USER_GUARDIAN_CONFIRM_TASK"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    sget-object v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->p:Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$Companion;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$Companion;->a(Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sget v1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 75
    .line 76
    invoke-static {v0, v1, p1}, Lteam/opay/pay/base/FragmentKt;->i(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const-string p1, "NO_OPAY_USER_GUARDIAN_INPUT_FACE_PICTURE_TASK"

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    sget-object p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->C:Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$Companion;

    .line 90
    .line 91
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$Companion;->a()Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sget v1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 100
    .line 101
    invoke-static {v0, v1, p1}, Lteam/opay/pay/base/FragmentKt;->i(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    :goto_0
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 106
    .line 107
    .line 108
    :goto_1
    return-void
.end method

.method public Y()Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lteam/opay/pay/kyc/base/KycNodeData;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->A0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->A0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->A0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->A0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-super {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->B0()Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->A0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const-string p2, "key_id_number"

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    if-nez p1, :cond_1

    .line 39
    .line 40
    const-string p1, ""

    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->B0()Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "getViewLifecycleOwner(...)"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->A0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->L()Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p2, v0, p1, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->I(Lag8;Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;->addObserver()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final w0(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxya;

    .line 6
    .line 7
    iget-object v0, v0, Lxya;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    sget v1, Lteam/opay/pay/R$string;->osdk_verification_failed:I

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lxya;

    .line 23
    .line 24
    iget-object v0, v0, Lxya;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lxya;

    .line 34
    .line 35
    iget-object v0, v0, Lxya;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 36
    .line 37
    const-string v1, "lottie/osdk_lottie_face_failure.json"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lxya;

    .line 47
    .line 48
    iget-object v0, v0, Lxya;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lxya;

    .line 59
    .line 60
    iget-object v0, v0, Lxya;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 63
    .line 64
    .line 65
    new-instance v5, Lu08;

    .line 66
    .line 67
    invoke-direct {v5, p0}, Lu08;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;)V

    .line 68
    .line 69
    .line 70
    const/16 v7, 0x16

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v3, 0x0

    .line 74
    const/4 v4, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    move-object v1, p0

    .line 77
    move-object v2, p1

    .line 78
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final y0(Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxya;

    .line 6
    .line 7
    iget-object v0, v0, Lxya;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    sget v1, Lteam/opay/pay/R$string;->osdk_success:I

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lxya;

    .line 23
    .line 24
    iget-object v0, v0, Lxya;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    sget v1, Lteam/opay/pay/R$string;->osdk_face_verify_success:I

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lxya;

    .line 40
    .line 41
    iget-object v0, v0, Lxya;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 42
    .line 43
    const-string v1, "lottie/osdk_lottie_face_success.json"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lxya;

    .line 53
    .line 54
    iget-object v0, v0, Lxya;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lxya;

    .line 65
    .line 66
    iget-object v0, v0, Lxya;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 67
    .line 68
    const-string v1, "simulaFaceLottie"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "getViewLifecycleOwner(...)"

    .line 78
    .line 79
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Ls08;

    .line 83
    .line 84
    invoke-direct {v2, p0, p1}, Ls08;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceFragment;Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)V

    .line 85
    .line 86
    .line 87
    const-wide/16 v3, 0x3e8

    .line 88
    .line 89
    invoke-static {v0, v1, v3, v4, v2}, Lteam/opay/core/android/ViewKt;->j(Lcom/airbnb/lottie/LottieAnimationView;Lag8;JLkotlin/jvm/functions/Function0;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
