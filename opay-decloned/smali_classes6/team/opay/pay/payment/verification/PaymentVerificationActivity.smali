.class public abstract Lteam/opay/pay/payment/verification/PaymentVerificationActivity;
.super Lteam/opay/pay/android/BaseActivity;
.source "PaymentVerificationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/verification/PaymentVerificationActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000 +2\u00020\u0001:\u0001,B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u000f\u0010\u0008\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0019\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u0019\u0010\u0011\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00188VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u001b\u0010&\u001a\u00020\"8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u001a\u001a\u0004\u0008$\u0010%R\u0014\u0010*\u001a\u00020\'8$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lteam/opay/pay/payment/verification/PaymentVerificationActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "",
        "I",
        "V",
        "P",
        "Y",
        "Z",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onBackPressed",
        "Lteam/opay/pay/payment/verification/VerificationState;",
        "state",
        "J",
        "(Lteam/opay/pay/payment/verification/VerificationState;)V",
        "",
        "success",
        "cancel",
        "K",
        "(ZZ)V",
        "Luf;",
        "a",
        "Lid8;",
        "N",
        "()Luf;",
        "viewBinding",
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "b",
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "keyBoardHelper",
        "Lteam/opay/pay/cashier/tobepaid/PaidStorage;",
        "c",
        "M",
        "()Lteam/opay/pay/cashier/tobepaid/PaidStorage;",
        "paidStorage",
        "Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;",
        "O",
        "()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;",
        "viewModel",
        "d",
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
.field public static final d:Lteam/opay/pay/payment/verification/PaymentVerificationActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:I


