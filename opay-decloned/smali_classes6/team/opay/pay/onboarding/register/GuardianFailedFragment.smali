.class public final Lteam/opay/pay/onboarding/register/GuardianFailedFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "GuardianFailedFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/register/GuardianFailedFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFragmentV2<",
        "Luya;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u001b2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\"\u0010\u0014\u001a\u00020\u000c8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/register/GuardianFailedFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Luya;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
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
        "getRegisterViewModel",
        "()Lteam/opay/pay/onboarding/register/RegisterViewModel;",
        "registerViewModel",
        "l",
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
.field public static final l:Lteam/opay/pay/onboarding/register/GuardianFailedFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public j:Z

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/register/GuardianFailedFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/onboarding/register/GuardianFailedFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/onboarding/register/GuardianFailedFragment;->l:Lteam/opay/pay/onboarding/register/GuardianFailedFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/onboarding/register/GuardianFailedFragment$1;->INSTANCE:Lteam/opay/pay/onboarding/register/GuardianFailedFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/onboarding/register/GuardianFailedFragment;->j:Z

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
    new-instance v1, Lteam/opay/pay/onboarding/register/GuardianFailedFragment$special$$inlined$activityViewModels$default$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lteam/opay/pay/onboarding/register/GuardianFailedFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lteam/opay/pay/onboarding/register/GuardianFailedFragment$special$$inlined$activityViewModels$default$2;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/onboarding/register/GuardianFailedFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lteam/opay/pay/onboarding/register/GuardianFailedFragment$special$$inlined$activityViewModels$default$3;

    .line 27
    .line 28
    invoke-direct {v3, p0}, Lteam/opay/pay/onboarding/register/GuardianFailedFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lteam/opay/pay/onboarding/register/GuardianFailedFragment;->k:Lid8;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/onboarding/register/GuardianFailedFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/register/GuardianFailedFragment;->P(Lteam/opay/pay/onboarding/register/GuardianFailedFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final P(Lteam/opay/pay/onboarding/register/GuardianFailedFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/GuardianFailedFragment;->onBackPressed()Z

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public getSupportBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/onboarding/register/GuardianFailedFragment;->j:Z

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
    .locals 6
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
    check-cast p1, Luya;

    .line 14
    .line 15
    iget-object p1, p1, Luya;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    const-string v1, "key_fail_text"

    .line 25
    .line 26
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p2, v0

    .line 32
    :goto_0
    const-string v1, ""

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    move-object p2, v1

    .line 37
    :cond_1
    invoke-static {p2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Luya;

    .line 49
    .line 50
    iget-object p1, p1, Luya;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    const-string v0, "key_note_text"

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :cond_2
    if-nez v0, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move-object v1, v0

    .line 68
    :goto_1
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Luya;

    .line 80
    .line 81
    iget-object p1, p1, Luya;->f:Lcom/google/android/material/button/MaterialButton;

    .line 82
    .line 83
    const-string p2, "okButton"

    .line 84
    .line 85
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance p2, Lot6;

    .line 89
    .line 90
    invoke-direct {p2, p0}, Lot6;-><init>(Lteam/opay/pay/onboarding/register/GuardianFailedFragment;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1, p2}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string p1, "requireContext(...)"

    .line 101
    .line 102
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const/4 v4, 0x4

    .line 106
    const/4 v5, 0x0

    .line 107
    const-string v1, "REGISTER"

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    const-string v3, "&sceneSource=guardian"

    .line 111
    .line 112
    invoke-static/range {v0 .. v5}, Lkmf;->A(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    sget-object p1, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 116
    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    const-string v0, "getViewLifecycleOwner(...)"

    .line 122
    .line 123
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Lteam/opay/pay/onboarding/register/GuardianFailedFragment$a;

    .line 127
    .line 128
    invoke-direct {v0, p0}, Lteam/opay/pay/onboarding/register/GuardianFailedFragment$a;-><init>(Lteam/opay/pay/onboarding/register/GuardianFailedFragment;)V

    .line 129
    .line 130
    .line 131
    const-string v1, "to_guest_home"

    .line 132
    .line 133
    invoke-virtual {p1, p2, v1, v0}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method
