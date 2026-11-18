.class public final Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;
.super Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;
.source "KycGuardianFaceFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 (2\u00020\u0001:\u0001)B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ!\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u001a\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020$0#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006*"
    }
    d2 = {
        "Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;",
        "Lteam/opay/pay/kyc/task/FaceWrapperFragment;",
        "<init>",
        "()V",
        "Lteam/opay/pay/kyc/base/KycNodeData;",
        "Y",
        "()Lteam/opay/pay/kyc/base/KycNodeData;",
        "Lteam/opay/pay/kyc/base/FaceResult;",
        "faceResult",
        "",
        "D1",
        "(Lteam/opay/pay/kyc/base/FaceResult;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "a1",
        "()Ljava/lang/CharSequence;",
        "addObserver",
        "",
        "onBackPressed",
        "()Z",
        "Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;",
        "z",
        "Lid8;",
        "Q1",
        "()Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;",
        "taskViewModel",
        "Lteam/opay/face/dialog/OFaceInProgressFragment;",
        "A",
        "Lteam/opay/face/dialog/OFaceInProgressFragment;",
        "progressFragment",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "Lteam/opay/pay/kyc/customer/GuardianRuleRsp;",
        "B",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "submitLiveData",
        "C",
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
.field public static final C:Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A:Lteam/opay/face/dialog/OFaceInProgressFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final B:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/pay/kyc/customer/GuardianRuleRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final z:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->C:Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v2, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$special$$inlined$viewModels$default$2;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-class v1, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;

    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$special$$inlined$viewModels$default$3;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$special$$inlined$viewModels$default$4;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$special$$inlined$viewModels$default$5;

    .line 38
    .line 39
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->z:Lid8;

    .line 47
    .line 48
    new-instance v0, Lteam/opay/pay/util/SingleLiveEvent;

    .line 49
    .line 50
    invoke-direct {v0}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->B:Lteam/opay/pay/util/SingleLiveEvent;

    .line 54
    .line 55
    return-void
.end method

.method public static synthetic E1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->L1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/customer/GuardianRuleRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->R1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/customer/GuardianRuleRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/customer/GuardianRuleRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->N1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/customer/GuardianRuleRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->P1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->M1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/customer/GuardianRuleRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->O1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/customer/GuardianRuleRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic K1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;)Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->Q1()Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final L1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Lteam/opay/face/dialog/OFaceInProgressFragment;

    .line 8
    .line 9
    invoke-direct {p1}, Lteam/opay/face/dialog/OFaceInProgressFragment;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->A:Lteam/opay/face/dialog/OFaceInProgressFragment;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->A:Lteam/opay/face/dialog/OFaceInProgressFragment;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/face/dialog/OFaceInProgressFragment;->T()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method public static final M1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/face/dialog/OFaceRequeryFragment;->j:Lteam/opay/face/dialog/OFaceRequeryFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/face/dialog/OFaceRequeryFragment$Companion;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ErrorMsg;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "63001"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ErrorMsg;->a()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "unauthenticated"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x3

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 40
    :goto_1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ErrorMsg;->c()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, ""

    .line 45
    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    move-object v1, v2

    .line 49
    :cond_3
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ErrorMsg;->a()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_4

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    move-object v2, p1

    .line 57
    :goto_2
    invoke-virtual {p0, v1, v0, v2}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->v1(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p0
.end method

.method public static final N1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/customer/GuardianRuleRsp;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lteam/opay/face/dialog/OFaceRequeryFragment;->j:Lteam/opay/face/dialog/OFaceRequeryFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/face/dialog/OFaceRequeryFragment$Companion;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object v0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;->q:Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$Companion;

    .line 13
    .line 14
    const-string v4, ""

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const-string v1, ""

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    const-string v3, ""

    .line 22
    .line 23
    invoke-virtual/range {v0 .. v5}, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lsy7;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1}, Lsy7;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/customer/GuardianRuleRsp;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;->R(Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method public static final O1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/customer/GuardianRuleRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->B:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final P1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

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

.method public static final R1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/customer/GuardianRuleRsp;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/kyc/customer/GuardianRuleRsp;->getNextGuardianItemTask()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "INPUT_NIN_CERT_TASK"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v1, "INPUT_BVN_CERT_TASK"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberFragment;->w:Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberFragment$Companion;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberFragment$Companion;->a(Lteam/opay/pay/kyc/customer/GuardianRuleRsp;)Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberFragment;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 42
    .line 43
    const-string v1, "KycGuardianIdNumberFragment1"

    .line 44
    .line 45
    invoke-static {p0, v0, p1, v1}, Lteam/opay/pay/base/FragmentKt;->j(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method


# virtual methods
.method public D1(Lteam/opay/pay/kyc/base/FaceResult;)V
    .locals 7
    .param p1    # Lteam/opay/pay/kyc/base/FaceResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "faceResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v4, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p1, p0, v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;-><init>(Lteam/opay/pay/kyc/base/FaceResult;Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Ljr2;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final Q1()Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->z:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public Y()Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lteam/opay/pay/kyc/base/KycNodeData;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

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

.method public a1()Ljava/lang/CharSequence;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Lteam/opay/pay/R$string;->osdk_kyc_auardian_face_sub_title:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->L()Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/SceneViewModel;->L()Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    const-string v2, ""

    .line 30
    .line 31
    :cond_0
    const/4 v3, 0x2

    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    aput-object v1, v3, v4

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    aput-object v2, v3, v1

    .line 39
    .line 40
    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "fromHtml(...)"

    .line 49
    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public addObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->Q1()Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;

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
    new-instance v2, Loy7;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Loy7;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$a;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->Q1()Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;

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
    new-instance v2, Lpy7;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lpy7;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$a;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->Q1()Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;->B()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lqy7;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lqy7;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$a;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->Q1()Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;->C()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lry7;

    .line 89
    .line 90
    invoke-direct {v2, p0}, Lry7;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$a;

    .line 94
    .line 95
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 99
    .line 100
    .line 101
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
    invoke-super {p0, p1, p2}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Liga;

    .line 14
    .line 15
    iget-object p1, p1, Liga;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    sget p2, Lteam/opay/pay/R$string;->osdk_kyc_guardian_face_title:I

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->B:Lteam/opay/pay/util/SingleLiveEvent;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string v0, "getViewLifecycleOwner(...)"

    .line 33
    .line 34
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lny7;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lny7;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$a;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2, v1}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
