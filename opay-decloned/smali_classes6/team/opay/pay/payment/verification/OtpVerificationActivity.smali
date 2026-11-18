.class public final Lteam/opay/pay/payment/verification/OtpVerificationActivity;
.super Lteam/opay/pay/payment/verification/Hilt_OtpVerificationActivity;
.source "OtpVerificationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/verification/OtpVerificationActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0019\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0013\u001a\u00020\u000e8TX\u0094\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u00148\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/pay/payment/verification/OtpVerificationActivity;",
        "Lteam/opay/pay/payment/verification/PaymentVerificationActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onBackPressed",
        "",
        "otpResendInterval",
        "e0",
        "(Ljava/lang/String;)V",
        "Lteam/opay/pay/payment/verification/OtpVerificationViewModel;",
        "j",
        "Lid8;",
        "d0",
        "()Lteam/opay/pay/payment/verification/OtpVerificationViewModel;",
        "viewModel",
        "",
        "k",
        "I",
        "getDEFAULT",
        "()I",
        "DEFAULT",
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

.field public final k:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/verification/Hilt_OtpVerificationActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lteam/opay/pay/payment/verification/OtpVerificationActivity$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/verification/OtpVerificationActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 10
    .line 11
    const-class v2, Lteam/opay/pay/payment/verification/OtpVerificationViewModel;

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lteam/opay/pay/payment/verification/OtpVerificationActivity$special$$inlined$viewModels$default$2;

    .line 18
    .line 19
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/verification/OtpVerificationActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Lteam/opay/pay/payment/verification/OtpVerificationActivity$special$$inlined$viewModels$default$3;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/verification/OtpVerificationActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lteam/opay/pay/payment/verification/OtpVerificationActivity;->j:Lid8;

    .line 32
    .line 33
    const/16 v0, 0x3c

    .line 34
    .line 35
    iput v0, p0, Lteam/opay/pay/payment/verification/OtpVerificationActivity;->k:I

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic b0(Lteam/opay/pay/payment/verification/OtpVerificationActivity;Lteam/opay/core/android/arch/Resource;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/verification/OtpVerificationActivity;->g0(Lteam/opay/pay/payment/verification/OtpVerificationActivity;Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lteam/opay/pay/payment/verification/OtpVerificationActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/verification/OtpVerificationActivity;->f0(Lteam/opay/pay/payment/verification/OtpVerificationActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final f0(Lteam/opay/pay/payment/verification/OtpVerificationActivity;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/OtpVerificationActivity;->d0()Lteam/opay/pay/payment/verification/OtpVerificationViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/payment/verification/OtpVerificationViewModel;->D()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Lv2b;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lv2b;-><init>(Lteam/opay/pay/payment/verification/OtpVerificationActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lcom/opay/team/a;->a:Lcom/opay/team/a;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    new-array p1, p1, [Lkotlin/Pair;

    .line 21
    .line 22
    const-string v0, "otp_verification_resend_click"

    .line 23
    .line 24
    invoke-virtual {p0, v0, p1}, Lcom/opay/team/a;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static final g0(Lteam/opay/pay/payment/verification/OtpVerificationActivity;Lteam/opay/core/android/arch/Resource;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lteam/opay/pay/payment/verification/OtpVerificationActivity$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x3

    .line 20
    if-ne v0, p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 24
    .line 25
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    const-string p1, ""

    .line 36
    .line 37
    :cond_2
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/OtpVerificationActivity;->d0()Lteam/opay/pay/payment/verification/OtpVerificationViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d0()Lteam/opay/pay/payment/verification/OtpVerificationViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/OtpVerificationActivity;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/verification/OtpVerificationViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final e0(Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    sget-object v0, Lcom/opay/team/a;->a:Lcom/opay/team/a;

    .line 11
    .line 12
    const-string v1, "otp_resend_show"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    new-array v3, v2, [Lkotlin/Pair;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v3}, Lcom/opay/team/a;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    iget v0, p0, Lteam/opay/pay/payment/verification/OtpVerificationActivity;->k:I

    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v1, v1, Luf;->c:Lteam/opay/pay/payment/CountDownButton;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lteam/opay/pay/payment/CountDownButton;->setCountDownTime(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v0, v0, Luf;->c:Lteam/opay/pay/payment/CountDownButton;

    .line 41
    .line 42
    const-string v1, "btCountDown"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    :cond_1
    const/4 v2, 0x1

    .line 56
    :cond_2
    invoke-static {v0, v2}, Lteam/opay/core/android/ViewKt;->f(Landroid/view/View;Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p1, p1, Luf;->c:Lteam/opay/pay/payment/CountDownButton;

    .line 64
    .line 65
    new-instance v0, Lu2b;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lu2b;-><init>(Lteam/opay/pay/payment/verification/OtpVerificationActivity;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/CountDownButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "otp_verification_back_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->onBackPressed()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/payment/verification/Hilt_OtpVerificationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "team.opay.pay.EXTRA_OTPRESEND_INTERVAL"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/verification/OtpVerificationActivity;->e0(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
