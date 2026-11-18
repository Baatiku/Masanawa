.class public final Lteam/opay/pay/kyc/edit/KycFormActivity;
.super Lteam/opay/pay/kyc/edit/Hilt_KycFormActivity;
.source "KycFormActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/edit/KycFormActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 !2\u00020\u0001:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J)\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00168VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u001b\u0010 \u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0018\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/pay/kyc/edit/KycFormActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "",
        "shouldShow",
        "",
        "H",
        "(Z)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "onPause",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Lbv7;",
        "e",
        "Lid8;",
        "D",
        "()Lbv7;",
        "viewBinding",
        "Lteam/opay/pay/kyc/edit/KycFormViewModel;",
        "f",
        "E",
        "()Lteam/opay/pay/kyc/edit/KycFormViewModel;",
        "viewModel",
        "g",
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
.field public static final g:Lteam/opay/pay/kyc/edit/KycFormActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/edit/KycFormActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/edit/KycFormActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/edit/KycFormActivity;->g:Lteam/opay/pay/kyc/edit/KycFormActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->kyc_activity_upgrade:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/edit/Hilt_KycFormActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lex7;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lex7;-><init>(Lteam/opay/pay/kyc/edit/KycFormActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/kyc/edit/KycFormActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/edit/KycFormActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/kyc/edit/KycFormViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/kyc/edit/KycFormActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/kyc/edit/KycFormActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/kyc/edit/KycFormActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/kyc/edit/KycFormActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/kyc/edit/KycFormActivity;->f:Lid8;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/kyc/edit/KycFormActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/edit/KycFormActivity;->G(Lteam/opay/pay/kyc/edit/KycFormActivity;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lteam/opay/pay/kyc/edit/KycFormActivity;)Lbv7;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/edit/KycFormActivity;->I(Lteam/opay/pay/kyc/edit/KycFormActivity;)Lbv7;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/kyc/edit/KycFormActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/edit/KycFormActivity;->F(Lteam/opay/pay/kyc/edit/KycFormActivity;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final F(Lteam/opay/pay/kyc/edit/KycFormActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0, p1}, Lteam/opay/pay/kyc/edit/KycFormActivity;->H(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static final G(Lteam/opay/pay/kyc/edit/KycFormActivity;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/edit/KycFormActivity;->D()Lbv7;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lbv7;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 6
    .line 7
    sget v0, Lteam/opay/pay/R$id;->action_button:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroidx/appcompat/widget/AppCompatButton;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private final H(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/edit/KycFormActivity;->D()Lbv7;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lbv7;->d:Lji8;

    .line 6
    .line 7
    invoke-virtual {v0}, Lji8;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "getRoot(...)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lkmf;->e(Landroid/app/Activity;)Lkotlin/Unit;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static final I(Lteam/opay/pay/kyc/edit/KycFormActivity;)Lbv7;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lbv7;->inflate(Landroid/view/LayoutInflater;)Lbv7;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public D()Lbv7;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lbv7;

    .line 8
    .line 9
    return-object v0
.end method

.method public final E()Lteam/opay/pay/kyc/edit/KycFormViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/edit/KycFormActivity;->D()Lbv7;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget v1, Lteam/opay/pay/R$id;->fragment_content:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->k0(I)Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/kyc/edit/Hilt_KycFormActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/edit/KycFormActivity;->E()Lteam/opay/pay/kyc/edit/KycFormViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "extra_kyc_upgrade"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, ""

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    move-object v0, v2

    .line 25
    :cond_0
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/edit/KycFormViewModel;->P(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/kyc/edit/KycFormActivity;->E()Lteam/opay/pay/kyc/edit/KycFormViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v3, "current_reward"

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    move-object v0, v2

    .line 45
    :cond_1
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/edit/KycFormViewModel;->M(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/pay/kyc/edit/KycFormActivity;->E()Lteam/opay/pay/kyc/edit/KycFormViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v3, "next_reward"

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    move-object v0, v2

    .line 65
    :cond_2
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/edit/KycFormViewModel;->T(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/pay/kyc/edit/KycFormActivity;->E()Lteam/opay/pay/kyc/edit/KycFormViewModel;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v3, "next_action_name"

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    move-object v0, v2

    .line 85
    :cond_3
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/edit/KycFormViewModel;->S(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lteam/opay/pay/kyc/edit/KycFormActivity;->E()Lteam/opay/pay/kyc/edit/KycFormViewModel;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v3, "next_action"

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-nez v0, :cond_4

    .line 103
    .line 104
    move-object v0, v2

    .line 105
    :cond_4
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/edit/KycFormViewModel;->R(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    invoke-virtual {p0}, Lteam/opay/pay/kyc/edit/KycFormActivity;->E()Lteam/opay/pay/kyc/edit/KycFormViewModel;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-nez v1, :cond_5

    .line 127
    .line 128
    move-object v1, v2

    .line 129
    :cond_5
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/edit/KycFormViewModel;->P(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lteam/opay/pay/kyc/edit/KycFormActivity;->E()Lteam/opay/pay/kyc/edit/KycFormViewModel;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const-string v1, "source"

    .line 137
    .line 138
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-nez p1, :cond_6

    .line 143
    .line 144
    move-object p1, v2

    .line 145
    :cond_6
    const-string v1, "EaseMoni"

    .line 146
    .line 147
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/edit/KycFormViewModel;->N(Z)V

    .line 152
    .line 153
    .line 154
    :cond_7
    invoke-virtual {p0}, Lteam/opay/pay/kyc/edit/KycFormActivity;->E()Lteam/opay/pay/kyc/edit/KycFormViewModel;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lteam/opay/pay/kyc/edit/KycFormViewModel;->A()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    const/4 v1, 0x2

    .line 167
    const/4 v3, 0x0

    .line 168
    sparse-switch v0, :sswitch_data_0

    .line 169
    .line 170
    .line 171
    goto/16 :goto_1

    .line 172
    .line 173
    :sswitch_0
    const-string v0, "new_card"

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_8

    .line 180
    .line 181
    goto/16 :goto_1

    .line 182
    .line 183
    :cond_8
    sget-object p1, Ljd6;->a:Ljd6;

    .line 184
    .line 185
    sget-object v0, Lteam/opay/pay/settings/NewCardAccountFragment;->u:Lteam/opay/pay/settings/NewCardAccountFragment$Companion;

    .line 186
    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    const-string v3, "bvn"

    .line 192
    .line 193
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    if-nez v1, :cond_9

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_9
    move-object v2, v1

    .line 201
    :goto_0
    invoke-virtual {v0, v2}, Lteam/opay/pay/settings/NewCardAccountFragment$Companion;->a(Ljava/lang/String;)Lteam/opay/pay/settings/NewCardAccountFragment;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {p1, p0, v0}, Ljd6;->c(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lteam/opay/pay/kyc/edit/KycFormActivity;->D()Lbv7;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iget-object p1, p1, Lbv7;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 213
    .line 214
    sget v0, Lteam/opay/pay/R$string;->edit_account:I

    .line 215
    .line 216
    invoke-virtual {p1, v0}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(I)V

    .line 217
    .line 218
    .line 219
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :sswitch_1
    const-string v0, "tip_dialog"

    .line 224
    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-nez p1, :cond_b

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :sswitch_2
    const-string v0, "edit"

    .line 233
    .line 234
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    if-nez p1, :cond_a

    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_a
    sget-object p1, Lteam/opay/pay/kyc/edit/KycEditFragment;->F:Lteam/opay/pay/kyc/edit/KycEditFragment$Companion;

    .line 242
    .line 243
    invoke-virtual {p1}, Lteam/opay/pay/kyc/edit/KycEditFragment$Companion;->a()Lteam/opay/pay/kyc/edit/KycEditFragment;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    sget-object v0, Ljd6;->a:Ljd6;

    .line 248
    .line 249
    invoke-virtual {v0, p0, p1}, Ljd6;->c(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0}, Lteam/opay/pay/kyc/edit/KycFormActivity;->D()Lbv7;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    iget-object p1, p1, Lbv7;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 257
    .line 258
    sget v0, Lteam/opay/pay/R$string;->edit_account:I

    .line 259
    .line 260
    invoke-virtual {p1, v0}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(I)V

    .line 261
    .line 262
    .line 263
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    goto :goto_2

    .line 267
    :sswitch_3
    const-string v0, "upgrade"

    .line 268
    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-nez p1, :cond_b

    .line 274
    .line 275
    goto :goto_1

    .line 276
    :sswitch_4
    const-string v0, "home_pop"

    .line 277
    .line 278
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    if-nez p1, :cond_b

    .line 283
    .line 284
    goto :goto_1

    .line 285
    :sswitch_5
    const-string v0, "invite"

    .line 286
    .line 287
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    if-nez p1, :cond_b

    .line 292
    .line 293
    :goto_1
    sget-object p1, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;->h:Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$Companion;

    .line 294
    .line 295
    invoke-static {p1, p0, v3, v1, v3}, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$Companion;->b(Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$Companion;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 299
    .line 300
    .line 301
    goto :goto_2

    .line 302
    :cond_b
    sget-object p1, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;->h:Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$Companion;

    .line 303
    .line 304
    invoke-static {p1, p0, v3, v1, v3}, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$Companion;->b(Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$Companion;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 308
    .line 309
    .line 310
    :goto_2
    invoke-virtual {p0}, Lteam/opay/pay/kyc/edit/KycFormActivity;->E()Lteam/opay/pay/kyc/edit/KycFormViewModel;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-virtual {p1}, Lteam/opay/pay/kyc/edit/KycFormViewModel;->F()Landroidx/lifecycle/MutableLiveData;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    new-instance v0, Lfx7;

    .line 319
    .line 320
    invoke-direct {v0, p0}, Lfx7;-><init>(Lteam/opay/pay/kyc/edit/KycFormActivity;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Lteam/opay/pay/kyc/edit/KycFormActivity;->E()Lteam/opay/pay/kyc/edit/KycFormViewModel;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-virtual {p1}, Lteam/opay/pay/kyc/edit/KycFormViewModel;->J()Landroidx/lifecycle/MutableLiveData;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    new-instance v0, Lgx7;

    .line 335
    .line 336
    invoke-direct {v0, p0}, Lgx7;-><init>(Lteam/opay/pay/kyc/edit/KycFormActivity;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :sswitch_data_0
    .sparse-switch
        -0x468dd0f7 -> :sswitch_5
        -0x1cf5b10f -> :sswitch_4
        -0xdc765e4 -> :sswitch_3
        0x2f6e0a -> :sswitch_2
        0x45e6656c -> :sswitch_1
        0x52108e4f -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-static {p0}, Lkmf;->e(Landroid/app/Activity;)Lkotlin/Unit;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lteam/opay/pay/android/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    sget-object v0, Lx7b;->a:Lx7b;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Lkotlin/Pair;

    .line 10
    .line 11
    const-string v2, "verify_bvn_show"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
