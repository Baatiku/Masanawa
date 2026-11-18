.class public abstract Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;
.super Lteam/opay/pay/android/BaseActivity;
.source "AbstractKycUpgradeActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u0019\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J#\u0010\u0017\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0015H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0003J\u0019\u0010\u001b\u001a\u00020\u00062\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0003J[\u0010%\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u00132.\u0010\"\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010!0 0\u001f\"\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010!0 2\u0008\u0008\u0002\u0010#\u001a\u00020\u00152\u0008\u0008\u0002\u0010$\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008%\u0010&J9\u0010+\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020\u00132\u0010\u0008\u0002\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010(2\u0010\u0008\u0002\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010(\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008-\u0010\u0003R\u001b\u00103\u001a\u00020.8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R\u001b\u00108\u001a\u0002048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u00100\u001a\u0004\u00086\u00107R\u001b\u0010=\u001a\u0002098BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u00100\u001a\u0004\u0008;\u0010<\u00a8\u0006>"
    }
    d2 = {
        "Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Lteam/opay/pay/kyc/base/KycConsultDialogRsp;",
        "dialogInfo",
        "",
        "a0",
        "(Lteam/opay/pay/kyc/base/KycConsultDialogRsp;)V",
        "Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;",
        "nextTask",
        "i0",
        "(Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;)V",
        "Z",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "f0",
        "",
        "kycLevel",
        "",
        "sonsultSuccess",
        "o0",
        "(Ljava/lang/String;Z)V",
        "addObserve",
        "nextTaskNode",
        "e0",
        "(Ljava/lang/String;)V",
        "j0",
        "action",
        "",
        "Lkotlin/Pair;",
        "",
        "values",
        "isSupportAppsflyer",
        "isSupportFirebase",
        "g0",
        "(Ljava/lang/String;[Lkotlin/Pair;ZZ)V",
        "message",
        "Lkotlin/Function0;",
        "onConfigmClick",
        "onDialogDismiss",
        "k0",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "q0",
        "Lte;",
        "a",
        "Lid8;",
        "d0",
        "()Lte;",
        "viewBinding",
        "Lteam/opay/pay/kyc/base/SceneViewModel;",
        "b",
        "c0",
        "()Lteam/opay/pay/kyc/base/SceneViewModel;",
        "sceneViewModel",
        "Lteam/opay/pay/onboarding/register/RegisterViewModel;",
        "c",
        "b0",
        "()Lteam/opay/pay/onboarding/register/RegisterViewModel;",
        "registerViewModel",
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


# instance fields
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/android/BaseActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lr0;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lr0;-><init>(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->a:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->b:Lid8;

    .line 45
    .line 46
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$special$$inlined$viewModels$default$4;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$special$$inlined$viewModels$default$4;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 52
    .line 53
    const-class v2, Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 54
    .line 55
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$special$$inlined$viewModels$default$5;

    .line 60
    .line 61
    invoke-direct {v3, p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$special$$inlined$viewModels$default$5;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 62
    .line 63
    .line 64
    new-instance v4, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$special$$inlined$viewModels$default$6;

    .line 65
    .line 66
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$special$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c:Lid8;

    .line 73
    .line 74
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->T(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lteam/opay/pay/kyc/base/KycConsultDialogRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->O(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lteam/opay/pay/kyc/base/KycConsultDialogRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->Q(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->R(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->n0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->S(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->W(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lteam/opay/pay/kyc/base/KycConsultRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->V(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lteam/opay/pay/kyc/base/KycConsultRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->X(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->Y(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)Lte;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->r0(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)Lte;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->U(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->m0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lteam/opay/pay/kyc/base/KycConsultDialogRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->P(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lteam/opay/pay/kyc/base/KycConsultDialogRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final O(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lteam/opay/pay/kyc/base/KycConsultDialogRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->a0(Lteam/opay/pay/kyc/base/KycConsultDialogRsp;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final P(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lteam/opay/pay/kyc/base/KycConsultDialogRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->a0(Lteam/opay/pay/kyc/base/KycConsultDialogRsp;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final Q(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 6

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 v4, 0x6

    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->l0(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final R(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 8

    .line 1
    sget-object v0, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->h:Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->d0()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->l0()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/16 v6, 0x18

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v1, p0

    .line 25
    invoke-static/range {v0 .. v7}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;->b(Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->d0()Lte;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lte;->c:Lteam/opay/core/android/views/PulseLoaderView;

    .line 6
    .line 7
    const-string v0, "fragmentLoading"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 10

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v5, v1, [Lkotlin/Pair;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aput-object v0, v5, v1

    .line 12
    .line 13
    const/16 v8, 0xc

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    const-string v4, "new_level_failed"

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    move-object v3, p0

    .line 21
    invoke-static/range {v3 .. v9}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->h0(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v4, Lv0;

    .line 28
    .line 29
    invoke-direct {v4, p0}, Lv0;-><init>(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)V

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    move-object v1, p0

    .line 36
    move-object v2, p1

    .line 37
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->l0(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object v0
.end method

.method public static final U(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lteam/opay/pay/kyc/base/KycConsultRsp;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->d0()Lte;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lte;->b:Landroidx/fragment/app/FragmentContainerView;

    .line 6
    .line 7
    sget v1, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 8
    .line 9
    invoke-static {p0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    new-array v0, v0, [Lkotlin/Pair;

    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->l()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 40
    .line 41
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v3, Lkotlin/Pair;

    .line 55
    .line 56
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycTaskNode;->isCompleted()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-direct {v3, v4, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    array-length v1, v0

    .line 77
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    move-object v3, v0

    .line 82
    check-cast v3, [Lkotlin/Pair;

    .line 83
    .line 84
    const/16 v6, 0xc

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    const-string v2, "new_level_success"

    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    const/4 v5, 0x0

    .line 91
    move-object v1, p0

    .line 92
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->h0(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->i0()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->T()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->o0(Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->i0()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 135
    .line 136
    new-instance v1, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;

    .line 137
    .line 138
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->h()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/SceneViewModel;->T()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    goto :goto_1

    .line 161
    :cond_4
    const/4 v0, 0x0

    .line 162
    :goto_1
    invoke-direct {v1, p1, v2, v0}, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->i0(Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;)V

    .line 166
    .line 167
    .line 168
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 169
    .line 170
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->I0(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;->c()Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_1
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->C0(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->i0(Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;)V

    .line 50
    .line 51
    .line 52
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p0
.end method

.method public static final X(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->x(Lag8;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final Y(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->Z()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final b0()Lteam/opay/pay/onboarding/register/RegisterViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic h0(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p6, :cond_2

    .line 2
    .line 3
    and-int/lit8 p6, p5, 0x4

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p6, :cond_0

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 10
    .line 11
    if-eqz p5, :cond_1

    .line 12
    .line 13
    const/4 p4, 0x0

    .line 14
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->g0(Ljava/lang/String;[Lkotlin/Pair;ZZ)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: kycCommonAnalytics"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static synthetic l0(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p5, :cond_2

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    move-object p2, v0

    .line 9
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    move-object p3, v0

    .line 14
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->k0(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: showKycErrorTip"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static final m0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final n0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static synthetic p0(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->o0(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: showSuccessPage"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static final r0(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)Lte;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lte;->inflate(Landroid/view/LayoutInflater;)Lte;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final Z()V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/task/KycPepInfoFragment;->s:Lteam/opay/pay/kyc/task/KycPepInfoFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/kyc/task/KycPepInfoFragment$Companion;->a()Lteam/opay/pay/kyc/task/KycPepInfoFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 8
    .line 9
    invoke-static {p0, v1, v0}, Lteam/opay/pay/base/FragmentKt;->i(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final a0(Lteam/opay/pay/kyc/base/KycConsultDialogRsp;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultDialogRsp;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->q0()V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultDialogRsp;->g()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_9

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const-string v2, ""

    .line 30
    .line 31
    sparse-switch v1, :sswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :sswitch_0
    const-string v1, "AUTH_DONE_REVIEW_FAIL"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_2
    sget-object v0, Lteam/opay/pay/onboarding/register/GuardianFailedFragment;->l:Lteam/opay/pay/onboarding/register/GuardianFailedFragment$Companion;

    .line 47
    .line 48
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultDialogRsp;->e()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    move-object v1, v2

    .line 55
    :cond_3
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultDialogRsp;->f()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-nez p1, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    move-object v2, p1

    .line 63
    :goto_1
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/onboarding/register/GuardianFailedFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/onboarding/register/GuardianFailedFragment;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 68
    .line 69
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :sswitch_1
    const-string v1, "PENDING_AUTH_REVIEW_FAIL"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_7

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :sswitch_2
    const-string v1, "PENDING_AUTH_REVIEW"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_7

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :sswitch_3
    const-string p1, "AUTH_EXPIRE"

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_5

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_5
    sget-object p1, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->m:Lteam/opay/pay/onboarding/register/GuardianExpireFragment$Companion;

    .line 102
    .line 103
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$Companion;->a()Lteam/opay/pay/onboarding/register/GuardianExpireFragment;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 108
    .line 109
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :sswitch_4
    const-string v1, "PENDING_REVIEW"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_6

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    sget-object v0, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->m:Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$Companion;

    .line 123
    .line 124
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultDialogRsp;->c()Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultDialogRsp;->d()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v0, v1, p1}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$Companion;->a(Ljava/lang/Long;Ljava/lang/String;)Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 137
    .line 138
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :sswitch_5
    const-string v1, "PENDING_AUTH"

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_7

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    sget-object v0, Lteam/opay/pay/onboarding/register/GuardianPendingFragement;->n:Lteam/opay/pay/onboarding/register/GuardianPendingFragement$Companion;

    .line 152
    .line 153
    sget-object v1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 154
    .line 155
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultDialogRsp;->b()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-nez p1, :cond_8

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_8
    move-object v2, p1

    .line 171
    :goto_2
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/onboarding/register/GuardianPendingFragement$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/onboarding/register/GuardianPendingFragement;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 176
    .line 177
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_9
    :goto_3
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 182
    .line 183
    .line 184
    :goto_4
    return-void

    .line 185
    :sswitch_data_0
    .sparse-switch
        -0x6a6cb490 -> :sswitch_5
        -0x65eff0e0 -> :sswitch_4
        -0x1b97146a -> :sswitch_3
        0x2b07df07 -> :sswitch_2
        0x3b58f556 -> :sswitch_1
        0x3defcc1f -> :sswitch_0
    .end sparse-switch
.end method

.method public addObserve()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->X()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lw0;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lw0;-><init>(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->f0()Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lx0;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lx0;-><init>(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->Z()Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Ly0;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Ly0;-><init>(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;

    .line 57
    .line 58
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->a0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Lz0;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lz0;-><init>(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;

    .line 78
    .line 79
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->c0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, La1;

    .line 94
    .line 95
    invoke-direct {v1, p0}, La1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;

    .line 99
    .line 100
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 104
    .line 105
    .line 106
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 107
    .line 108
    new-instance v1, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$a;

    .line 109
    .line 110
    invoke-direct {v1, p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$a;-><init>(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)V

    .line 111
    .line 112
    .line 113
    const-string v2, "consult_kyc_id_page"

    .line 114
    .line 115
    invoke-virtual {v0, p0, v2, v1}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v1, Lb1;

    .line 127
    .line 128
    invoke-direct {v1, p0}, Lb1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)V

    .line 129
    .line 130
    .line 131
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;

    .line 132
    .line 133
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    new-instance v1, Lc1;

    .line 148
    .line 149
    invoke-direct {v1, p0}, Lc1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)V

    .line 150
    .line 151
    .line 152
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;

    .line 153
    .line 154
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->b0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 161
    .line 162
    .line 163
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->b0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    new-instance v1, Ld1;

    .line 172
    .line 173
    invoke-direct {v1, p0}, Ld1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)V

    .line 174
    .line 175
    .line 176
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;

    .line 177
    .line 178
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 182
    .line 183
    .line 184
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->b0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    new-instance v1, Le1;

    .line 193
    .line 194
    invoke-direct {v1, p0}, Le1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)V

    .line 195
    .line 196
    .line 197
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;

    .line 198
    .line 199
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 203
    .line 204
    .line 205
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->b0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    new-instance v1, Ls0;

    .line 214
    .line 215
    invoke-direct {v1, p0}, Ls0;-><init>(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)V

    .line 216
    .line 217
    .line 218
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;

    .line 219
    .line 220
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method public final c0()Lteam/opay/pay/kyc/base/SceneViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->b:Lid8;

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

.method public d0()Lte;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->a:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lte;

    .line 8
    .line 9
    return-object v0
.end method

.method public e0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_d

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :sswitch_0
    const-string v0, "OTP_FRESH_TOKEN_CHECK_SIMULATION"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    sget-object p1, Lteam/opay/pay/kyc/task/KycOtpSimulationFragment;->s:Lteam/opay/pay/kyc/task/KycOtpSimulationFragment$Companion;

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/KycOtpSimulationFragment$Companion;->a()Lteam/opay/pay/kyc/task/KycOtpSimulationFragment;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 29
    .line 30
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :sswitch_1
    const-string v0, "FILL_PEP_INFO"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_1
    sget-object p1, Lteam/opay/pay/kyc/task/KycPepIntroductionFragment;->s:Lteam/opay/pay/kyc/task/KycPepIntroductionFragment$Companion;

    .line 46
    .line 47
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/KycPepIntroductionFragment$Companion;->a()Lteam/opay/pay/kyc/task/KycPepIntroductionFragment;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 52
    .line 53
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :sswitch_2
    const-string v0, "ID_INFO_VERIFY"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->j0()V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :sswitch_3
    const-string v0, "OTP_FRESH_TOKEN_CHECK"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :cond_3
    sget-object p1, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->B:Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$Companion;

    .line 84
    .line 85
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$Companion;->a()Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 90
    .line 91
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :sswitch_4
    const-string v0, "FILL_ADDRESS_INFO"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_4

    .line 103
    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_4
    sget-object p1, Lteam/opay/pay/kyc/task/SetAddressFragment;->E:Lteam/opay/pay/kyc/task/SetAddressFragment$Companion;

    .line 107
    .line 108
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/SetAddressFragment$Companion;->a()Lteam/opay/pay/kyc/task/SetAddressFragment;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 113
    .line 114
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    :sswitch_5
    const-string v0, "FILL_BASIC_INFO"

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_5

    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_6

    .line 138
    .line 139
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskNode;->getInfoPageType()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    goto :goto_0

    .line 144
    :cond_6
    const/4 p1, 0x0

    .line 145
    :goto_0
    const-string v0, "ID_VERIFY"

    .line 146
    .line 147
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_7

    .line 152
    .line 153
    sget-object p1, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;->x:Lteam/opay/pay/kyc/task/KycVerifyBvnInformation$Companion;

    .line 154
    .line 155
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation$Companion;->a()Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 160
    .line 161
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_2

    .line 165
    .line 166
    :cond_7
    sget-object p1, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->K:Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$Companion;

    .line 167
    .line 168
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$Companion;->a()Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 173
    .line 174
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_2

    .line 178
    .line 179
    :sswitch_6
    const-string v0, "FILL_INCOME_INFO"

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_8

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_8
    sget-object p1, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->t:Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$Companion;

    .line 189
    .line 190
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$Companion;->a()Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 195
    .line 196
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :sswitch_7
    const-string v0, "FILL_GUARDIAN_INFO"

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-nez p1, :cond_9

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_9
    sget-object p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->r:Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment$Companion;

    .line 210
    .line 211
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment$Companion;->a()Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 216
    .line 217
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :sswitch_8
    const-string v0, "KYC_COUNTRY_INFO"

    .line 222
    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-nez p1, :cond_a

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_a
    sget-object p1, Lteam/opay/pay/kyc/task/KycNationalityFragment;->t:Lteam/opay/pay/kyc/task/KycNationalityFragment$Companion;

    .line 231
    .line 232
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/KycNationalityFragment$Companion;->a()Lteam/opay/pay/kyc/task/KycNationalityFragment;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 237
    .line 238
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :sswitch_9
    const-string v0, "FACE_COMPARISON_SIMULATION"

    .line 243
    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-nez p1, :cond_b

    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_b
    sget-object p1, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;->u:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$Companion;

    .line 252
    .line 253
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$Companion;->a()Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 258
    .line 259
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :sswitch_a
    const-string v0, "FACE_COMPARISON"

    .line 264
    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-nez p1, :cond_c

    .line 270
    .line 271
    goto :goto_1

    .line 272
    :cond_c
    sget-object p1, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->v:Lteam/opay/pay/kyc/task/FaceWrapperFragment$Companion;

    .line 273
    .line 274
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/FaceWrapperFragment$Companion;->a()Lteam/opay/pay/kyc/task/FaceWrapperFragment;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 279
    .line 280
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 281
    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_d
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 285
    .line 286
    .line 287
    :goto_2
    return-void

    .line 288
    nop

    .line 289
    :sswitch_data_0
    .sparse-switch
        -0x6a114cd5 -> :sswitch_a
        -0x646c6465 -> :sswitch_9
        -0x2924f4bf -> :sswitch_8
        -0xdb2e320 -> :sswitch_7
        0x2976c0c8 -> :sswitch_6
        0x2e687a7b -> :sswitch_5
        0x3a437b75 -> :sswitch_4
        0x3f34151d -> :sswitch_3
        0x52e6b406 -> :sswitch_2
        0x6ee08cae -> :sswitch_1
        0x7ac5ee69 -> :sswitch_0
    .end sparse-switch
.end method

.method public abstract f0()V
.end method

.method public g0(Ljava/lang/String;[Lkotlin/Pair;ZZ)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    const-string p3, "action"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "values"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    new-array p4, p3, [Lkotlin/Pair;

    .line 13
    .line 14
    array-length v0, p2

    .line 15
    :goto_0
    if-ge p3, v0, :cond_0

    .line 16
    .line 17
    aget-object v1, p2, p3

    .line 18
    .line 19
    invoke-static {p4, v1}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    add-int/lit8 p3, p3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string p3, "call_code"

    .line 35
    .line 36
    invoke-static {p3, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p4, p2}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p3}, Lteam/opay/pay/kyc/base/SceneViewModel;->T()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    const-string p4, "kycLevel"

    .line 53
    .line 54
    invoke-static {p4, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-static {p2, p3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {p3}, Lteam/opay/pay/kyc/base/SceneViewModel;->m0()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    if-lez p3, :cond_1

    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-virtual {p3}, Lteam/opay/pay/kyc/base/SceneViewModel;->m0()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    const-string p4, "source"

    .line 85
    .line 86
    invoke-static {p4, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-static {p2, p3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-virtual {p3}, Lteam/opay/pay/kyc/base/SceneViewModel;->p0()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    if-lez p3, :cond_2

    .line 107
    .line 108
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-virtual {p3}, Lteam/opay/pay/kyc/base/SceneViewModel;->p0()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    const-string p4, "testGroup"

    .line 117
    .line 118
    invoke-static {p4, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    invoke-static {p2, p3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-virtual {p3}, Lteam/opay/pay/kyc/base/SceneViewModel;->s0()Ljava/util/Map;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result p4

    .line 146
    if-eqz p4, :cond_3

    .line 147
    .line 148
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p4

    .line 152
    check-cast p4, Ljava/util/Map$Entry;

    .line 153
    .line 154
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Ljava/lang/String;

    .line 159
    .line 160
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p4

    .line 164
    check-cast p4, Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v0, p4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 167
    .line 168
    .line 169
    move-result-object p4

    .line 170
    invoke-static {p2, p4}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    goto :goto_1

    .line 175
    :cond_3
    sget-object p3, Lx7b;->a:Lx7b;

    .line 176
    .line 177
    array-length p4, p2

    .line 178
    invoke-static {p2, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    check-cast p2, [Lkotlin/Pair;

    .line 183
    .line 184
    invoke-virtual {p3, p1, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->d0()Lte;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final i0(Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;->c()Ljava/lang/Boolean;

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
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;->b()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;->a()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x2

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {p0, p1, v2, v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->p0(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;->b()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->e0(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public j0()V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/task/SetIdNumberFragment;->L:Lteam/opay/pay/kyc/task/SetIdNumberFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/kyc/task/SetIdNumberFragment$Companion;->a()Lteam/opay/pay/kyc/task/SetIdNumberFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 8
    .line 9
    invoke-static {p0, v1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final k0(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lteam/opay/pay/kyc/task/dialog/KycErrorDialog;->l:Lteam/opay/pay/kyc/task/dialog/KycErrorDialog$Companion;

    .line 7
    .line 8
    const/4 v5, 0x6

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v2, p1

    .line 13
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/kyc/task/dialog/KycErrorDialog$Companion;->b(Lteam/opay/pay/kyc/task/dialog/KycErrorDialog$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/kyc/task/dialog/KycErrorDialog;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lt0;

    .line 18
    .line 19
    invoke-direct {v0, p2}, Lt0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/task/dialog/KycErrorDialog;->Q(Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    new-instance p2, Lu0;

    .line 26
    .line 27
    invoke-direct {p2, p3}, Lu0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/task/dialog/KycErrorDialog;->R(Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public abstract o0(Ljava/lang/String;Z)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/android/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "refreshToken"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    move-object v0, v1

    .line 29
    :cond_1
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->N0(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v2, "channel"

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    move-object v0, v1

    .line 49
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const/4 v4, 0x0

    .line 54
    if-nez v3, :cond_5

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move-object v0, v4

    .line 68
    :goto_0
    if-nez v0, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    move-object v1, v0

    .line 72
    :goto_1
    move-object v0, v1

    .line 73
    :cond_5
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->T0(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->f0()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/4 v0, 0x2

    .line 84
    invoke-static {p1, p0, v4, v0, v4}, Lteam/opay/pay/kyc/base/SceneViewModel;->y(Lteam/opay/pay/kyc/base/SceneViewModel;Lag8;Ljava/lang/String;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->addObserve()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public q0()V
    .locals 0

    .line 1
    return-void
.end method
