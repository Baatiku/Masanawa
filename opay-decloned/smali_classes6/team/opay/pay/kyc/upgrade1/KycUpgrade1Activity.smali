.class public final Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;
.super Lteam/opay/pay/kyc/upgrade1/Hilt_KycUpgrade1Activity;
.source "KycUpgrade1Activity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u0000 42\u00020\u00012\u00020\u0002:\u00015B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J!\u0010\u0010\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J)\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00182\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0014\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0004J\u001f\u0010%\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010\'\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010+\u001a\u00020\u000e2\u0006\u0010*\u001a\u00020)H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008-\u0010\u0004J\u000f\u0010.\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008.\u0010\u0004R\u0016\u00101\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0016\u00103\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00100\u00a8\u00066"
    }
    d2 = {
        "Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;",
        "Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;",
        "",
        "<init>",
        "()V",
        "",
        "f0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "addObserve",
        "",
        "kycLevel",
        "",
        "sonsultSuccess",
        "o0",
        "(Ljava/lang/String;Z)V",
        "Lteam/opay/pay/kyc/base/ResultEvent;",
        "event",
        "onEvent",
        "(Lteam/opay/pay/kyc/base/ResultEvent;)V",
        "onDestroy",
        "q0",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "h5InfoString",
        "G0",
        "(Ljava/lang/String;)V",
        "H0",
        "success",
        "needNotify",
        "J0",
        "(ZZ)V",
        "K0",
        "(Z)V",
        "Lteam/opay/pay/kyc/base/KycNodeData;",
        "kycNodeData",
        "I0",
        "(Lteam/opay/pay/kyc/base/KycNodeData;)Z",
        "L0",
        "N0",
        "h",
        "Z",
        "kycAsyncResult",
        "i",
        "reconsultOnPrePwd",
        "j",
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
.field public static final j:Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public h:Z

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->j:Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/upgrade1/Hilt_KycUpgrade1Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->i:Z

    .line 6
    .line 7
    return-void
.end method

.method public static final A0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;->getExtMap()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const-string v1, "auditRecordStatus"

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FAIL"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lteam/opay/pay/kyc/upgrade1/task/RegisterFaceFailedFragment;->w:Lteam/opay/pay/kyc/upgrade1/task/RegisterFaceFailedFragment$Companion;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/upgrade1/task/RegisterFaceFailedFragment$Companion;->a(Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;)Lteam/opay/pay/kyc/upgrade1/task/RegisterFaceFailedFragment;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Lm78;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lm78;-><init>(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/upgrade1/task/RegisterFaceFailedFragment;->s0(Lkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Ln78;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Ln78;-><init>(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/upgrade1/task/RegisterFaceFailedFragment;->r0(Lkotlin/jvm/functions/Function0;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lo78;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lo78;-><init>(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/upgrade1/task/RegisterFaceFailedFragment;->q0(Lkotlin/jvm/functions/Function0;)V

    .line 59
    .line 60
    .line 61
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 62
    .line 63
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    sget-object v0, Lteam/opay/pay/kyc/upgrade1/task/RegisterFacePendingFragment;->s:Lteam/opay/pay/kyc/upgrade1/task/RegisterFacePendingFragment$Companion;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/upgrade1/task/RegisterFacePendingFragment$Companion;->a(Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;)Lteam/opay/pay/kyc/upgrade1/task/RegisterFacePendingFragment;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v0, Lp78;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lp78;-><init>(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/upgrade1/task/RegisterFacePendingFragment;->W(Lkotlin/jvm/functions/Function0;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lq78;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lq78;-><init>(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/upgrade1/task/RegisterFacePendingFragment;->V(Lkotlin/jvm/functions/Function0;)V

    .line 87
    .line 88
    .line 89
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 90
    .line 91
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object p0
.end method

.method public static final B0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    const-string v0, "FACE_COMPARISON"

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

.method public static final C0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    const-string v0, ""

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

.method public static final D0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v3, v1, v2}, Lteam/opay/core/account/AccountInfoManager;->e(Lteam/opay/core/account/AccountInfoManager;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lum8;->g(Landroid/app/Activity;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final E0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    const-string v0, "FACE_COMPARISON"

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

.method public static final F0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v3, v1, v2}, Lteam/opay/core/account/AccountInfoManager;->e(Lteam/opay/core/account/AccountInfoManager;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lum8;->g(Landroid/app/Activity;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final M0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->N0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic s0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->D0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->A0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->E0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->C0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->F0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->B0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->M0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z0(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->h:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final G0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "h5InfoString = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/google/gson/Gson;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 17
    .line 18
    .line 19
    const-class v1, Lteam/opay/pay/kyc/base/H5Info;

    .line 20
    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lteam/opay/pay/kyc/base/H5Info;

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/H5Info;->c()Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->S0(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/H5Info;->b()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, ""

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    move-object v1, v2

    .line 61
    :cond_1
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->y0(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/H5Info;->a()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-object v2, p1

    .line 76
    :goto_1
    invoke-virtual {v0, v2}, Lteam/opay/pay/kyc/base/SceneViewModel;->Q0(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 81
    .line 82
    .line 83
    :goto_2
    return-void
.end method

.method public final H0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "key_scene"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    move-object v0, v1

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string v2, "scene"

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v0, v3

    .line 43
    :goto_0
    if-nez v0, :cond_2

    .line 44
    .line 45
    move-object v0, v1

    .line 46
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v4, "register_type"

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move-object v2, v3

    .line 66
    :goto_1
    if-nez v2, :cond_4

    .line 67
    .line 68
    move-object v2, v1

    .line 69
    :cond_4
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_6

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    const-string v5, "key_register_type"

    .line 82
    .line 83
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    goto :goto_2

    .line 88
    :cond_5
    move-object v2, v3

    .line 89
    :goto_2
    if-nez v2, :cond_6

    .line 90
    .line 91
    move-object v2, v1

    .line 92
    :cond_6
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-lez v5, :cond_7

    .line 97
    .line 98
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v5, v2}, Lteam/opay/pay/kyc/base/SceneViewModel;->O0(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v5, v4, v2}, Lteam/opay/pay/kyc/base/SceneViewModel;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_7
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    if-eqz v4, :cond_8

    .line 121
    .line 122
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    if-eqz v4, :cond_8

    .line 127
    .line 128
    const-string v3, "source"

    .line 129
    .line 130
    invoke-virtual {v4, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    :cond_8
    if-nez v3, :cond_9

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_9
    move-object v1, v3

    .line 138
    :goto_3
    invoke-virtual {v2, v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->U0(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v1, "REGISTER"

    .line 142
    .line 143
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_a

    .line 148
    .line 149
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const/4 v2, 0x0

    .line 154
    invoke-virtual {v1, v2}, Lteam/opay/pay/kyc/base/SceneViewModel;->S0(Z)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    if-eqz v1, :cond_b

    .line 163
    .line 164
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    if-eqz v1, :cond_b

    .line 169
    .line 170
    const-string v2, "show_success"

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-eqz v1, :cond_b

    .line 177
    .line 178
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    const-string v3, "false"

    .line 183
    .line 184
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    xor-int/lit8 v1, v1, 0x1

    .line 189
    .line 190
    invoke-virtual {v2, v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->S0(Z)V

    .line 191
    .line 192
    .line 193
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1, v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->Q0(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-void
.end method

.method public final I0(Lteam/opay/pay/kyc/base/KycNodeData;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lg4d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "KYC1"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final J0(ZZ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/InjectableActivity;->getTAG()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "noticeResult success:"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " needNotify:"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "REGISTER"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    sget-object v1, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 46
    .line 47
    new-instance v3, Lteam/opay/pay/home/event/OPayPageRefreshEvent;

    .line 48
    .line 49
    const/4 p2, 0x1

    .line 50
    invoke-direct {v3, p2}, Lteam/opay/pay/home/event/OPayPageRefreshEvent;-><init>(Z)V

    .line 51
    .line 52
    .line 53
    const/4 v5, 0x4

    .line 54
    const/4 v6, 0x0

    .line 55
    const-string v2, "opay_page_refresh_event"

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    new-instance p2, Landroid/content/Intent;

    .line 62
    .line 63
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 64
    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    const-string v0, "true"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-string v0, "cancel"

    .line 72
    .line 73
    :goto_0
    const-string v1, "data"

    .line 74
    .line 75
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    const/4 v0, -0x1

    .line 79
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->K0(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final K0(Z)V
    .locals 9

    .line 1
    const-string v0, "REGISTER"

    .line 2
    .line 3
    if-nez p1, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const v3, -0xa55f6f4

    .line 18
    .line 19
    .line 20
    if-eq v2, v3, :cond_4

    .line 21
    .line 22
    const v3, 0x453f749

    .line 23
    .line 24
    .line 25
    if-eq v2, v3, :cond_1

    .line 26
    .line 27
    const v3, 0x5821ea3

    .line 28
    .line 29
    .line 30
    if-eq v2, v3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_5

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string v2, "LOGIN"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->N()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    sget-object v1, Lql8;->a:Lql8;

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v1, p0, v2}, Lql8;->n(Landroid/app/Activity;Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {p0}, Lum8;->g(Landroid/app/Activity;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const-string v2, "INFORMATION"

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_5

    .line 77
    .line 78
    :goto_0
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->N()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_6

    .line 91
    .line 92
    sget-object v1, Lql8;->a:Lql8;

    .line 93
    .line 94
    const/4 v2, 0x1

    .line 95
    invoke-virtual {v1, p0, v2}, Lql8;->n(Landroid/app/Activity;Z)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_6
    invoke-static {p0}, Lum8;->g(Landroid/app/Activity;)V

    .line 100
    .line 101
    .line 102
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_9

    .line 115
    .line 116
    if-eqz p1, :cond_9

    .line 117
    .line 118
    sget-object v1, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->h:Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;

    .line 119
    .line 120
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->d0()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->l0()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->s0()Ljava/util/Map;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    instance-of v0, p1, Ljava/util/HashMap;

    .line 145
    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    check-cast p1, Ljava/util/HashMap;

    .line 149
    .line 150
    :goto_2
    move-object v6, p1

    .line 151
    goto :goto_3

    .line 152
    :cond_8
    const/4 p1, 0x0

    .line 153
    goto :goto_2

    .line 154
    :goto_3
    const/16 v7, 0x8

    .line 155
    .line 156
    const/4 v8, 0x0

    .line 157
    const/4 v5, 0x0

    .line 158
    move-object v2, p0

    .line 159
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;->b(Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :cond_9
    return-void
.end method

.method public final L0()V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->r:Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion;->b()Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lr78;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lr78;-><init>(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->e0(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    sget v1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 16
    .line 17
    invoke-static {p0, v1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final N0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->o0()Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycConsultRsp;->g()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_1
    const-string v1, "regSceneAgeStage"

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/String;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    const-string v0, ""

    .line 33
    .line 34
    :cond_2
    move-object v3, v0

    .line 35
    sget-object v1, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessFragment;->u:Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessFragment$Companion;

    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v5, 0x4

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessFragment$Companion;->b(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessFragment$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessFragment;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget v1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 53
    .line 54
    invoke-static {p0, v1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public addObserve()V
    .locals 3

    .line 1
    invoke-super {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->addObserve()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 5
    .line 6
    new-instance v1, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$a;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$a;-><init>(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)V

    .line 9
    .line 10
    .line 11
    const-string v2, "kyc_async_result"

    .line 12
    .line 13
    invoke-virtual {v0, p0, v2, v1}, Lteam/opay/pay/util/FlowBus;->c(Lag8;Ljava/lang/Object;La66;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->Y()Lteam/opay/pay/util/SingleLiveEvent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Ll78;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Ll78;-><init>(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$b;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public f0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "h5_info"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->G0(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->H0()V

    .line 28
    .line 29
    .line 30
    :goto_1
    return-void
.end method

.method public o0(Ljava/lang/String;Z)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string v0, "REGISTER"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    sget-object p2, Lteam/opay/pay/home/security/remember/RememberPswTipFragment;->s:Lteam/opay/pay/home/security/remember/RememberPswTipFragment$Companion;

    .line 18
    .line 19
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p2, v1}, Lteam/opay/pay/home/security/remember/RememberPswTipFragment$Companion;->c(Ljava/lang/Boolean;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance p2, Lteam/opay/core/settings/SettingsStorage;

    .line 25
    .line 26
    invoke-direct {p2, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Lteam/opay/core/settings/SettingsStorage;->r0(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "LOGIN"

    .line 41
    .line 42
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v3, 0x1

    .line 48
    const/4 v4, 0x0

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    sget-object v1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 52
    .line 53
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Lteam/opay/core/account/AccountInfoManager;->r()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {p2, v5}, Lteam/opay/core/settings/SettingsStorage;->q0(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Lteam/opay/core/account/AccountInfoManager;->q()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {p2, v5}, Lteam/opay/core/settings/SettingsStorage;->S(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-static {p2, v4, v3, v2}, Lteam/opay/core/account/AccountInfoManager;->e(Lteam/opay/core/account/AccountInfoManager;ZILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-boolean p2, p0, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->i:Z

    .line 83
    .line 84
    if-eqz p2, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/SceneViewModel;->N()Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_2

    .line 95
    .line 96
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->c0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1, v2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iput-boolean v4, p0, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->i:Z

    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/SceneViewModel;->N()Z

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_5

    .line 119
    .line 120
    sget-object p2, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;->Companion:Lteam/opay/pay/onboarding/register/RegisterOwealthConfig$Companion;

    .line 121
    .line 122
    invoke-virtual {p2}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig$Companion;->a()Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    if-eqz p2, :cond_3

    .line 127
    .line 128
    invoke-virtual {p2}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;->getEnabled()Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    :cond_3
    if-eqz v4, :cond_4

    .line 133
    .line 134
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->L0()V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_4
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->N0()V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/SceneViewModel;->k0()Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_6

    .line 151
    .line 152
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->N0()V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    if-nez p2, :cond_7

    .line 169
    .line 170
    sget p2, Lteam/opay/pay/R$string;->auth_success:I

    .line 171
    .line 172
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    const-string v0, "getString(...)"

    .line 177
    .line 178
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-static {p0, p2}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_7
    invoke-virtual {p0, v3, v3}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->J0(ZZ)V

    .line 185
    .line 186
    .line 187
    :goto_0
    if-eqz p1, :cond_9

    .line 188
    .line 189
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/SceneViewModel;->o0()Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    if-eqz p2, :cond_8

    .line 198
    .line 199
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycConsultRsp;->i()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    :cond_8
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    if-nez p2, :cond_9

    .line 208
    .line 209
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    new-instance v0, Lteam/opay/pay/kyc/event/KYCUpgradeEvent;

    .line 214
    .line 215
    invoke-direct {v0, p1}, Lteam/opay/pay/kyc/event/KYCUpgradeEvent;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    sget-object v1, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 222
    .line 223
    new-instance v3, Lteam/opay/pay/kyc/event/KYCUpgradeEvent;

    .line 224
    .line 225
    invoke-direct {v3, p1}, Lteam/opay/pay/kyc/event/KYCUpgradeEvent;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    const/4 v5, 0x4

    .line 229
    const/4 v6, 0x0

    .line 230
    const-string v2, "kyc_upgrade_event"

    .line 231
    .line 232
    const/4 v4, 0x0

    .line 233
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_9
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p2, p0, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->h:Z

    .line 5
    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "onActivityResult "

    .line 12
    .line 13
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 p2, 0x3eb

    .line 20
    .line 21
    if-ne p1, p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->N()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-static {p0}, Lum8;->g(Landroid/app/Activity;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-boolean p1, p0, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->h:Z

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    sget-object v0, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->h:Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;

    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->d0()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->l0()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/16 v6, 0x18

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    move-object v1, p0

    .line 65
    invoke-static/range {v0 .. v7}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;->b(Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    sget-object p1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 70
    .line 71
    invoke-virtual {p1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const/4 p2, 0x1

    .line 76
    const/4 p3, 0x0

    .line 77
    const/4 v0, 0x0

    .line 78
    invoke-static {p1, v0, p2, p3}, Lteam/opay/core/account/AccountInfoManager;->e(Lteam/opay/core/account/AccountInfoManager;ZILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p0}, Lum8;->g(Landroid/app/Activity;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/kyc/upgrade1/Hilt_KycUpgrade1Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/pay/kyc/upgrade1/Hilt_KycUpgrade1Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->s(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onEvent(Lteam/opay/pay/kyc/base/ResultEvent;)V
    .locals 4
    .param p1    # Lteam/opay/pay/kyc/base/ResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lb8e;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ResultEvent;->a()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->I0(Lteam/opay/pay/kyc/base/KycNodeData;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_9

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ResultEvent;->c()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ResultEvent;->b()Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :cond_0
    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1, v1}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->J0(ZZ)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v2, 0x0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move-object v0, v2

    .line 56
    :goto_0
    const-string v3, "ID_INFO_VERIFY"

    .line 57
    .line 58
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ResultEvent;->b()Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const/4 p1, 0x0

    .line 76
    :goto_1
    invoke-virtual {p0, v1, p1}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->J0(ZZ)V

    .line 77
    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->o0()Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycConsultRsp;->l()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    move-object v0, v2

    .line 104
    :goto_2
    if-eqz v0, :cond_6

    .line 105
    .line 106
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    :cond_6
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->c0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1, v3}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_7
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ResultEvent;->b()Ljava/lang/Boolean;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-eqz p1, :cond_8

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    goto :goto_3

    .line 139
    :cond_8
    const/4 p1, 0x0

    .line 140
    :goto_3
    invoke-virtual {p0, v1, p1}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->J0(ZZ)V

    .line 141
    .line 142
    .line 143
    :cond_9
    :goto_4
    return-void
.end method

.method public q0()V
    .locals 4

    .line 1
    invoke-super {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->q0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x6

    .line 6
    const-string v2, "ASYNC_KYC"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v2, v3, v0, v1, v0}, Lkmf;->k(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/opay/webview/WebFoundationData;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/opay/webview/WebFoundationData;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    const-class v2, Lcom/opay/webview/WebFoundationActivity;

    .line 21
    .line 22
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v2, "web_data"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x3eb

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
