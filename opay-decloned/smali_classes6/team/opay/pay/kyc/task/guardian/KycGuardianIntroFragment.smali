.class public final Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;
.super Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianIntroFragment;
.source "KycGuardianIntroFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianIntroFragment<",
        "Lve6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;",
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;",
        "Lve6;",
        "<init>",
        "()V",
        "",
        "k0",
        "initView",
        "Lteam/opay/pay/kyc/base/KycNodeData;",
        "Y",
        "()Lteam/opay/pay/kyc/base/KycNodeData;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/kyc/base/SceneViewModel;",
        "q",
        "Lid8;",
        "j0",
        "()Lteam/opay/pay/kyc/base/SceneViewModel;",
        "sceneViewModel",
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
.field public static final r:Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final q:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->r:Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment$1;->INSTANCE:Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianIntroFragment;-><init>(Lhm6;)V

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
    new-instance v1, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->q:Lid8;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic i0(Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->l0(Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final initView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lve6;

    .line 6
    .line 7
    iget-object v0, v0, Lve6;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "1. "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    new-instance v1, Landroid/text/SpannableString;

    .line 20
    .line 21
    sget v2, Lteam/opay/pay/R$string;->osdk_guardian_note_info:I

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Landroid/text/style/LeadingMarginSpan$Standard;

    .line 31
    .line 32
    float-to-int v0, v0

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-direct {v2, v3, v0}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/16 v4, 0x12

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lve6;

    .line 51
    .line 52
    iget-object v0, v0, Lve6;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lve6;

    .line 62
    .line 63
    iget-object v0, v0, Lve6;->j:Lcom/google/android/material/button/MaterialButton;

    .line 64
    .line 65
    const-string v1, "nextStep"

    .line 66
    .line 67
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Liz7;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Liz7;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private final j0()Lteam/opay/pay/kyc/base/SceneViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->q:Lid8;

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

.method private final k0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->j0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->L()Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->j0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->r(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->j0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->L()Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->j0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lg4d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->u(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->j0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->L()Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->j0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->o0()Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x0

    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->m()Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move-object v1, v2

    .line 68
    :goto_0
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->t(Ljava/lang/Long;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->j0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->L()Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->j0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->E()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->j(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->j0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->L()Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->j0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    if-eqz v1, :cond_1

    .line 107
    .line 108
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskId()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :cond_1
    invoke-virtual {v0, v2}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->s(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public static final l0(Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;)Lkotlin/Unit;
    .locals 8

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianPhoneFragment;->s:Lteam/opay/pay/kyc/task/guardian/KycGuardianPhoneFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianPhoneFragment$Companion;->a()Lteam/opay/pay/kyc/task/guardian/KycGuardianPhoneFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget v2, Lteam/opay/pay/R$id;->fragment_container:I

    .line 12
    .line 13
    invoke-static {v1, v2, v0}, Lteam/opay/pay/base/FragmentKt;->i(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    new-array v3, v0, [Lkotlin/Pair;

    .line 18
    .line 19
    const/16 v6, 0xc

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    const-string v2, "Guardian_Guide_continue_click"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v1, p0

    .line 27
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->j0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->j0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->j0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->j0()Lteam/opay/pay/kyc/base/SceneViewModel;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->k0()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIntroFragment;->initView()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    new-array v2, p1, [Lkotlin/Pair;

    .line 17
    .line 18
    const/16 v5, 0xc

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    const-string v1, "Guardian_Guide_page_show"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    move-object v0, p0

    .line 26
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