# instance fields
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lteam/opay/pay/account/KeyBoardHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/verification/PaymentVerificationActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->d:Lteam/opay/pay/payment/verification/PaymentVerificationActivity$Companion;

    .line 8
    .line 9
    sget v0, Lteam/opay/pay/R$string;->payment_verification_submit_button:I

    .line 10
    .line 11
    sput v0, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->e:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_payment_verification:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/android/BaseActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lphb;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lphb;-><init>(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->a:Lid8;

    .line 16
    .line 17
    new-instance v0, Lqhb;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lqhb;-><init>(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->c:Lid8;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;)Lteam/opay/pay/cashier/tobepaid/PaidStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->U(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;)Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;)Luf;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->a0(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;)Luf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->Q(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->S(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;Lteam/opay/pay/android/validation/ValidationInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->X(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;Lteam/opay/pay/android/validation/ValidationInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;Lteam/opay/pay/payment/verification/VerificationState;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->T(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;Lteam/opay/pay/payment/verification/VerificationState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->R(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->W(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final I()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Luf;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->r()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;->d()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Luf;->d:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->r()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;->a()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, Luf;->h:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->r()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;->c()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v0, v0, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 69
    .line 70
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->r()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;->b()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public static synthetic L(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;ZZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->K(ZZ)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: finishWithResult"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method private final P()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

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
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

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
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

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
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

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
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

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
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

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
    iput-object v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->b:Lteam/opay/pay/account/KeyBoardHelper;

    .line 68
    .line 69
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v0, v0, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 74
    .line 75
    new-instance v1, Lwhb;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lwhb;-><init>(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public static final Q(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;Landroid/view/View;Z)V
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
    iget-object p1, p0, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->b:Lteam/opay/pay/account/KeyBoardHelper;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

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
    invoke-direct {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->Y()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public static final R(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lloa;->b(Landroid/app/Activity;)Lteam/opay/pay/android/OpayApplication;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/android/OpayApplication;->getAnalytics()Lteam/opay/pay/analytics/AnalyticsBackend;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lteam/opay/pay/analytics/AnalyticsBackend;->m()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->K(ZZ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->M()Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;->a()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p0}, Lloa;->b(Landroid/app/Activity;)Lteam/opay/pay/android/OpayApplication;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/android/OpayApplication;->getAnalytics()Lteam/opay/pay/analytics/AnalyticsBackend;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0}, Lteam/opay/pay/analytics/AnalyticsBackend;->e()V

    .line 36
    .line 37
    .line 38
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->Z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final T(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;Lteam/opay/pay/payment/verification/VerificationState;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->J(Lteam/opay/pay/payment/verification/VerificationState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final U(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;)Lteam/opay/pay/cashier/tobepaid/PaidStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final V()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

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
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 16
    .line 17
    new-instance v1, Luhb;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Luhb;-><init>(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/KeyboardEditText;->d(Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->s()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v1, v1, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/widget/TextView;->getInputType()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    or-int/lit8 v1, v1, 0x10

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v0, v0, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->x()Lteam/opay/pay/android/validation/FieldValidation;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v7, Lteam/opay/pay/android/validation/ValidationDecorator;

    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v2, v1, Luf;->h:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v3, v1, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 86
    .line 87
    const-string v1, "input"

    .line 88
    .line 89
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 v5, 0x4

    .line 93
    const/4 v6, 0x0

    .line 94
    const/4 v4, 0x0

    .line 95
    move-object v1, v7

    .line 96
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/android/validation/ValidationDecorator;-><init>(Landroid/widget/TextView;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/view/View;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p0, v7}, Lteam/opay/pay/android/validation/FieldValidation;->g(Lag8;Lteam/opay/pay/android/validation/ValidationDecorator;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->x()Lteam/opay/pay/android/validation/FieldValidation;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lteam/opay/pay/android/validation/FieldValidation;->e()Landroidx/lifecycle/LiveData;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v1, Lvhb;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Lvhb;-><init>(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public static final W(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->Z()V

    .line 5
    .line 6
    .line 7
    :cond_0
    const/4 p0, 0x1

    .line 8
    return p0
.end method

.method public static final X(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;Lteam/opay/pay/android/validation/ValidationInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

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

.method private final Y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->b:Lteam/opay/pay/account/KeyBoardHelper;

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

.method private final Z()V
    .locals 2

    .line 1
    invoke-static {p0}, Lloa;->b(Landroid/app/Activity;)Lteam/opay/pay/android/OpayApplication;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/android/OpayApplication;->getAnalytics()Lteam/opay/pay/analytics/AnalyticsBackend;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lteam/opay/pay/analytics/AnalyticsBackend;->j()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v1, v1, Luf;->e:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->A(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static final a0(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;)Luf;
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
.method public final J(Lteam/opay/pay/payment/verification/VerificationState;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lteam/opay/pay/payment/verification/VerificationState;->LOADING:Lteam/opay/pay/payment/verification/VerificationState;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v3, v3, Luf;->k:Landroid/widget/Button;

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-object v4, v4, Luf;->k:Landroid/widget/Button;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v4, 0x0

    .line 36
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-object v3, v3, Luf;->i:Landroid/widget/ProgressBar;

    .line 44
    .line 45
    const-string v4, "pinVerificationSubmitButtonProgress"

    .line 46
    .line 47
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 51
    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    move-object v4, v3

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    sget v4, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->e:I

    .line 59
    .line 60
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    :goto_2
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    iget-object v5, v5, Luf;->k:Landroid/widget/Button;

    .line 69
    .line 70
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->b:Lteam/opay/pay/account/KeyBoardHelper;

    .line 76
    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_4
    sget-object v0, Lteam/opay/pay/payment/verification/VerificationState;->IDLE:Lteam/opay/pay/payment/verification/VerificationState;

    .line 84
    .line 85
    if-eq p1, v0, :cond_6

    .line 86
    .line 87
    sget-object v0, Lteam/opay/pay/payment/verification/VerificationState;->SUCCESS:Lteam/opay/pay/payment/verification/VerificationState;

    .line 88
    .line 89
    if-ne p1, v0, :cond_5

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    const/4 v1, 0x0

    .line 93
    :goto_3
    const/4 v0, 0x2

    .line 94
    invoke-static {p0, v1, v2, v0, v3}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->L(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;ZZILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_6
    :goto_4
    sget-object v0, Lteam/opay/pay/payment/verification/VerificationState;->FAILURE:Lteam/opay/pay/payment/verification/VerificationState;

    .line 98
    .line 99
    if-ne p1, v0, :cond_7

    .line 100
    .line 101
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->t()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_7
    return-void
.end method

.method public final K(ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->w()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Lag8;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "team.opay.pay.EXTRA_VERIFICATION_SUCCEEDED"

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string p1, "team.opay.pay.EXTRA_VERIFICATION_CANCELLED"

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->t()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "team.opay.pay.EXTRA_VERIFICATION_MESSAGE"

    .line 36
    .line 37
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->v()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p2, "team.opay.pay.EXTRA_ORDER_ID"

    .line 49
    .line 50
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->u()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const-string p2, "team.opay.pay.EXTRA_ORDER_AMOUNT"

    .line 62
    .line 63
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    const/4 p1, -0x1

    .line 67
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final M()Lteam/opay/pay/cashier/tobepaid/PaidStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public N()Luf;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->a:Lid8;

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

.method public abstract O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-static {p0}, Lloa;->b(Landroid/app/Activity;)Lteam/opay/pay/android/OpayApplication;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/android/OpayApplication;->getAnalytics()Lteam/opay/pay/analytics/AnalyticsBackend;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lteam/opay/pay/analytics/AnalyticsBackend;->q()V

    .line 10
    .line 11
    .line 12
    sget v0, Lteam/opay/pay/R$string;->add_money_cancelling_confirmation:I

    .line 13
    .line 14
    new-instance v1, Lthb;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lthb;-><init>(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0, v1}, Loc3;->b(Landroid/content/Context;ILkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/android/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->I()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->P()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->V()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Luf;->k:Landroid/widget/Button;

    .line 20
    .line 21
    new-instance v0, Lrhb;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lrhb;-><init>(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "team.opay.pay.EXTRA_ORDER_ID"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    const-string v0, ""

    .line 56
    .line 57
    :cond_0
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->z(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->M()Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->v()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/4 v5, 0x4

    .line 73
    const/4 v6, 0x0

    .line 74
    const-string v2, "CARD:"

    .line 75
    .line 76
    const-string v3, ""

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;->e(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    invoke-virtual {p1, v0, v1}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;->f(J)V

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v0, "team.opay.pay.EXTRA_INSTRUCTIONS"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v0, v0, Luf;->f:Landroid/widget/TextView;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->N()Luf;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object p1, p1, Luf;->f:Landroid/widget/TextView;

    .line 126
    .line 127
    const-string v0, "instructions"

    .line 128
    .line 129
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const-string v0, "team.opay.pay.EXTRA_ORDER_AMOUNT"

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_6

    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    instance-of v0, p1, Lteam/opay/core/android/money/MoneyAmount;

    .line 156
    .line 157
    if-eqz v0, :cond_4

    .line 158
    .line 159
    check-cast p1, Lteam/opay/core/android/money/MoneyAmount;

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    const/4 p1, 0x0

    .line 163
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    if-eqz p1, :cond_5

    .line 168
    .line 169
    invoke-virtual {p1}, Lteam/opay/core/android/money/MoneyAmount;->getAmount()Ljava/math/BigDecimal;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    if-eqz p1, :cond_5

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    goto :goto_2

    .line 180
    :cond_5
    const/4 p1, -0x1

    .line 181
    :goto_2
    invoke-virtual {v0, p1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->y(I)V

    .line 182
    .line 183
    .line 184
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->w()Landroidx/lifecycle/LiveData;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    new-instance v0, Lshb;

    .line 193
    .line 194
    invoke-direct {v0, p0}, Lshb;-><init>(Lteam/opay/pay/payment/verification/PaymentVerificationActivity;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 198
    .line 199
    .line 200
    return-void
.end method
