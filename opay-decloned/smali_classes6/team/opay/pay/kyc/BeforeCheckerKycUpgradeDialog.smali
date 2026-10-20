.class public final Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "BeforeCheckerKycUpgradeDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Lba3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001d\u0010\u0011\u001a\u0004\u0018\u00010\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lba3;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/opay/KycUpgradeButtonConfig;",
        "j",
        "Lid8;",
        "Q",
        "()Lteam/opay/pay/opay/KycUpgradeButtonConfig;",
        "buttonConfig",
        "k",
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
.field public static final k:Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->k:Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$1;->INSTANCE:Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lwy0;

    .line 7
    .line 8
    invoke-direct {v0}, Lwy0;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->j:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic M()Lteam/opay/pay/opay/KycUpgradeButtonConfig;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->P()Lteam/opay/pay/opay/KycUpgradeButtonConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic N(ZLteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->R(ZLteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->S(Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final P()Lteam/opay/pay/opay/KycUpgradeButtonConfig;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/opay/KycUpgradeButtonConfig;->Companion:Lteam/opay/pay/opay/KycUpgradeButtonConfig$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/opay/KycUpgradeButtonConfig$Companion;->a()Lteam/opay/pay/opay/KycUpgradeButtonConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private final Q()Lteam/opay/pay/opay/KycUpgradeButtonConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/opay/KycUpgradeButtonConfig;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final R(ZLteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;)Lkotlin/Unit;
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
    const-string v3, "transfer_kyc_pop_confirm_click"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const-string v2, "key_service_type"

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p0, v0

    .line 28
    :goto_0
    if-nez p0, :cond_1

    .line 29
    .line 30
    const-string p0, ""

    .line 31
    .line 32
    :cond_1
    const/4 v2, 0x1

    .line 33
    invoke-static {v1, p0, v2, v0}, Lpib;->d(ZLjava/lang/String;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
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
    invoke-super {p0, p1, p2}, Lteam/opay/core/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const-string v1, "key_dialog_message"

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p2, v0

    .line 24
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string v3, "key_can_upgrade"

    .line 32
    .line 33
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    const-string v4, "key_confirm_text"

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move-object v3, v0

    .line 53
    :goto_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lba3;

    .line 58
    .line 59
    iget-object v4, v4, Lba3;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    const-string p2, "cancel"

    .line 65
    .line 66
    if-eqz v1, :cond_d

    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Lba3;

    .line 73
    .line 74
    iget-object v4, v4, Lba3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 75
    .line 76
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v4}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_c

    .line 89
    .line 90
    :cond_3
    new-instance p2, Lteam/opay/core/settings/SettingsStorage;

    .line 91
    .line 92
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->getAppContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-direct {p2, v3}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Lteam/opay/core/settings/SettingsStorage;->I()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    if-eqz p2, :cond_b

    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    const-string v4, ""

    .line 110
    .line 111
    packed-switch v3, :pswitch_data_0

    .line 112
    .line 113
    .line 114
    goto :goto_8

    .line 115
    :pswitch_0
    const-string v3, "2"

    .line 116
    .line 117
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-nez p2, :cond_4

    .line 122
    .line 123
    goto :goto_8

    .line 124
    :cond_4
    invoke-direct {p0}, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->Q()Lteam/opay/pay/opay/KycUpgradeButtonConfig;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    if-eqz p2, :cond_5

    .line 129
    .line 130
    invoke-virtual {p2}, Lteam/opay/pay/opay/KycUpgradeButtonConfig;->getKyc2Button()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    goto :goto_3

    .line 135
    :cond_5
    move-object p2, v0

    .line 136
    :goto_3
    if-nez p2, :cond_6

    .line 137
    .line 138
    :goto_4
    move-object v3, v4

    .line 139
    goto :goto_9

    .line 140
    :cond_6
    :goto_5
    move-object v3, p2

    .line 141
    goto :goto_9

    .line 142
    :pswitch_1
    const-string v3, "1"

    .line 143
    .line 144
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-nez p2, :cond_7

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_7
    invoke-direct {p0}, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->Q()Lteam/opay/pay/opay/KycUpgradeButtonConfig;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    if-eqz p2, :cond_8

    .line 156
    .line 157
    invoke-virtual {p2}, Lteam/opay/pay/opay/KycUpgradeButtonConfig;->getKyc1Button()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    goto :goto_6

    .line 162
    :cond_8
    move-object p2, v0

    .line 163
    :goto_6
    if-nez p2, :cond_6

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :pswitch_2
    const-string v3, "0"

    .line 167
    .line 168
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    if-nez p2, :cond_9

    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_9
    invoke-direct {p0}, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->Q()Lteam/opay/pay/opay/KycUpgradeButtonConfig;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    if-eqz p2, :cond_a

    .line 180
    .line 181
    invoke-virtual {p2}, Lteam/opay/pay/opay/KycUpgradeButtonConfig;->getKyc0Button()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    goto :goto_7

    .line 186
    :cond_a
    move-object p2, v0

    .line 187
    :goto_7
    if-nez p2, :cond_6

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_b
    :goto_8
    sget p2, Lteam/opay/pay/R$string;->trans_upgrade_tip:I

    .line 191
    .line 192
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    const-string v3, "getString(...)"

    .line 197
    .line 198
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_c
    :goto_9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    check-cast p2, Lba3;

    .line 207
    .line 208
    iget-object p2, p2, Lba3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 209
    .line 210
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    check-cast p2, Lba3;

    .line 218
    .line 219
    iget-object p2, p2, Lba3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 220
    .line 221
    sget v4, Lteam/opay/pay/R$string;->cancel:I

    .line 222
    .line 223
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    goto :goto_a

    .line 231
    :cond_d
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    check-cast v4, Lba3;

    .line 236
    .line 237
    iget-object v4, v4, Lba3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 238
    .line 239
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v4}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    check-cast p2, Lba3;

    .line 250
    .line 251
    iget-object p2, p2, Lba3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 252
    .line 253
    sget v4, Lteam/opay/pay/R$string;->auto_invest_dialog_close:I

    .line 254
    .line 255
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    .line 261
    .line 262
    :goto_a
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    check-cast p2, Lba3;

    .line 267
    .line 268
    iget-object p2, p2, Lba3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 269
    .line 270
    const-string v4, "confirm"

    .line 271
    .line 272
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    new-instance v4, Lxy0;

    .line 276
    .line 277
    invoke-direct {v4, v1, p0}, Lxy0;-><init>(ZLteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;)V

    .line 278
    .line 279
    .line 280
    invoke-static {p2, v4}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    check-cast p2, Lba3;

    .line 288
    .line 289
    iget-object p2, p2, Lba3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 290
    .line 291
    new-instance v1, Lyy0;

    .line 292
    .line 293
    invoke-direct {v1, p0}, Lyy0;-><init>(Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .line 298
    .line 299
    if-eqz v3, :cond_f

    .line 300
    .line 301
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 302
    .line 303
    .line 304
    move-result p2

    .line 305
    if-nez p2, :cond_e

    .line 306
    .line 307
    goto :goto_b

    .line 308
    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 309
    .line 310
    .line 311
    move-result p2

    .line 312
    const/16 v1, 0x9

    .line 313
    .line 314
    if-le p2, v1, :cond_f

    .line 315
    .line 316
    const-string p2, " "

    .line 317
    .line 318
    const/4 v1, 0x2

    .line 319
    invoke-static {v3, p2, v2, v1, v0}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result p2

    .line 323
    if-eqz p2, :cond_f

    .line 324
    .line 325
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 326
    .line 327
    invoke-direct {p2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 328
    .line 329
    .line 330
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 331
    .line 332
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 333
    .line 334
    .line 335
    sget v0, Lteam/opay/pay/R$id;->confirm:I

    .line 336
    .line 337
    const/16 v1, 0x28

    .line 338
    .line 339
    invoke-static {v1}, Ljmf;->d(I)I

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    invoke-static {p2, v0, v2, v3}, Lbn2;->c(Landroidx/constraintlayout/widget/ConstraintSet;III)V

    .line 344
    .line 345
    .line 346
    invoke-static {v1}, Ljmf;->d(I)I

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    invoke-static {p2, v0, v2, v3}, Lbn2;->b(Landroidx/constraintlayout/widget/ConstraintSet;III)V

    .line 351
    .line 352
    .line 353
    sget v3, Lteam/opay/pay/R$id;->desc:I

    .line 354
    .line 355
    const/16 v4, 0x18

    .line 356
    .line 357
    invoke-static {v4}, Ljmf;->d(I)I

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    invoke-static {p2, v0, v3, v4}, Lbn2;->d(Landroidx/constraintlayout/widget/ConstraintSet;III)V

    .line 362
    .line 363
    .line 364
    const/4 v3, -0x1

    .line 365
    invoke-static {p2, v0, v3, v2}, Lbn2;->a(Landroidx/constraintlayout/widget/ConstraintSet;III)V

    .line 366
    .line 367
    .line 368
    sget v3, Lteam/opay/pay/R$id;->cancel:I

    .line 369
    .line 370
    invoke-static {v1}, Ljmf;->d(I)I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    invoke-static {p2, v3, v2, v4}, Lbn2;->c(Landroidx/constraintlayout/widget/ConstraintSet;III)V

    .line 375
    .line 376
    .line 377
    invoke-static {v1}, Ljmf;->d(I)I

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    invoke-static {p2, v3, v2, v1}, Lbn2;->b(Landroidx/constraintlayout/widget/ConstraintSet;III)V

    .line 382
    .line 383
    .line 384
    const/16 v1, 0x14

    .line 385
    .line 386
    invoke-static {v1}, Ljmf;->d(I)I

    .line 387
    .line 388
    .line 389
    move-result v4

    .line 390
    invoke-static {p2, v3, v0, v4}, Lbn2;->d(Landroidx/constraintlayout/widget/ConstraintSet;III)V

    .line 391
    .line 392
    .line 393
    invoke-static {v1}, Ljmf;->d(I)I

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    invoke-static {p2, v3, v2, v0}, Lbn2;->a(Landroidx/constraintlayout/widget/ConstraintSet;III)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 401
    .line 402
    .line 403
    :cond_f
    :goto_b
    return-void

    .line 404
    nop

    .line 405
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
