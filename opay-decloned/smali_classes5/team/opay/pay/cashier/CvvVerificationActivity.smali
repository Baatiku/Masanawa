.class public final Lteam/opay/pay/cashier/CvvVerificationActivity;
.super Lteam/opay/pay/cashier/Hilt_CvvVerificationActivity;
.source "CvvVerificationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/CvvVerificationActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\u000c\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0003R\u001b\u0010\u0014\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lteam/opay/pay/cashier/CvvVerificationActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "",
        "O",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onBackPressed",
        "F",
        "K",
        "H",
        "N",
        "Luf;",
        "e",
        "Lid8;",
        "G",
        "()Luf;",
        "viewBinding",
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "f",
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "keyBoardHelper",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "g",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "validator",
        "h",
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
.field public static final h:Lteam/opay/pay/cashier/CvvVerificationActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lteam/opay/pay/account/KeyBoardHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/CvvVerificationActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/CvvVerificationActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashier/CvvVerificationActivity;->h:Lteam/opay/pay/cashier/CvvVerificationActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_payment_verification:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/cashier/Hilt_CvvVerificationActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ldz2;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ldz2;-><init>(Lteam/opay/pay/cashier/CvvVerificationActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/cashier/CvvVerificationActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/android/validation/FieldValidation;

    .line 18
    .line 19
    invoke-static {}, Lm7e;->d0()Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v5, 0x4

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    move-object v1, v0

    .line 28
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lteam/opay/pay/cashier/CvvVerificationActivity;->g:Lteam/opay/pay/android/validation/FieldValidation;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/cashier/CvvVerificationActivity;)Luf;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->P(Lteam/opay/pay/cashier/CvvVerificationActivity;)Luf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/cashier/CvvVerificationActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/CvvVerificationActivity;->J(Lteam/opay/pay/cashier/CvvVerificationActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Lteam/opay/pay/cashier/CvvVerificationActivity;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/cashier/CvvVerificationActivity;->I(Lteam/opay/pay/cashier/CvvVerificationActivity;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lteam/opay/pay/cashier/CvvVerificationActivity;Lteam/opay/pay/android/validation/ValidationInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/CvvVerificationActivity;->M(Lteam/opay/pay/cashier/CvvVerificationActivity;Lteam/opay/pay/android/validation/ValidationInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Lteam/opay/pay/cashier/CvvVerificationActivity;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/CvvVerificationActivity;->L(Lteam/opay/pay/cashier/CvvVerificationActivity;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final I(Lteam/opay/pay/cashier/CvvVerificationActivity;Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/BaseActivity;->getResume()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/pay/cashier/CvvVerificationActivity;->f:Lteam/opay/pay/account/KeyBoardHelper;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget-object p2, p2, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 18
    .line 19
    const-string v0, "input"

    .line 20
    .line 21
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lteam/opay/pay/account/KeyBoardHelper;->p(Landroid/widget/EditText;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->N()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public static final J(Lteam/opay/pay/cashier/CvvVerificationActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final L(Lteam/opay/pay/cashier/CvvVerificationActivity;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->O()V

    .line 5
    .line 6
    .line 7
    :cond_0
    const/4 p0, 0x1

    .line 8
    return p0
.end method

.method public static final M(Lteam/opay/pay/cashier/CvvVerificationActivity;Lteam/opay/pay/android/validation/ValidationInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Luf;->k:Landroid/widget/Button;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/pay/android/validation/ValidationInfo;->d()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final O()V
    .locals 3

    .line 1
    sget-object v0, Ltfb;->a:Ltfb;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "cvv_verification_complete_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/cashier/CvvVerificationActivity;->f:Lteam/opay/pay/account/KeyBoardHelper;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 16
    .line 17
    .line 18
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v1, v1, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "team.opay.pay.EXTRA_CVV"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v1, -0x1

    .line 44
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static final P(Lteam/opay/pay/cashier/CvvVerificationActivity;)Luf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Luf;->inflate(Landroid/view/LayoutInflater;)Luf;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final F()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Luf;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 6
    .line 7
    sget v1, Lteam/opay/pay/R$string;->cvv_verification_title:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Luf;->d:Landroid/widget/TextView;

    .line 17
    .line 18
    sget v1, Lteam/opay/pay/R$string;->cvv_verification_description:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Luf;->h:Landroid/widget/TextView;

    .line 28
    .line 29
    sget v1, Lteam/opay/pay/R$string;->cvv_verification_label:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 39
    .line 40
    sget v1, Lteam/opay/pay/R$string;->cvv_verification_hint:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v0, v0, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 50
    .line 51
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    .line 52
    .line 53
    const/4 v2, 0x3

    .line 54
    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    new-array v2, v2, [Landroid/text/InputFilter$LengthFilter;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    aput-object v1, v2, v3

    .line 62
    .line 63
    check-cast v2, [Landroid/text/InputFilter;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v0, v0, Luf;->k:Landroid/widget/Button;

    .line 73
    .line 74
    sget v1, Lteam/opay/pay/R$string;->payment_verification_submit_button:I

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v0, v0, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 84
    .line 85
    const-string v1, "input"

    .line 86
    .line 87
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lkmf;->L(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public G()Luf;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/CvvVerificationActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Luf;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 8
    .line 9
    .line 10
    new-instance v0, Lteam/opay/pay/account/KeyBoardHelper;

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v1, v1, Luf;->g:Lt1b;

    .line 17
    .line 18
    iget-object v2, v1, Lt1b;->g:Landroid/inputmethodservice/KeyboardView;

    .line 19
    .line 20
    const-string v1, "keyBoardView"

    .line 21
    .line 22
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v3, v1, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 30
    .line 31
    const-string v1, "input"

    .line 32
    .line 33
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v1, v1, Luf;->g:Lt1b;

    .line 41
    .line 42
    iget-object v4, v1, Lt1b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v1, v1, Luf;->g:Lt1b;

    .line 49
    .line 50
    iget-object v5, v1, Lt1b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v6, v1, Luf;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 57
    .line 58
    const/16 v9, 0x60

    .line 59
    .line 60
    const/4 v10, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    move-object v1, v0

    .line 64
    invoke-direct/range {v1 .. v10}, Lteam/opay/pay/account/KeyBoardHelper;-><init>(Landroid/inputmethodservice/KeyboardView;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLt1b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lteam/opay/pay/cashier/CvvVerificationActivity;->f:Lteam/opay/pay/account/KeyBoardHelper;

    .line 68
    .line 69
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v0, v0, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 74
    .line 75
    new-instance v1, Lhz2;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lhz2;-><init>(Lteam/opay/pay/cashier/CvvVerificationActivity;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final K()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 16
    .line 17
    new-instance v1, Lfz2;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lfz2;-><init>(Lteam/opay/pay/cashier/CvvVerificationActivity;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/KeyboardEditText;->d(Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lteam/opay/pay/cashier/CvvVerificationActivity;->g:Lteam/opay/pay/android/validation/FieldValidation;

    .line 26
    .line 27
    new-instance v7, Lteam/opay/pay/android/validation/ValidationDecorator;

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, v1, Luf;->h:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v3, v1, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 40
    .line 41
    const-string v1, "input"

    .line 42
    .line 43
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x4

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    move-object v1, v7

    .line 50
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/android/validation/ValidationDecorator;-><init>(Landroid/widget/TextView;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/view/View;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0, v7}, Lteam/opay/pay/android/validation/FieldValidation;->g(Lag8;Lteam/opay/pay/android/validation/ValidationDecorator;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lteam/opay/pay/cashier/CvvVerificationActivity;->g:Lteam/opay/pay/android/validation/FieldValidation;

    .line 57
    .line 58
    invoke-virtual {v0}, Lteam/opay/pay/android/validation/FieldValidation;->e()Landroidx/lifecycle/LiveData;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lgz2;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lgz2;-><init>(Lteam/opay/pay/cashier/CvvVerificationActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/CvvVerificationActivity;->f:Lteam/opay/pay/account/KeyBoardHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->o()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->s()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    sget-object v0, Ltfb;->a:Ltfb;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "cvv_verification_back_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lteam/opay/core/android/InjectableActivity;->onBackPressed()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/cashier/Hilt_CvvVerificationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->F()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->H()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->K()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/cashier/CvvVerificationActivity;->G()Luf;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Luf;->k:Landroid/widget/Button;

    .line 20
    .line 21
    new-instance v0, Lez2;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lez2;-><init>(Lteam/opay/pay/cashier/CvvVerificationActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Ltfb;->a:Ltfb;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    new-array v0, v0, [Lkotlin/Pair;

    .line 33
    .line 34
    const-string v1, "cvv_verification_show"

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
