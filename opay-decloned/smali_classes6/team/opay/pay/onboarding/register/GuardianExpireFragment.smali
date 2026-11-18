.class public final Lteam/opay/pay/onboarding/register/GuardianExpireFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "GuardianExpireFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/register/GuardianExpireFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFragmentV2<",
        "Ldza;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 $2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001%B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0018\u001a\u00020\u00108\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0012\"\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u001b\u001a\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/register/GuardianExpireFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Ldza;",
        "<init>",
        "()V",
        "Lteam/opay/pay/onboarding/register/SetPwdDataRsp;",
        "data",
        "",
        "W",
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
        "j",
        "Z",
        "getSupportBack",
        "setSupportBack",
        "(Z)V",
        "supportBack",
        "Lteam/opay/pay/onboarding/register/RegisterViewModel;",
        "k",
        "Lid8;",
        "S",
        "()Lteam/opay/pay/onboarding/register/RegisterViewModel;",
        "registerViewModel",
        "Lteam/opay/pay/kyc/base/SceneViewModel;",
        "l",
        "T",
        "()Lteam/opay/pay/kyc/base/SceneViewModel;",
        "sceneViewModel",
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
.field public static final m:Lteam/opay/pay/onboarding/register/GuardianExpireFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public j:Z

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->m:Lteam/opay/pay/onboarding/register/GuardianExpireFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$1;->INSTANCE:Lteam/opay/pay/onboarding/register/GuardianExpireFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->j:Z

    .line 8
    .line 9
    const-class v0, Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$special$$inlined$activityViewModels$default$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$special$$inlined$activityViewModels$default$2;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$special$$inlined$activityViewModels$default$3;

    .line 27
    .line 28
    invoke-direct {v4, p0}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0, v1, v2, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->k:Lid8;

    .line 36
    .line 37
    const-class v0, Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$special$$inlined$activityViewModels$default$4;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$special$$inlined$activityViewModels$default$5;

    .line 49
    .line 50
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$special$$inlined$activityViewModels$default$5;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$special$$inlined$activityViewModels$default$6;

    .line 54
    .line 55
    invoke-direct {v3, p0}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$special$$inlined$activityViewModels$default$6;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->l:Lid8;

    .line 63
    .line 64
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/onboarding/register/GuardianExpireFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->U(Lteam/opay/pay/onboarding/register/GuardianExpireFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/onboarding/register/GuardianExpireFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->V(Lteam/opay/pay/onboarding/register/GuardianExpireFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Q(Lteam/opay/pay/onboarding/register/GuardianExpireFragment;)Lteam/opay/pay/onboarding/register/RegisterViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->S()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic R(Lteam/opay/pay/onboarding/register/GuardianExpireFragment;Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->W(Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final S()Lteam/opay/pay/onboarding/register/RegisterViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->k:Lid8;

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

.method public static final U(Lteam/opay/pay/onboarding/register/GuardianExpireFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->onBackPressed()Z

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/onboarding/register/GuardianExpireFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "&sceneSource=guardian"

    .line 7
    .line 8
    const-string v2, "REGISTER"

    .line 9
    .line 10
    invoke-static {p0, v2, v0, v1}, Lkmf;->z(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private final W(Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)V
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
    invoke-direct {p0}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->S()Lteam/opay/pay/onboarding/register/RegisterViewModel;

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
.method public final T()Lteam/opay/pay/kyc/base/SceneViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->l:Lid8;

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

.method public getSupportBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->j:Z

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
    .locals 3
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
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ldza;

    .line 14
    .line 15
    iget-object p1, p1, Ldza;->f:Lcom/google/android/material/button/MaterialButton;

    .line 16
    .line 17
    const-string p2, "laterButton"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lmt6;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lmt6;-><init>(Lteam/opay/pay/onboarding/register/GuardianExpireFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ldza;

    .line 35
    .line 36
    iget-object p1, p1, Ldza;->b:Lcom/google/android/material/button/MaterialButton;

    .line 37
    .line 38
    const-string p2, "addAGuardian"

    .line 39
    .line 40
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance p2, Lnt6;

    .line 44
    .line 45
    invoke-direct {p2, p0}, Lnt6;-><init>(Lteam/opay/pay/onboarding/register/GuardianExpireFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    sget-object p1, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const-string v0, "getViewLifecycleOwner(...)"

    .line 58
    .line 59
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$a;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$a;-><init>(Lteam/opay/pay/onboarding/register/GuardianExpireFragment;)V

    .line 65
    .line 66
    .line 67
    const-string v2, "to_guest_home"

    .line 68
    .line 69
    invoke-virtual {p1, p2, v2, v1}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$b;

    .line 80
    .line 81
    invoke-direct {v0, p0}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$b;-><init>(Lteam/opay/pay/onboarding/register/GuardianExpireFragment;)V

    .line 82
    .line 83
    .line 84
    const-string/jumbo v1, "ws_kyc_guardian_success"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2, v1, v0}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 88
    .line 89
    .line 90
    sget-object p1, Lx7b;->a:Lx7b;

    .line 91
    .line 92
    const/4 p2, 0x0

    .line 93
    new-array p2, p2, [Lkotlin/Pair;

    .line 94
    .line 95
    const-string v0, "authorization_expired_page_show"

    .line 96
    .line 97
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method
