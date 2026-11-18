.class public final Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "GuardianUnderReviewFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFragmentV2<",
        "Lwya;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000C\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0008\u0008*\u0001\u001f\u0018\u0000 $2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001%B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\"\u0010\u001e\u001a\u00020\u00108\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u0012\"\u0004\u0008\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0015\u001a\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lwya;",
        "<init>",
        "()V",
        "Lteam/opay/pay/onboarding/register/SetPwdDataRsp;",
        "data",
        "",
        "X",
        "(Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "onBackPressed",
        "()Z",
        "Lteam/opay/pay/onboarding/register/RegisterViewModel;",
        "j",
        "Lid8;",
        "T",
        "()Lteam/opay/pay/onboarding/register/RegisterViewModel;",
        "registerViewModel",
        "k",
        "Z",
        "getSupportBack",
        "setSupportBack",
        "(Z)V",
        "supportBack",
        "team/opay/pay/onboarding/register/GuardianUnderReviewFragment$a",
        "l",
        "S",
        "()Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$a;",
        "kycGuardianWsListener",
        "m",
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
.field public static final m:Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Z

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->m:Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$1;->INSTANCE:Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->j:Lid8;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->k:Z

    .line 36
    .line 37
    new-instance v0, Lbu6;

    .line 38
    .line 39
    invoke-direct {v0}, Lbu6;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->l:Lid8;

    .line 47
    .line 48
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->V(Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P()Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$a;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->U()Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic Q(Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->W(Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic R(Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;)Lteam/opay/pay/onboarding/register/RegisterViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->T()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final T()Lteam/opay/pay/onboarding/register/RegisterViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->j:Lid8;

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

.method public static final U()Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$a;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final V(Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->onBackPressed()Z

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->X(Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method private final X(Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->j()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->T()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {v0, p1, v3, v1, v2}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->Z(Lteam/opay/pay/onboarding/register/RegisterViewModel;Lteam/opay/pay/onboarding/register/SetPwdDataRsp;ZILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget v0, Lteam/opay/pay/R$string;->connection_error_headline:I

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "getString(...)"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final S()Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$a;

    .line 8
    .line 9
    return-object v0
.end method

.method public getSupportBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public onBackPressed()Z
    .locals 5

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
    invoke-virtual {v0, v1}, Lteam/opay/core/account/AccountInfoManager;->d(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v0, v4, v2, v3}, Lum8;->j(Landroid/app/Activity;ZILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lnfa;->a:Lnfa;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->S()Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$a;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 v0, 0x1

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {p1, v1, p2, v0, v1}, Lnfa;->c(Lnfa;Ljava/util/Map;Lteam/opay/pay/websocket/IWsMessageDelegate;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lwya;

    .line 25
    .line 26
    iget-object p1, p1, Lwya;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    sget-object p2, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const-string v2, "key_review_time"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v0, v1

    .line 48
    :goto_0
    invoke-virtual {p2, v0}, Lteam/opay/pay/kyc/a;->n(Ljava/lang/Long;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lwya;

    .line 60
    .line 61
    iget-object p1, p1, Lwya;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    if-eqz p2, :cond_1

    .line 68
    .line 69
    const-string v0, "key_review_text"

    .line 70
    .line 71
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :cond_1
    if-nez v1, :cond_2

    .line 76
    .line 77
    const-string v1, ""

    .line 78
    .line 79
    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lwya;

    .line 87
    .line 88
    iget-object p1, p1, Lwya;->j:Lcom/google/android/material/button/MaterialButton;

    .line 89
    .line 90
    const-string p2, "okButton"

    .line 91
    .line 92
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance p2, Lcu6;

    .line 96
    .line 97
    invoke-direct {p2, p0}, Lcu6;-><init>(Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;)V

    .line 98
    .line 99
    .line 100
    invoke-static {p1, p2}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    const-string v0, "getViewLifecycleOwner(...)"

    .line 110
    .line 111
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$b;

    .line 115
    .line 116
    invoke-direct {v0, p0}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$b;-><init>(Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;)V

    .line 117
    .line 118
    .line 119
    const-string/jumbo v1, "ws_kyc_guardian_under_review_refresh"

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2, v1, v0}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->T()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    new-instance v0, Ldu6;

    .line 138
    .line 139
    invoke-direct {v0, p0}, Ldu6;-><init>(Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;)V

    .line 140
    .line 141
    .line 142
    new-instance v1, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$c;

    .line 143
    .line 144
    invoke-direct {v1, v0}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 148
    .line 149
    .line 150
    sget-object p1, Lx7b;->a:Lx7b;

    .line 151
    .line 152
    const/4 p2, 0x0

    .line 153
    new-array p2, p2, [Lkotlin/Pair;

    .line 154
    .line 155
    const-string v0, "birth_review_page_show"

    .line 156
    .line 157
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method
