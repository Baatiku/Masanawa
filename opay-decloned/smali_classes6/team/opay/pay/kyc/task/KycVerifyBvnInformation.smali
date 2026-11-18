.class public final Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;
.super Lteam/opay/pay/kyc/task/Hilt_KycVerifyBvnInformation;
.source "KycVerifyBvnInformation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/task/KycVerifyBvnInformation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0003R\u001b\u0010\u0014\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;",
        "Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;",
        "<init>",
        "()V",
        "Lteam/opay/pay/kyc/base/KycNodeData;",
        "Y",
        "()Lteam/opay/pay/kyc/base/KycNodeData;",
        "Lteam/opay/pay/kyc/base/BasicInfoReq;",
        "req",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "rsp",
        "",
        "p1",
        "(Lteam/opay/pay/kyc/base/BasicInfoReq;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V",
        "Z0",
        "Lteam/opay/pay/kyc/base/SceneViewModel;",
        "w",
        "Lid8;",
        "u1",
        "()Lteam/opay/pay/kyc/base/SceneViewModel;",
        "sceneViewModel",
        "x",
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
.field public static final x:Lteam/opay/pay/kyc/task/KycVerifyBvnInformation$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final w:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;->x:Lteam/opay/pay/kyc/task/KycVerifyBvnInformation$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/Hilt_KycVerifyBvnInformation;-><init>()V

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
    new-instance v1, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation$special$$inlined$activityViewModels$default$3;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;->w:Lid8;

    .line 31
    .line 32
    return-void
.end method

.method private final u1()Lteam/opay/pay/kyc/base/SceneViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;->w:Lid8;

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
.method public Y()Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lteam/opay/pay/kyc/base/KycNodeData;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;->u1()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;->u1()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;->u1()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;->u1()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;->u1()Lteam/opay/pay/kyc/base/SceneViewModel;

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

.method public Z0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;->u1()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->a0(Lteam/opay/pay/kyc/base/KycTaskNode;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;->u1()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->E()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->W(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;->u1()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->o0()Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->m()Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v1, 0x0

    .line 51
    :goto_0
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->X(Ljava/lang/Long;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;->u1()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->s0()Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->z(Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public p1(Lteam/opay/pay/kyc/base/BasicInfoReq;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V
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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;->u1()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;->u1()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyBvnInformation;->u1()Lteam/opay/pay/kyc/base/SceneViewModel;

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
