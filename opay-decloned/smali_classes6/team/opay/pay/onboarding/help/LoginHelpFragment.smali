.class public final Lteam/opay/pay/onboarding/help/LoginHelpFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "LoginHelpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFragmentV2<",
        "Lkf6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001b\u0010\u0011\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/help/LoginHelpFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lkf6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/biometric/BiometricPromptManager;",
        "j",
        "Lid8;",
        "U",
        "()Lteam/opay/pay/biometric/BiometricPromptManager;",
        "biometricPromptManager",
        "",
        "k",
        "Ljava/lang/String;",
        "V",
        "()Ljava/lang/String;",
        "Z",
        "(Ljava/lang/String;)V",
        "phone",
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


# instance fields
.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/onboarding/help/LoginHelpFragment$1;->INSTANCE:Lteam/opay/pay/onboarding/help/LoginHelpFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcm8;

    .line 7
    .line 8
    invoke-direct {v0}, Lcm8;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/onboarding/help/LoginHelpFragment;->j:Lid8;

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    iput-object v0, p0, Lteam/opay/pay/onboarding/help/LoginHelpFragment;->k:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic O(Ljava/util/List;Lteam/opay/pay/onboarding/help/LoginHelpFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/onboarding/help/LoginHelpFragment;->X(Ljava/util/List;Lteam/opay/pay/onboarding/help/LoginHelpFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/onboarding/help/LoginHelpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/help/LoginHelpFragment;->Y(Lteam/opay/pay/onboarding/help/LoginHelpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q()Lteam/opay/pay/biometric/BiometricPromptManager;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/onboarding/help/LoginHelpFragment;->T()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic R(Lteam/opay/pay/onboarding/help/LoginHelpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/help/LoginHelpFragment;->W(Lteam/opay/pay/onboarding/help/LoginHelpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic S(Lteam/opay/pay/onboarding/help/LoginHelpFragment;)Lteam/opay/pay/biometric/BiometricPromptManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/help/LoginHelpFragment;->U()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final T()Lteam/opay/pay/biometric/BiometricPromptManager;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/biometric/BiometricPromptManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final W(Lteam/opay/pay/onboarding/help/LoginHelpFragment;)Lkotlin/Unit;
    .locals 5

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v3, "login_help_biometric_click"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Landroid/content/Intent;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-class v4, Lteam/opay/pay/onboarding/OnboardingActivity;

    .line 22
    .line 23
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    const-string v3, "key_param_onboarding_screen"

    .line 27
    .line 28
    const-string v4, "LOGIN_WITH_PASSWORD"

    .line 29
    .line 30
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string v3, "switch_account"

    .line 34
    .line 35
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const/high16 v1, 0x4000000

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 51
    .line 52
    .line 53
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0
.end method

.method public static final X(Ljava/util/List;Lteam/opay/pay/onboarding/help/LoginHelpFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lteam/opay/pay/onboarding/help/HelpData;

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/help/HelpData;->b()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    sget p2, Lteam/opay/pay/R$string;->help_login_item_1:I

    .line 12
    .line 13
    const-string p3, ""

    .line 14
    .line 15
    const/4 p4, 0x0

    .line 16
    if-ne p0, p2, :cond_1

    .line 17
    .line 18
    sget-object p0, Lx7b;->a:Lx7b;

    .line 19
    .line 20
    const-string p2, "login_help_changeno_click"

    .line 21
    .line 22
    new-array p4, p4, [Lkotlin/Pair;

    .line 23
    .line 24
    invoke-virtual {p0, p2, p4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget-object p1, Lteam/opay/pay/onboarding/LostAccountConfig;->Companion:Lteam/opay/pay/onboarding/LostAccountConfig$Companion;

    .line 32
    .line 33
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/LostAccountConfig$Companion;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object p3, p1

    .line 41
    :goto_0
    invoke-static {p0, p3}, Lkmf;->H(Landroid/content/Context;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    sget p2, Lteam/opay/pay/R$string;->help_login_item_2:I

    .line 46
    .line 47
    if-ne p0, p2, :cond_2

    .line 48
    .line 49
    sget-object p0, Lx7b;->a:Lx7b;

    .line 50
    .line 51
    const-string p2, "login_help_forgetpwd_click"

    .line 52
    .line 53
    new-array p3, p4, [Lkotlin/Pair;

    .line 54
    .line 55
    invoke-virtual {p0, p2, p3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 56
    .line 57
    .line 58
    sget-object p0, Lteam/opay/pay/pin/PasswordRecoveryActivity;->g:Lteam/opay/pay/pin/PasswordRecoveryActivity$Companion;

    .line 59
    .line 60
    iget-object p2, p1, Lteam/opay/pay/onboarding/help/LoginHelpFragment;->k:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p2, p1}, Lteam/opay/pay/pin/PasswordRecoveryActivity$Companion;->a(Ljava/lang/String;Landroid/app/Activity;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    sget p2, Lteam/opay/pay/R$string;->help_login_item_3:I

    .line 71
    .line 72
    if-ne p0, p2, :cond_4

    .line 73
    .line 74
    sget-object p0, Lx7b;->a:Lx7b;

    .line 75
    .line 76
    const-string p2, "login_help_loginno_click"

    .line 77
    .line 78
    new-array p4, p4, [Lkotlin/Pair;

    .line 79
    .line 80
    invoke-virtual {p0, p2, p4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    sget-object p1, Lteam/opay/pay/onboarding/LostAccountConfig;->Companion:Lteam/opay/pay/onboarding/LostAccountConfig$Companion;

    .line 88
    .line 89
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/LostAccountConfig$Companion;->b()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-nez p1, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    move-object p3, p1

    .line 97
    :goto_1
    invoke-static {p0, p3}, Lkmf;->H(Landroid/content/Context;Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    sget p2, Lteam/opay/pay/R$string;->help_login_item_4:I

    .line 102
    .line 103
    if-ne p0, p2, :cond_5

    .line 104
    .line 105
    sget-object p0, Lx7b;->a:Lx7b;

    .line 106
    .line 107
    const-string p2, "login_help_switchaccount_click"

    .line 108
    .line 109
    new-array p3, p4, [Lkotlin/Pair;

    .line 110
    .line 111
    invoke-virtual {p0, p2, p3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    new-instance p2, Landroid/content/Intent;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    const-class p4, Lteam/opay/pay/onboarding/OnboardingActivity;

    .line 125
    .line 126
    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .line 128
    .line 129
    const-string p3, "key_param_onboarding_screen"

    .line 130
    .line 131
    const-string p4, "LOGIN_WITH_PASSWORD"

    .line 132
    .line 133
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    const-string p3, "switch_account"

    .line 137
    .line 138
    const/4 p4, 0x1

    .line 139
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    const/high16 p3, 0x4000000

    .line 143
    .line 144
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 155
    .line 156
    .line 157
    :cond_5
    :goto_2
    return-void
.end method

.method public static final Y(Lteam/opay/pay/onboarding/help/LoginHelpFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v3, "login_help_stillhelp_click"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "login_help"

    .line 16
    .line 17
    new-array v1, v1, [Lkotlin/Pair;

    .line 18
    .line 19
    invoke-static {p0, v0, v1}, Lkmf;->y(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method


# virtual methods
.method public final U()Lteam/opay/pay/biometric/BiometricPromptManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/help/LoginHelpFragment;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public final V()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/help/LoginHelpFragment;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Z(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/onboarding/help/LoginHelpFragment;->k:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
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
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lteam/opay/pay/onboarding/LostAccountConfig;->Companion:Lteam/opay/pay/onboarding/LostAccountConfig$Companion;

    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/pay/onboarding/LostAccountConfig$Companion;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lteam/opay/pay/onboarding/help/HelpData;

    .line 31
    .line 32
    sget v2, Lteam/opay/pay/R$mipmap;->help_login_icon_1:I

    .line 33
    .line 34
    sget v3, Lteam/opay/pay/R$string;->help_login_item_1:I

    .line 35
    .line 36
    invoke-direct {v0, v2, v3}, Lteam/opay/pay/onboarding/help/HelpData;-><init>(II)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    sget-object v0, Lx7b;->a:Lx7b;

    .line 43
    .line 44
    const-string v2, "login_help_changeno_show"

    .line 45
    .line 46
    new-array v3, v1, [Lkotlin/Pair;

    .line 47
    .line 48
    invoke-virtual {v0, v2, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    new-instance v0, Lteam/opay/pay/onboarding/help/HelpData;

    .line 52
    .line 53
    sget v2, Lteam/opay/pay/R$mipmap;->help_login_icon_2:I

    .line 54
    .line 55
    sget v3, Lteam/opay/pay/R$string;->help_login_item_2:I

    .line 56
    .line 57
    invoke-direct {v0, v2, v3}, Lteam/opay/pay/onboarding/help/HelpData;-><init>(II)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lteam/opay/pay/onboarding/LostAccountConfig$Companion;->b()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-nez p2, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    new-instance p2, Lteam/opay/pay/onboarding/help/HelpData;

    .line 77
    .line 78
    sget v0, Lteam/opay/pay/R$mipmap;->help_login_icon_3:I

    .line 79
    .line 80
    sget v2, Lteam/opay/pay/R$string;->help_login_item_3:I

    .line 81
    .line 82
    invoke-direct {p2, v0, v2}, Lteam/opay/pay/onboarding/help/HelpData;-><init>(II)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    sget-object p2, Lx7b;->a:Lx7b;

    .line 89
    .line 90
    const-string v0, "login_help_loginno_show"

    .line 91
    .line 92
    new-array v2, v1, [Lkotlin/Pair;

    .line 93
    .line 94
    invoke-virtual {p2, v0, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_1
    new-instance p2, Lteam/opay/pay/onboarding/help/HelpData;

    .line 98
    .line 99
    sget v0, Lteam/opay/pay/R$mipmap;->help_login_icon_4:I

    .line 100
    .line 101
    sget v2, Lteam/opay/pay/R$string;->help_login_item_4:I

    .line 102
    .line 103
    invoke-direct {p2, v0, v2}, Lteam/opay/pay/onboarding/help/HelpData;-><init>(II)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    new-instance v6, Lteam/opay/pay/onboarding/help/LoginHelpFragment$onViewCreated$1;

    .line 118
    .line 119
    const/4 p2, 0x0

    .line 120
    invoke-direct {v6, p0, p2}, Lteam/opay/pay/onboarding/help/LoginHelpFragment$onViewCreated$1;-><init>(Lteam/opay/pay/onboarding/help/LoginHelpFragment;Ljr2;)V

    .line 121
    .line 122
    .line 123
    const/4 v7, 0x2

    .line 124
    const/4 v8, 0x0

    .line 125
    const/4 v5, 0x0

    .line 126
    invoke-static/range {v3 .. v8}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    check-cast p2, Lkf6;

    .line 134
    .line 135
    iget-object p2, p2, Lkf6;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 136
    .line 137
    const-string v0, "itemBio"

    .line 138
    .line 139
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance v0, Ldm8;

    .line 143
    .line 144
    invoke-direct {v0, p0}, Ldm8;-><init>(Lteam/opay/pay/onboarding/help/LoginHelpFragment;)V

    .line 145
    .line 146
    .line 147
    invoke-static {p2, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    check-cast p2, Lkf6;

    .line 155
    .line 156
    iget-object p2, p2, Lkf6;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 157
    .line 158
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 159
    .line 160
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 168
    .line 169
    .line 170
    new-instance v0, Lteam/opay/pay/onboarding/help/HelpAdapter;

    .line 171
    .line 172
    invoke-direct {v0}, Lteam/opay/pay/onboarding/help/HelpAdapter;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 176
    .line 177
    .line 178
    new-instance v2, Lem8;

    .line 179
    .line 180
    invoke-direct {v2, p1, p0}, Lem8;-><init>(Ljava/util/List;Lteam/opay/pay/onboarding/help/LoginHelpFragment;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Lkf6;

    .line 194
    .line 195
    iget-object p1, p1, Lkf6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 196
    .line 197
    const-string p2, "hotlineView"

    .line 198
    .line 199
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    sget-object v0, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig;->Companion:Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;

    .line 203
    .line 204
    const-string v2, "login_help"

    .line 205
    .line 206
    invoke-virtual {v0, v2}, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;->a(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-static {p1, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    check-cast p1, Lkf6;

    .line 218
    .line 219
    iget-object p1, p1, Lkf6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 220
    .line 221
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    new-instance p2, Lfm8;

    .line 225
    .line 226
    invoke-direct {p2, p0}, Lfm8;-><init>(Lteam/opay/pay/onboarding/help/LoginHelpFragment;)V

    .line 227
    .line 228
    .line 229
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 230
    .line 231
    .line 232
    sget-object p1, Lx7b;->a:Lx7b;

    .line 233
    .line 234
    const-string p2, "login_help_show"

    .line 235
    .line 236
    new-array v0, v1, [Lkotlin/Pair;

    .line 237
    .line 238
    invoke-virtual {p1, p2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 239
    .line 240
    .line 241
    return-void
.end method
