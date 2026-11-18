.class public final Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;
.super Lteam/opay/pay/kyc/task/Hilt_SourceOfIncomeFragment;
.source "SourceOfIncomeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0003R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;",
        "Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;",
        "<init>",
        "()V",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "rsp",
        "",
        "Q0",
        "(Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V",
        "D0",
        "addObserver",
        "Lteam/opay/pay/kyc/base/KycNodeData;",
        "Y",
        "()Lteam/opay/pay/kyc/base/KycNodeData;",
        "",
        "V",
        "()Z",
        "b0",
        "Lteam/opay/pay/kyc/base/SceneViewModel;",
        "s",
        "Lid8;",
        "Z0",
        "()Lteam/opay/pay/kyc/base/SceneViewModel;",
        "sceneViewModel",
        "t",
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
.field public static final t:Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final s:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->t:Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/Hilt_SourceOfIncomeFragment;-><init>()V

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
    new-instance v1, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$special$$inlined$activityViewModels$default$3;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->s:Lid8;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic R0(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->Y0(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S0(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->X0(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T0(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->b1(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U0(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->a1(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic V0(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->W0(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final W0(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 9

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v7, 0x1e

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final X0(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 9

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v7, 0x1e

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final Y0(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;Ljava/lang/String;)Lkotlin/Unit;
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

.method private final Z0()Lteam/opay/pay/kyc/base/SceneViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->s:Lid8;

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

.method public static final a1(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;)Lkotlin/Unit;
    .locals 15

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lff6;

    .line 6
    .line 7
    iget-object v0, v0, Lff6;->h:Landroidx/appcompat/widget/AppCompatButton;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 11
    .line 12
    .line 13
    const/4 v6, 0x4

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v2, p0

    .line 19
    invoke-static/range {v2 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->a0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;ZZZILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-array v10, v1, [Lkotlin/Pair;

    .line 23
    .line 24
    const/16 v13, 0xc

    .line 25
    .line 26
    const/4 v14, 0x0

    .line 27
    const-string v9, "address_page_retain_pop_ups_cancel_click"

    .line 28
    .line 29
    const/4 v11, 0x0

    .line 30
    const/4 v12, 0x0

    .line 31
    move-object v8, p0

    .line 32
    invoke-static/range {v8 .. v14}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method public static final b1(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;)Lkotlin/Unit;
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
    const-string v2, "address_page_retain_pop_ups_continue_click"

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
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method


# virtual methods
.method public D0()V
    .locals 2

    .line 1
    invoke-super {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->D0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->Q(Lteam/opay/pay/kyc/base/KycTaskNode;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->E()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->M(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->o0()Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->m()Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v1, 0x0

    .line 54
    :goto_0
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->R(Ljava/lang/Long;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->s0()Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->z(Ljava/util/Map;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public Q0(Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V
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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->getTaskNode()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->a0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;

    .line 38
    .line 39
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->isFinish()Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->getKycLevel()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v2, v3, p1, v0}, Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public V()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->T()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public Y()Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lteam/opay/pay/kyc/base/KycNodeData;

    .line 9
    .line 10
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->T()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->p0()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->m0()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->s0()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const-string v5, "FILL_INCOME_INFO"

    .line 51
    .line 52
    move-object v1, v0

    .line 53
    invoke-direct/range {v1 .. v7}, Lteam/opay/pay/kyc/base/KycNodeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public addObserver()V
    .locals 5

    .line 1
    invoke-super {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->addObserver()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

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
    new-instance v3, Lv1e;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lv1e;-><init>(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$a;

    .line 27
    .line 28
    invoke-direct {v4, v3}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v4}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

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
    new-instance v3, Lw1e;

    .line 50
    .line 51
    invoke-direct {v3, p0}, Lw1e;-><init>(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;)V

    .line 52
    .line 53
    .line 54
    new-instance v4, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$a;

    .line 55
    .line 56
    invoke-direct {v4, v3}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v4}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

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
    new-instance v2, Lx1e;

    .line 78
    .line 79
    invoke-direct {v2, p0}, Lx1e;-><init>(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;)V

    .line 80
    .line 81
    .line 82
    new-instance v3, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$a;

    .line 83
    .line 84
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/task/SourceOfIncomeFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1, v3}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public b0()V
    .locals 9

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/task/BoardingAddressDialogFragment;->l:Lteam/opay/pay/kyc/task/BoardingAddressDialogFragment$Companion;

    .line 2
    .line 3
    const/16 v6, 0x1f

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    invoke-static/range {v0 .. v7}, Lteam/opay/pay/kyc/task/BoardingAddressDialogFragment$Companion;->b(Lteam/opay/pay/kyc/task/BoardingAddressDialogFragment$Companion;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/kyc/task/BoardingAddressDialogFragment;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ly1e;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Ly1e;-><init>(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/task/BoardingAddressDialogFragment;->Q(Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lz1e;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lz1e;-><init>(Lteam/opay/pay/kyc/task/SourceOfIncomeFragment;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/task/BoardingAddressDialogFragment;->R(Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    new-array v4, v1, [Lkotlin/Pair;

    .line 33
    .line 34
    const/16 v7, 0xc

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    const-string v3, "address_page_retain_pop_ups_show"

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    move-object v2, p0

    .line 42
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
