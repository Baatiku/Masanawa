.class public final Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;
.super Lteam/opay/pay/kyc/task/Hilt_SetPersonalInfoFragment;
.source "SetPersonalInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;",
        "Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;",
        "<init>",
        "()V",
        "Lteam/opay/pay/kyc/base/BasicInfoReq;",
        "req",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "rsp",
        "",
        "E1",
        "(Lteam/opay/pay/kyc/base/BasicInfoReq;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V",
        "",
        "onBackPressed",
        "()Z",
        "f1",
        "addObserver",
        "Lteam/opay/pay/kyc/base/KycNodeData;",
        "Y",
        "()Lteam/opay/pay/kyc/base/KycNodeData;",
        "Lteam/opay/pay/kyc/base/SceneViewModel;",
        "J",
        "Lid8;",
        "b2",
        "()Lteam/opay/pay/kyc/base/SceneViewModel;",
        "sceneViewModel",
        "K",
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
.field public static final K:Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final J:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->K:Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/Hilt_SetPersonalInfoFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$special$$inlined$activityViewModels$default$3;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->J:Lid8;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic P1(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->V1(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q1(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->W1(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R1(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->Y1(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S1(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->a2(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T1(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->X1(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U1(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->Z1(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final V1(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 9

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lteam/opay/pay/R$string;->osdk_check_id_information:I

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    const-string v0, "getString(...)"

    .line 13
    .line 14
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v5, Lskd;

    .line 18
    .line 19
    invoke-direct {v5, p0}, Lskd;-><init>(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;)V

    .line 20
    .line 21
    .line 22
    const/16 v7, 0x12

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    move-object v1, p0

    .line 28
    move-object v2, p1

    .line 29
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method public static final W1(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/SceneViewModel;->c0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "ID_INFO_VERIFY"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final X1(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 9

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v5, Lqkd;

    .line 7
    .line 8
    invoke-direct {v5, p0}, Lqkd;-><init>(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;)V

    .line 9
    .line 10
    .line 11
    new-instance v6, Lrkd;

    .line 12
    .line 13
    invoke-direct {v6, p0}, Lrkd;-><init>(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;)V

    .line 14
    .line 15
    .line 16
    const/4 v7, 0x6

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v1, p0

    .line 21
    move-object v2, p1

    .line 22
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method public static final Y1(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->Z(ZZZ)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final Z1(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->Z(ZZZ)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final a2(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/kyc/task/dialog/KycBindMutiDialog;->o:Lteam/opay/pay/kyc/task/dialog/KycBindMutiDialog$Companion;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {v0, p1, v1, v2, v1}, Lteam/opay/pay/kyc/task/dialog/KycBindMutiDialog$Companion;->b(Lteam/opay/pay/kyc/task/dialog/KycBindMutiDialog$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/kyc/task/dialog/KycBindMutiDialog;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private final b2()Lteam/opay/pay/kyc/base/SceneViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->J:Lid8;

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


# virtual methods
.method public E1(Lteam/opay/pay/kyc/base/BasicInfoReq;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V
    .locals 3
    .param p1    # Lteam/opay/pay/kyc/base/BasicInfoReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "rsp"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->getTaskNode()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->V0(Lteam/opay/pay/kyc/base/KycTaskNode;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->getCurrentComplianceLevel()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->A0(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->a0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v0, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;

    .line 42
    .line 43
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->isFinish()Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->getKycLevel()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->getTaskNode()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    if-eqz p2, :cond_0

    .line 56
    .line 57
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p2, 0x0

    .line 63
    :goto_0
    invoke-direct {v0, v1, v2, p2}, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->p0()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->m0()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->s0()Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const-string v4, "FILL_BASIC_INFO"

    .line 44
    .line 45
    move-object v0, v7

    .line 46
    invoke-direct/range {v0 .. v6}, Lteam/opay/pay/kyc/base/KycNodeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    return-object v7
.end method

.method public addObserver()V
    .locals 5

    .line 1
    invoke-super {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->addObserver()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->s()Lteam/opay/pay/util/SingleLiveEvent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "getViewLifecycleOwner(...)"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lnkd;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lnkd;-><init>(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$a;

    .line 27
    .line 28
    invoke-direct {v4, v3}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v4}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->u()Lteam/opay/pay/util/SingleLiveEvent;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Lokd;

    .line 50
    .line 51
    invoke-direct {v3, p0}, Lokd;-><init>(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;)V

    .line 52
    .line 53
    .line 54
    new-instance v4, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$a;

    .line 55
    .line 56
    invoke-direct {v4, v3}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v4}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->r()Lteam/opay/pay/util/SingleLiveEvent;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Lpkd;

    .line 78
    .line 79
    invoke-direct {v2, p0}, Lpkd;-><init>(Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;)V

    .line 80
    .line 81
    .line 82
    new-instance v3, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$a;

    .line 83
    .line 84
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1, v3}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public f1()V
    .locals 2

    .line 1
    invoke-super {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->f1()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->F0(Z)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->R()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->I1(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->E()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->G1(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->K()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->H1(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->W()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->J1(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->L1(Lteam/opay/pay/kyc/base/KycTaskNode;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->o0()Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycConsultRsp;->m()Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->M1(Ljava/lang/Long;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->o0()Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->X(Lteam/opay/pay/kyc/base/KycConsultRsp;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->W(Lteam/opay/pay/kyc/base/KycTaskNode;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->S()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->T(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SetPersonalInfoFragment;->b2()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->s0()Ljava/util/Map;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->z(Ljava/util/Map;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->onBackPressed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
