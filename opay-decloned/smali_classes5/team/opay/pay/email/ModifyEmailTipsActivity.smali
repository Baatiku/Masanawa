.class public final Lteam/opay/pay/email/ModifyEmailTipsActivity;
.super Lteam/opay/pay/email/Hilt_ModifyEmailTipsActivity;
.source "ModifyEmailTipsActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u0017\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u000cR\u001b\u0010\u001a\u001a\u00020\u00158VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/pay/email/ModifyEmailTipsActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onPostCreate",
        "(Landroid/os/Bundle;)V",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "event",
        "onEvent",
        "(Lteam/opay/pay/account/verify/VerifyEvent;)V",
        "onDestroy",
        "G",
        "I",
        "",
        "email",
        "E",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "L",
        "Lof;",
        "e",
        "Lid8;",
        "F",
        "()Lof;",
        "viewBinding",
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
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_modify_email_tips:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/email/Hilt_ModifyEmailTipsActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lfb9;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lfb9;-><init>(Lteam/opay/pay/email/ModifyEmailTipsActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/email/ModifyEmailTipsActivity;->e:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/email/ModifyEmailTipsActivity;)Lof;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->M(Lteam/opay/pay/email/ModifyEmailTipsActivity;)Lof;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/email/ModifyEmailTipsActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->J(Lteam/opay/pay/email/ModifyEmailTipsActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/email/ModifyEmailTipsActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->H(Lteam/opay/pay/email/ModifyEmailTipsActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/email/ModifyEmailTipsActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->K(Lteam/opay/pay/email/ModifyEmailTipsActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final H(Lteam/opay/pay/email/ModifyEmailTipsActivity;)Lkotlin/Unit;
    .locals 8

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/VerifyActivity;->l:Lteam/opay/pay/account/verify/VerifyActivity$Companion;

    .line 2
    .line 3
    sget-object v2, Lteam/opay/pay/account/verify/ModifyType;->BIND_EMAIL:Lteam/opay/pay/account/verify/ModifyType;

    .line 4
    .line 5
    const/4 v6, 0x4

    .line 6
    const/4 v7, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "detail_bind_email"

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    move-object v1, p0

    .line 12
    invoke-static/range {v0 .. v7}, Lteam/opay/pay/account/verify/VerifyActivity$Companion;->e(Lteam/opay/pay/account/verify/VerifyActivity$Companion;Landroid/app/Activity;Lteam/opay/pay/account/verify/ModifyType;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static final J(Lteam/opay/pay/email/ModifyEmailTipsActivity;)Lkotlin/Unit;
    .locals 11

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "change_email_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    sget-object v3, Lteam/opay/pay/account/verify/VerifyActivity;->l:Lteam/opay/pay/account/verify/VerifyActivity$Companion;

    .line 12
    .line 13
    sget-object v5, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_EMAIL:Lteam/opay/pay/account/verify/ModifyType;

    .line 14
    .line 15
    const/4 v9, 0x4

    .line 16
    const/4 v10, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const-string v7, "detail_modify_email"

    .line 19
    .line 20
    const/4 v8, 0x1

    .line 21
    move-object v4, p0

    .line 22
    invoke-static/range {v3 .. v10}, Lteam/opay/pay/account/verify/VerifyActivity$Companion;->e(Lteam/opay/pay/account/verify/VerifyActivity$Companion;Landroid/app/Activity;Lteam/opay/pay/account/verify/ModifyType;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method public static final K(Lteam/opay/pay/email/ModifyEmailTipsActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final M(Lteam/opay/pay/email/ModifyEmailTipsActivity;)Lof;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lof;->inflate(Landroid/view/LayoutInflater;)Lof;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final E(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    const/4 v2, -0x1

    .line 7
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/16 v4, 0x40

    .line 14
    .line 15
    if-ne v3, v4, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, -0x1

    .line 22
    :goto_1
    if-eq v1, v2, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x3

    .line 29
    if-ge v0, v2, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    const-string v0, "*"

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-static {p1, v2, v1, v0}, Lkotlin/text/StringsKt;->R0(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :cond_3
    :goto_2
    return-object p1
.end method

.method public F()Lof;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/email/ModifyEmailTipsActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lof;

    .line 8
    .line 9
    return-object v0
.end method

.method public final G()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lof;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 6
    .line 7
    sget v1, Lteam/opay/pay/R$string;->omain_email_modify:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lof;->c:Landroid/widget/TextView;

    .line 17
    .line 18
    const-string v1, "bindEmailTips"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Lof;->e:Landroidx/constraintlayout/widget/Group;

    .line 31
    .line 32
    const-string v1, "changeEmailGroup"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    const-string v1, "tip_text"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    if-nez v0, :cond_1

    .line 55
    .line 56
    const-string v0, ""

    .line 57
    .line 58
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v1, v1, Lof;->c:Landroid/widget/TextView;

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v1, v1, Lof;->c:Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_2

    .line 79
    .line 80
    sget v0, Lteam/opay/pay/R$string;->osdk_bind_email_tips:I

    .line 81
    .line 82
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v0, v0, Lof;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 94
    .line 95
    sget v1, Lteam/opay/pay/R$mipmap;->ic_email_tips:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v0, v0, Lof;->d:Lcom/google/android/material/button/MaterialButton;

    .line 105
    .line 106
    const-string v1, "btnConfirm"

    .line 107
    .line 108
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Lhb9;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Lhb9;-><init>(Lteam/opay/pay/email/ModifyEmailTipsActivity;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v0, v0, Lof;->d:Lcom/google/android/material/button/MaterialButton;

    .line 124
    .line 125
    sget v1, Lteam/opay/pay/R$string;->osdk_bind_email:I

    .line 126
    .line 127
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final I()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lof;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lof;->e:Landroidx/constraintlayout/widget/Group;

    .line 17
    .line 18
    const-string v1, "changeEmailGroup"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Lof;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 31
    .line 32
    sget v1, Lteam/opay/pay/R$mipmap;->ic_change_email_tips:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lof;->i:Landroid/widget/TextView;

    .line 42
    .line 43
    sget-object v1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 44
    .line 45
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager;->g()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p0, v1}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v0, v0, Lof;->c:Landroid/widget/TextView;

    .line 65
    .line 66
    const-string v1, "bindEmailTips"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v0, v0, Lof;->d:Lcom/google/android/material/button/MaterialButton;

    .line 79
    .line 80
    const-string v1, "btnConfirm"

    .line 81
    .line 82
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Lib9;

    .line 86
    .line 87
    invoke-direct {v1, p0}, Lib9;-><init>(Lteam/opay/pay/email/ModifyEmailTipsActivity;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v0, v0, Lof;->d:Lcom/google/android/material/button/MaterialButton;

    .line 98
    .line 99
    sget v1, Lteam/opay/pay/R$string;->osdk_change_email:I

    .line 100
    .line 101
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    sget-object v0, Lx7b;->a:Lx7b;

    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    new-array v1, v1, [Lkotlin/Pair;

    .line 112
    .line 113
    const-string v2, "change_email_page_show"

    .line 114
    .line 115
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final L(Lteam/opay/pay/account/verify/VerifyEvent;)V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager;->g()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    sget-object v0, Lsna;->a:Lsna;

    .line 18
    .line 19
    invoke-virtual {v0}, Lsna;->h()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->h()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-lez v0, :cond_1

    .line 37
    .line 38
    sget-object v0, Lsna;->a:Lsna;

    .line 39
    .line 40
    invoke-virtual {v0}, Lsna;->f()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Lsna;->a:Lsna;

    .line 46
    .line 47
    invoke-virtual {v0}, Lsna;->g()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    sget-object v1, Lteam/opay/pay/email/EmailModifyActivity;->h:Lteam/opay/pay/email/EmailModifyActivity$Companion;

    .line 52
    .line 53
    invoke-virtual {v1, p0, v0, p1}, Lteam/opay/pay/email/EmailModifyActivity$Companion;->b(Landroid/app/Activity;Ljava/lang/String;Lteam/opay/pay/account/verify/VerifyEvent;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/pay/email/Hilt_ModifyEmailTipsActivity;->onDestroy()V

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

.method public final onEvent(Lteam/opay/pay/account/verify/VerifyEvent;)V
    .locals 3
    .param p1    # Lteam/opay/pay/account/verify/VerifyEvent;
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
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getModifyType()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_EMAIL:Lteam/opay/pay/account/verify/ModifyType;

    .line 11
    .line 12
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getRequestCode()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "detail_modify_email"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    sget-object v0, Lcom/opay/team/OPayAnalytics;->b:Lcom/opay/team/OPayAnalytics$Companion;

    .line 35
    .line 36
    const-string v1, "email"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/opay/team/OPayAnalytics$Companion;->a(Ljava/lang/String;)Lcom/opay/team/OPayAnalytics;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    new-array v1, v1, [Lkotlin/Pair;

    .line 46
    .line 47
    const-string v2, "input_new_email"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/opay/team/OPayAnalytics;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->L(Lteam/opay/pay/account/verify/VerifyEvent;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->BIND_EMAIL:Lteam/opay/pay/account/verify/ModifyType;

    .line 60
    .line 61
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getRequestCode()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "detail_bind_email"

    .line 76
    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->L(Lteam/opay/pay/account/verify/VerifyEvent;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_0
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lteam/opay/core/account/AccountInfoManager;->g()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->G()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->I()V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/email/ModifyEmailTipsActivity;->F()Lof;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p1, p1, Lof;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 39
    .line 40
    new-instance v0, Lgb9;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lgb9;-><init>(Lteam/opay/pay/email/ModifyEmailTipsActivity;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
