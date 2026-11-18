.class public final Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;
.super Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;
.source "ResetPayPinActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J)\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0015\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Lteam/opay/pay/home/security/SecretSecurityViewModel;",
        "g",
        "Lid8;",
        "B",
        "()Lteam/opay/pay/home/security/SecretSecurityViewModel;",
        "payPinViewModel",
        "",
        "h",
        "Z",
        "getSkipAppLock",
        "()Z",
        "setSkipAppLock",
        "(Z)V",
        "skipAppLock",
        "i",
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
.field public static final i:Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;->i:Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_reset_pay_pin:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 12
    .line 13
    const-class v2, Lteam/opay/pay/home/security/SecretSecurityViewModel;

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$special$$inlined$viewModels$default$2;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$special$$inlined$viewModels$default$3;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;->g:Lid8;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;->h:Z

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;->C(Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final C(Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    sget p1, Lteam/opay/pay/R$id;->content:I

    .line 12
    .line 13
    sget-object v0, Lteam/opay/pay/home/security/paypin/PayPinChangeFragment;->t:Lteam/opay/pay/home/security/paypin/PayPinChangeFragment$Companion;

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/home/security/paypin/PayPinChangeFragment$Companion;->a()Lteam/opay/pay/home/security/paypin/PayPinChangeFragment;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->v(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 20
    .line 21
    .line 22
    goto :goto_4

    .line 23
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x3

    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    sget p1, Lteam/opay/pay/R$id;->content:I

    .line 34
    .line 35
    sget-object v0, Lteam/opay/pay/home/security/paypin/PayPinSetFragment;->t:Lteam/opay/pay/home/security/paypin/PayPinSetFragment$Companion;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/security/paypin/PayPinSetFragment$Companion;->a(Z)Lteam/opay/pay/home/security/paypin/PayPinSetFragment;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->v(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 43
    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_5

    .line 54
    .line 55
    sget p1, Lteam/opay/pay/R$id;->content:I

    .line 56
    .line 57
    sget-object v0, Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;->r:Lteam/opay/pay/home/security/paypin/PayPinSettingFragment$Companion;

    .line 58
    .line 59
    invoke-virtual {v0}, Lteam/opay/pay/home/security/paypin/PayPinSettingFragment$Companion;->a()Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 64
    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_5
    :goto_2
    if-nez p1, :cond_6

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    const/4 v0, 0x4

    .line 75
    if-ne p1, v0, :cond_7

    .line 76
    .line 77
    sget p1, Lteam/opay/pay/R$id;->content:I

    .line 78
    .line 79
    sget-object v0, Lteam/opay/pay/home/security/PINResultFragment;->p:Lteam/opay/pay/home/security/PINResultFragment$Companion;

    .line 80
    .line 81
    invoke-virtual {v0}, Lteam/opay/pay/home/security/PINResultFragment$Companion;->a()Lteam/opay/pay/home/security/PINResultFragment;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 86
    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_7
    :goto_3
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 90
    .line 91
    .line 92
    :goto_4
    return-void
.end method


# virtual methods
.method public final B()Lteam/opay/pay/home/security/SecretSecurityViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/security/SecretSecurityViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public getSkipAppLock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
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
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->z0()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "getFragments(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v2, v1

    .line 32
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    instance-of v2, v2, Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_0
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;->B()Lteam/opay/pay/home/security/SecretSecurityViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v1, "extra_token_key"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lteam/opay/pay/account/verify/VerifyEvent;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-virtual {p1, v0}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->V(Lteam/opay/pay/account/verify/VerifyEvent;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;->B()Lteam/opay/pay/home/security/SecretSecurityViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string v2, "extra_from_key"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_1
    invoke-virtual {p1, v0}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->W(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;->B()Lteam/opay/pay/home/security/SecretSecurityViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    const-string v2, "extra_type_key"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    :cond_2
    const-string v0, ""

    .line 68
    .line 69
    :cond_3
    invoke-virtual {p1, v0}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->d0(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v0, "extra_show_page"

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_7

    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    if-eq p1, v0, :cond_6

    .line 86
    .line 87
    const/4 v0, 0x2

    .line 88
    if-eq p1, v0, :cond_5

    .line 89
    .line 90
    const/4 v0, 0x3

    .line 91
    if-eq p1, v0, :cond_4

    .line 92
    .line 93
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    sget p1, Lteam/opay/pay/R$id;->content:I

    .line 98
    .line 99
    sget-object v0, Lteam/opay/pay/home/security/paypin/PayPinSetFragment;->t:Lteam/opay/pay/home/security/paypin/PayPinSetFragment$Companion;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/security/paypin/PayPinSetFragment$Companion;->a(Z)Lteam/opay/pay/home/security/paypin/PayPinSetFragment;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    sget p1, Lteam/opay/pay/R$id;->content:I

    .line 110
    .line 111
    sget-object v0, Lteam/opay/pay/home/security/paypin/PayPinChangeFragment;->t:Lteam/opay/pay/home/security/paypin/PayPinChangeFragment$Companion;

    .line 112
    .line 113
    invoke-virtual {v0}, Lteam/opay/pay/home/security/paypin/PayPinChangeFragment$Companion;->a()Lteam/opay/pay/home/security/paypin/PayPinChangeFragment;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    sget p1, Lteam/opay/pay/R$id;->content:I

    .line 122
    .line 123
    sget-object v1, Lteam/opay/pay/home/security/paypin/PayPinSetFragment;->t:Lteam/opay/pay/home/security/paypin/PayPinSetFragment$Companion;

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Lteam/opay/pay/home/security/paypin/PayPinSetFragment$Companion;->a(Z)Lteam/opay/pay/home/security/paypin/PayPinSetFragment;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    sget p1, Lteam/opay/pay/R$id;->content:I

    .line 134
    .line 135
    sget-object v0, Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;->r:Lteam/opay/pay/home/security/paypin/PayPinSettingFragment$Companion;

    .line 136
    .line 137
    invoke-virtual {v0}, Lteam/opay/pay/home/security/paypin/PayPinSettingFragment$Companion;->a()Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 142
    .line 143
    .line 144
    :goto_2
    invoke-virtual {p0}, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;->B()Lteam/opay/pay/home/security/SecretSecurityViewModel;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->H()Landroidx/lifecycle/LiveData;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    new-instance v0, Lgqc;

    .line 153
    .line 154
    invoke-direct {v0, p0}, Lgqc;-><init>(Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public setSkipAppLock(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;->h:Z

    .line 2
    .line 3
    return-void
.end method
