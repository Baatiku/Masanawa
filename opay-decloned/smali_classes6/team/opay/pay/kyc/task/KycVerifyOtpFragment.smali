.class public final Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;
.super Lteam/opay/pay/kyc/task/Hilt_KycVerifyOtpFragment;
.source "KycVerifyOtpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u0017\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0016R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;",
        "Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;",
        "<init>",
        "()V",
        "",
        "S0",
        "Lteam/opay/pay/kyc/base/KycNodeData;",
        "Y",
        "()Lteam/opay/pay/kyc/base/KycNodeData;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "addObserver",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "rsp",
        "j1",
        "(Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V",
        "",
        "onBackPressed",
        "()Z",
        "n1",
        "Lteam/opay/pay/kyc/base/SceneViewModel;",
        "A",
        "Lid8;",
        "J1",
        "()Lteam/opay/pay/kyc/base/SceneViewModel;",
        "sceneViewModel",
        "B",
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
.field public static final B:Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final A:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->B:Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/Hilt_KycVerifyOtpFragment;-><init>()V

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
    new-instance v1, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$special$$inlined$activityViewModels$default$3;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->A:Lid8;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic A1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->G1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->E1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->H1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final D1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;Ljava/lang/String;)Lkotlin/Unit;
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
    new-instance v5, Lx88;

    .line 18
    .line 19
    invoke-direct {v5, p0}, Lx88;-><init>(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)V

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

.method public static final E1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

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

.method public static final F1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 9

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v5, Lv88;

    .line 7
    .line 8
    invoke-direct {v5, p0}, Lv88;-><init>(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)V

    .line 9
    .line 10
    .line 11
    new-instance v6, Lw88;

    .line 12
    .line 13
    invoke-direct {v6, p0}, Lw88;-><init>(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)V

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

.method public static final G1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)Lkotlin/Unit;
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

.method public static final H1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)Lkotlin/Unit;
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

.method public static final I1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;Ljava/lang/String;)Lkotlin/Unit;
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

.method private final J1()Lteam/opay/pay/kyc/base/SceneViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->A:Lid8;

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

.method public static final K1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->c0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "ID_INFO_VERIFY"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    new-array v3, v0, [Lkotlin/Pair;

    .line 16
    .line 17
    const/16 v6, 0xc

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const-string v2, "verify_phone_number_check_id_click"

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v1, p0

    .line 25
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method public static synthetic w1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->F1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->I1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->K1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->D1(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public S0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdBindMobile()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    :goto_0
    if-nez v1, :cond_1

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->U(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->o0()Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->m()Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v1, v2

    .line 49
    :goto_1
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->X(Ljava/lang/Long;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->E()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->T(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :cond_3
    invoke-virtual {v0, v2}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->W(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->s0()Ljava/util/Map;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->z(Ljava/util/Map;)V

    .line 101
    .line 102
    .line 103
    invoke-super {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->S0()V

    .line 104
    .line 105
    .line 106
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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    const-string v4, "OTP_FRESH_TOKEN_CHECK"

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
    invoke-super {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->addObserver()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

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
    new-instance v3, Ls88;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Ls88;-><init>(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$a;

    .line 27
    .line 28
    invoke-direct {v4, v3}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v4}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

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
    new-instance v3, Lt88;

    .line 50
    .line 51
    invoke-direct {v3, p0}, Lt88;-><init>(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)V

    .line 52
    .line 53
    .line 54
    new-instance v4, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$a;

    .line 55
    .line 56
    invoke-direct {v4, v3}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v4}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

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
    new-instance v2, Lu88;

    .line 78
    .line 79
    invoke-direct {v2, p0}, Lu88;-><init>(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)V

    .line 80
    .line 81
    .line 82
    new-instance v3, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$a;

    .line 83
    .line 84
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1, v3}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public j1(Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V
    .locals 4
    .param p1    # Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "rsp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->getTaskNode()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->V0(Lteam/opay/pay/kyc/base/KycTaskNode;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->getCurrentComplianceLevel()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->A0(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->a0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;

    .line 37
    .line 38
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->isFinish()Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->getKycLevel()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->getTaskNode()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 p1, 0x0

    .line 58
    :goto_0
    invoke-direct {v1, v2, v3, p1}, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public n1()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->r0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->J1()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->s0()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "type"

    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "phoneFindmatch"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->onBackPressed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
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
    invoke-super {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lbf6;

    .line 14
    .line 15
    iget-object p1, p1, Lbf6;->c:Lcom/google/android/material/button/MaterialButton;

    .line 16
    .line 17
    const-string p2, "idInfoView"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lr88;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lr88;-><init>(Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lbf6;

    .line 35
    .line 36
    iget-object p1, p1, Lbf6;->c:Lcom/google/android/material/button/MaterialButton;

    .line 37
    .line 38
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/KycVerifyOtpFragment;->n1()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-static {p1, p2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
