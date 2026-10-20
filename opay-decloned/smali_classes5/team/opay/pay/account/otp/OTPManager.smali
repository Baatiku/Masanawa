.class public final Lteam/opay/pay/account/otp/OTPManager;
.super Ljava/lang/Object;
.source "OTPManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/otp/OTPManager$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ+\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00062\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001d\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J5\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J-\u0010\"\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\"\u0010#J\u0019\u0010\'\u001a\u00020&2\u0008\u0008\u0001\u0010%\u001a\u00020$H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J!\u0010)\u001a\u00020&2\u0008\u0008\u0001\u0010%\u001a\u00020$2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008)\u0010*R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u0010.\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010-R\u001b\u00104\u001a\u00020/8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R\"\u00109\u001a\u00020$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u00105\u001a\u0004\u00080\u00106\"\u0004\u00087\u00108\u00a8\u0006:"
    }
    d2 = {
        "Lteam/opay/pay/account/otp/OTPManager;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Lteam/opay/pay/account/otp/OtpChannel;",
        "otpChannel",
        "",
        "f",
        "(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/account/otp/OtpChannel;)V",
        "",
        "msg",
        "fragmentActivity",
        "Lkotlin/Function0;",
        "useWhatsappBlock",
        "l",
        "(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function0;)V",
        "Lcom/google/android/material/button/MaterialButton;",
        "resend",
        "",
        "clickable",
        "i",
        "(Lcom/google/android/material/button/MaterialButton;Z)V",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "noCode",
        "",
        "millisUntilFinished",
        "fromWhatsapp",
        "j",
        "(Landroidx/appcompat/widget/AppCompatTextView;Lteam/opay/pay/account/otp/OtpChannel;ZJZ)V",
        "otpOther",
        "g",
        "(Landroidx/appcompat/widget/AppCompatTextView;Lteam/opay/pay/account/otp/OtpChannel;ZJ)V",
        "",
        "enableColor",
        "Landroid/text/SpannableString;",
        "b",
        "(I)Landroid/text/SpannableString;",
        "e",
        "(IJ)Landroid/text/SpannableString;",
        "a",
        "Landroid/content/Context;",
        "J",
        "otpResendTime",
        "Lteam/opay/core/settings/SettingsStorage;",
        "c",
        "Lid8;",
        "d",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "I",
        "()I",
        "h",
        "(I)V",
        "sendOtpSuccessCount",
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
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:J

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/account/otp/OTPManager;->a:Landroid/content/Context;

    .line 10
    .line 11
    sget-object p1, Lteam/opay/pay/account/otp/OtpConfigTBTest;->Companion:Lteam/opay/pay/account/otp/OtpConfigTBTest$Companion;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/account/otp/OtpConfigTBTest$Companion;->b()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lteam/opay/pay/account/otp/OTPManager;->b:J

    .line 18
    .line 19
    new-instance p1, Ljfa;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljfa;-><init>(Lteam/opay/pay/account/otp/OTPManager;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lteam/opay/pay/account/otp/OTPManager;->c:Lid8;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/account/otp/OTPManager;)Lteam/opay/core/settings/SettingsStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/otp/OTPManager;->k(Lteam/opay/pay/account/otp/OTPManager;)Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final k(Lteam/opay/pay/account/otp/OTPManager;)Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/account/otp/OTPManager;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final b(I)Landroid/text/SpannableString;
    .locals 4

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    .line 2
    .line 3
    const-string v1, " >"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/16 v2, 0x11

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/account/otp/OTPManager;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/otp/OTPManager;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/SettingsStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public final e(IJ)Landroid/text/SpannableString;
    .locals 3

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    int-to-long v1, v1

    .line 6
    div-long/2addr p2, v1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "("

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p2, "s)"

    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    .line 33
    .line 34
    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/16 p3, 0x11

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, p2, v1, p1, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public final f(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/account/otp/OtpChannel;)V
    .locals 7
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/account/otp/OtpChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "otpChannel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_4

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    sget-object v0, Lteam/opay/pay/account/otp/OTPManager$a;->a:[I

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    aget p2, v0, p2

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    const-string v1, "getString(...)"

    .line 35
    .line 36
    const/16 v2, 0x3e8

    .line 37
    .line 38
    if-eq p2, v0, :cond_3

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    if-eq p2, v0, :cond_2

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    if-eq p2, v0, :cond_1

    .line 45
    .line 46
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/account/otp/OTPManager;->d()Lteam/opay/core/settings/SettingsStorage;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget-wide v3, p0, Lteam/opay/pay/account/otp/OTPManager;->b:J

    .line 55
    .line 56
    int-to-long v5, v2

    .line 57
    div-long/2addr v3, v5

    .line 58
    invoke-virtual {p2, v3, v4}, Lteam/opay/core/settings/SettingsStorage;->y0(J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lteam/opay/pay/account/otp/OTPManager;->d()Lteam/opay/core/settings/SettingsStorage;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    invoke-virtual {p2, v2, v3}, Lteam/opay/core/settings/SettingsStorage;->z0(J)V

    .line 70
    .line 71
    .line 72
    sget p2, Lteam/opay/pay/R$string;->osdk_send_otp_whatsapp_success_tips:I

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p1, p2}, Lkmf;->J(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/account/otp/OTPManager;->d()Lteam/opay/core/settings/SettingsStorage;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    iget-wide v3, p0, Lteam/opay/pay/account/otp/OTPManager;->b:J

    .line 90
    .line 91
    int-to-long v5, v2

    .line 92
    div-long/2addr v3, v5

    .line 93
    invoke-virtual {p2, v3, v4}, Lteam/opay/core/settings/SettingsStorage;->o0(J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lteam/opay/pay/account/otp/OTPManager;->d()Lteam/opay/core/settings/SettingsStorage;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v2

    .line 104
    invoke-virtual {p2, v2, v3}, Lteam/opay/core/settings/SettingsStorage;->p0(J)V

    .line 105
    .line 106
    .line 107
    sget p2, Lteam/opay/pay/R$string;->osdk_send_otp_sms_success_tips:I

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1, p2}, Lkmf;->J(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/account/otp/OTPManager;->d()Lteam/opay/core/settings/SettingsStorage;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    iget-wide v3, p0, Lteam/opay/pay/account/otp/OTPManager;->b:J

    .line 125
    .line 126
    int-to-long v5, v2

    .line 127
    div-long/2addr v3, v5

    .line 128
    invoke-virtual {p2, v3, v4}, Lteam/opay/core/settings/SettingsStorage;->w0(J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lteam/opay/pay/account/otp/OTPManager;->d()Lteam/opay/core/settings/SettingsStorage;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v2

    .line 139
    invoke-virtual {p2, v2, v3}, Lteam/opay/core/settings/SettingsStorage;->x0(J)V

    .line 140
    .line 141
    .line 142
    sget p2, Lteam/opay/pay/R$string;->osdk_send_otp_voice_success_tips:I

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {p1, p2}, Lkmf;->J(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_4
    :goto_0
    return-void
.end method

.method public final g(Landroidx/appcompat/widget/AppCompatTextView;Lteam/opay/pay/account/otp/OtpChannel;ZJ)V
    .locals 8
    .param p1    # Landroidx/appcompat/widget/AppCompatTextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/account/otp/OtpChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "otpOther"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "otpChannel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lteam/opay/pay/account/otp/OTPManager;->d:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ge v0, v2, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v4, Landroid/text/SpannableString;

    .line 26
    .line 27
    iget-object v5, p0, Lteam/opay/pay/account/otp/OTPManager;->a:Landroid/content/Context;

    .line 28
    .line 29
    sget v6, Lteam/opay/pay/R$string;->other_get_otp:I

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object v5, p0, Lteam/opay/pay/account/otp/OTPManager;->a:Landroid/content/Context;

    .line 39
    .line 40
    sget v6, Lteam/opay/pay/R$color;->color_00B876:I

    .line 41
    .line 42
    invoke-static {v5, v6}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    iget-object v6, p0, Lteam/opay/pay/account/otp/OTPManager;->a:Landroid/content/Context;

    .line 47
    .line 48
    sget v7, Lteam/opay/pay/R$color;->black_65:I

    .line 49
    .line 50
    invoke-static {v6, v7}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setClickable(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p3}, Landroid/view/View;->setClickable(Z)V

    .line 67
    .line 68
    .line 69
    :goto_1
    if-eqz p3, :cond_2

    .line 70
    .line 71
    move v6, v5

    .line 72
    :cond_2
    sget-object v7, Lteam/opay/pay/account/otp/OTPManager$a;->a:[I

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    aget p2, v7, p2

    .line 79
    .line 80
    const/16 v7, 0x11

    .line 81
    .line 82
    if-eq p2, v2, :cond_7

    .line 83
    .line 84
    const/4 v2, 0x2

    .line 85
    if-eq p2, v2, :cond_3

    .line 86
    .line 87
    const/4 v0, 0x3

    .line 88
    if-eq p2, v0, :cond_7

    .line 89
    .line 90
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    if-eqz v0, :cond_4

    .line 95
    .line 96
    move v6, v5

    .line 97
    :cond_4
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    .line 98
    .line 99
    invoke-direct {p2, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    .line 103
    .line 104
    .line 105
    move-result p4

    .line 106
    invoke-virtual {v4, p2, v1, p4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 110
    .line 111
    .line 112
    if-nez v0, :cond_5

    .line 113
    .line 114
    if-eqz p3, :cond_6

    .line 115
    .line 116
    :cond_5
    invoke-virtual {p0, v5}, Lteam/opay/pay/account/otp/OTPManager;->b(I)Landroid/text/SpannableString;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 121
    .line 122
    .line 123
    :cond_6
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_7
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    .line 127
    .line 128
    invoke-direct {p2, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {v4, p2, v1, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 139
    .line 140
    .line 141
    if-eqz p3, :cond_8

    .line 142
    .line 143
    invoke-virtual {p0, v5}, Lteam/opay/pay/account/otp/OTPManager;->b(I)Landroid/text/SpannableString;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_8
    invoke-virtual {p0, v5, p4, p5}, Lteam/opay/pay/account/otp/OTPManager;->e(IJ)Landroid/text/SpannableString;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 156
    .line 157
    .line 158
    :goto_2
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public final h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/account/otp/OTPManager;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public final i(Lcom/google/android/material/button/MaterialButton;Z)V
    .locals 1
    .param p1    # Lcom/google/android/material/button/MaterialButton;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "resend"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 7
    .line 8
    .line 9
    sget p2, Lteam/opay/pay/R$string;->osdk_resend:I

    .line 10
    .line 11
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final j(Landroidx/appcompat/widget/AppCompatTextView;Lteam/opay/pay/account/otp/OtpChannel;ZJZ)V
    .locals 5
    .param p1    # Landroidx/appcompat/widget/AppCompatTextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/account/otp/OtpChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "noCode"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "otpChannel"

    .line 9
    .line 10
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lteam/opay/pay/account/otp/OTPManager$a;->a:[I

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    aget p2, v2, p2

    .line 20
    .line 21
    if-eq p2, v1, :cond_5

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    const-string v3, " "

    .line 25
    .line 26
    const-string v4, ""

    .line 27
    .line 28
    if-eq p2, v2, :cond_3

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    if-eq p2, v2, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_0
    if-eqz p6, :cond_2

    .line 39
    .line 40
    if-eqz p3, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget p2, Lteam/opay/pay/R$string;->osdk_no_code_otp:I

    .line 44
    .line 45
    invoke-static {p4, p5}, Lmn8;->a(J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    new-array p4, v1, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object p3, p4, v0

    .line 52
    .line 53
    invoke-static {p2, p4}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :goto_0
    sget p2, Lteam/opay/pay/R$string;->osdk_didn_t_receive_code:I

    .line 58
    .line 59
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {p2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    sget p2, Lteam/opay/pay/R$string;->osdk_didn_t_receive_code:I

    .line 90
    .line 91
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    if-eqz p3, :cond_4

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    sget p2, Lteam/opay/pay/R$string;->osdk_no_code_otp:I

    .line 103
    .line 104
    invoke-static {p4, p5}, Lmn8;->a(J)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    new-array p4, v1, [Ljava/lang/Object;

    .line 109
    .line 110
    aput-object p3, p4, v0

    .line 111
    .line 112
    invoke-static {p2, p4}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    :goto_1
    sget p2, Lteam/opay/pay/R$string;->osdk_didn_t_receive_code:I

    .line 117
    .line 118
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    new-instance p3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-static {p2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    sget p2, Lteam/opay/pay/R$string;->osdk_didn_t_receive_code:I

    .line 149
    .line 150
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    :goto_2
    return-void
.end method

.method public final l(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentActivity;
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
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fragmentActivity"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "useWhatsappBlock"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lteam/opay/pay/onboarding/tabs/OtpNotAllowTipFragment;

    .line 17
    .line 18
    invoke-direct {v0}, Lteam/opay/pay/onboarding/tabs/OtpNotAllowTipFragment;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lteam/opay/pay/onboarding/tabs/OtpNotAllowTipFragment;->Q(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Lteam/opay/pay/onboarding/tabs/OtpNotAllowTipFragment;->R(Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p2, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
