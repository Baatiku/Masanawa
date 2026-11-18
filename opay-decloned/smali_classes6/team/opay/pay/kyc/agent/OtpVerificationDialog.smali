.class public final Lteam/opay/pay/kyc/agent/OtpVerificationDialog;
.super Landroid/app/Dialog;
.source "AgentUpgradeDocumentActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/pay/kyc/agent/OtpVerificationDialog;",
        "Landroid/app/Dialog;",
        "Lteam/opay/pay/android/BaseActivity;",
        "activity",
        "Lkotlin/Function1;",
        "",
        "",
        "submitAction",
        "Lkotlin/Function0;",
        "abortAction",
        "<init>",
        "(Lteam/opay/pay/android/BaseActivity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V",
        "message",
        "i",
        "(Ljava/lang/String;)V",
        "Ltd3;",
        "a",
        "Ltd3;",
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
.field public final a:Ltd3;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/android/BaseActivity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 17
    .param p1    # Lteam/opay/pay/android/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/android/BaseActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "activity"

    .line 10
    .line 11
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "submitAction"

    .line 15
    .line 16
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v4, "abortAction"

    .line 20
    .line 21
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget v4, Lteam/opay/pay/R$style;->DialogOtpVerify:I

    .line 25
    .line 26
    invoke-direct {v0, v1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    sget v5, Lteam/opay/pay/R$layout;->dialog_otp:I

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Ltd3;->bind(Landroid/view/View;)Ltd3;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iput-object v5, v0, Lteam/opay/pay/kyc/agent/OtpVerificationDialog;->a:Ltd3;

    .line 46
    .line 47
    invoke-virtual {v5}, Ltd3;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    sget v8, Lteam/opay/pay/R$string;->onboarding_ussd_code_for_otp:I

    .line 59
    .line 60
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const-string v8, "getString(...)"

    .line 65
    .line 66
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v8, v5, Ltd3;->g:Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    sget v9, Lteam/opay/pay/R$string;->ussd_otp_information:I

    .line 76
    .line 77
    const/4 v10, 0x1

    .line 78
    new-array v11, v10, [Ljava/lang/Object;

    .line 79
    .line 80
    aput-object v6, v11, v7

    .line 81
    .line 82
    invoke-virtual {v4, v9, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    new-instance v4, Lteam/opay/pay/android/validation/FieldValidation;

    .line 90
    .line 91
    invoke-static {}, Lm7e;->c0()Lkotlin/jvm/functions/Function1;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    const/4 v15, 0x4

    .line 96
    const/16 v16, 0x0

    .line 97
    .line 98
    const/4 v12, 0x1

    .line 99
    const/4 v14, 0x0

    .line 100
    move-object v11, v4

    .line 101
    invoke-direct/range {v11 .. v16}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    .line 103
    .line 104
    new-instance v6, Lteam/opay/pay/android/validation/ValidationDecorator;

    .line 105
    .line 106
    iget-object v8, v5, Ltd3;->c:Lteam/opay/pay/android/views/DetailInputText;

    .line 107
    .line 108
    const-string v9, "inputOtp"

    .line 109
    .line 110
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v6, v8}, Lteam/opay/pay/android/validation/ValidationDecorator;-><init>(Lteam/opay/pay/android/views/DetailInputText;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v1, v6}, Lteam/opay/pay/android/validation/FieldValidation;->g(Lag8;Lteam/opay/pay/android/validation/ValidationDecorator;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Lteam/opay/pay/android/validation/FieldValidation;->e()Landroidx/lifecycle/LiveData;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    new-instance v6, Lx2b;

    .line 124
    .line 125
    invoke-direct {v6, v0}, Lx2b;-><init>(Lteam/opay/pay/kyc/agent/OtpVerificationDialog;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v1, v6}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 129
    .line 130
    .line 131
    iget-object v4, v5, Ltd3;->c:Lteam/opay/pay/android/views/DetailInputText;

    .line 132
    .line 133
    invoke-virtual {v4}, Lteam/opay/pay/android/views/DetailInputText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    sget v6, Lteam/opay/pay/R$string;->numbers_only_pattern:I

    .line 138
    .line 139
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-static {v6}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/AppCompatEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 151
    .line 152
    .line 153
    iget-object v4, v5, Ltd3;->b:Landroid/widget/TextView;

    .line 154
    .line 155
    const-string v6, "cancel"

    .line 156
    .line 157
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance v6, Ly2b;

    .line 161
    .line 162
    invoke-direct {v6, v0, v3, v1}, Ly2b;-><init>(Lteam/opay/pay/kyc/agent/OtpVerificationDialog;Lkotlin/jvm/functions/Function0;Lteam/opay/pay/android/BaseActivity;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v4, v6}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 166
    .line 167
    .line 168
    iget-object v3, v5, Ltd3;->i:Landroid/widget/Button;

    .line 169
    .line 170
    const-string v4, "submitOtp"

    .line 171
    .line 172
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance v4, Lz2b;

    .line 176
    .line 177
    invoke-direct {v4, v0, v2, v1}, Lz2b;-><init>(Lteam/opay/pay/kyc/agent/OtpVerificationDialog;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/android/BaseActivity;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v3, v4}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 181
    .line 182
    .line 183
    iget-object v2, v5, Ltd3;->c:Lteam/opay/pay/android/views/DetailInputText;

    .line 184
    .line 185
    invoke-virtual {v2}, Lteam/opay/pay/android/views/DetailInputText;->getInfoText()Landroidx/appcompat/widget/AppCompatTextView;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-static {v2}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 190
    .line 191
    .line 192
    new-instance v2, La3b;

    .line 193
    .line 194
    invoke-direct {v2, v1}, La3b;-><init>(Lteam/opay/pay/android/BaseActivity;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    if-eqz v1, :cond_0

    .line 205
    .line 206
    const/4 v2, 0x3

    .line 207
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 208
    .line 209
    .line 210
    :cond_0
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/kyc/agent/OtpVerificationDialog;Lkotlin/jvm/functions/Function0;Lteam/opay/pay/android/BaseActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/agent/OtpVerificationDialog;->g(Lteam/opay/pay/kyc/agent/OtpVerificationDialog;Lkotlin/jvm/functions/Function0;Lteam/opay/pay/android/BaseActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/kyc/agent/OtpVerificationDialog;Lteam/opay/pay/android/validation/ValidationInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/agent/OtpVerificationDialog;->f(Lteam/opay/pay/kyc/agent/OtpVerificationDialog;Lteam/opay/pay/android/validation/ValidationInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/kyc/agent/OtpVerificationDialog;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/android/BaseActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/agent/OtpVerificationDialog;->h(Lteam/opay/pay/kyc/agent/OtpVerificationDialog;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/android/BaseActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/pay/android/BaseActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/agent/OtpVerificationDialog;->e(Lteam/opay/pay/android/BaseActivity;Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final e(Lteam/opay/pay/android/BaseActivity;Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    const-string p1, "input_method"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    .line 8
    .line 9
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static final f(Lteam/opay/pay/kyc/agent/OtpVerificationDialog;Lteam/opay/pay/android/validation/ValidationInfo;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lteam/opay/pay/kyc/agent/OtpVerificationDialog;->a:Ltd3;

    .line 5
    .line 6
    iget-object p0, p0, Ltd3;->i:Landroid/widget/Button;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/android/validation/ValidationInfo;->d()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final g(Lteam/opay/pay/kyc/agent/OtpVerificationDialog;Lkotlin/jvm/functions/Function0;Lteam/opay/pay/android/BaseActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lkmf;->e(Landroid/app/Activity;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final h(Lteam/opay/pay/kyc/agent/OtpVerificationDialog;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/android/BaseActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lteam/opay/pay/kyc/agent/OtpVerificationDialog;->a:Ltd3;

    .line 5
    .line 6
    iget-object p0, p0, Ltd3;->c:Lteam/opay/pay/android/views/DetailInputText;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/android/views/DetailInputText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lkmf;->e(Landroid/app/Activity;)Lkotlin/Unit;

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method


# virtual methods
.method public final i(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/kyc/agent/OtpVerificationDialog;->a:Ltd3;

    .line 7
    .line 8
    iget-object v0, v0, Ltd3;->f:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
