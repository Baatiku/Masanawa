.class public final Lteam/opay/pay/transfer/MobileTransferActivity;
.super Lteam/opay/pay/transfer/Hilt_MobileTransferActivity;
.source "MobileTransferActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/MobileTransferActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\r\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0008R\u001b\u0010\u0013\u001a\u00020\u000e8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/pay/transfer/MobileTransferActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "E",
        "(Landroid/content/Intent;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onNewIntent",
        "Lnf;",
        "e",
        "Lid8;",
        "D",
        "()Lnf;",
        "viewBinding",
        "Lteam/opay/pay/transfer/MobileTransferShareDataViewModel;",
        "f",
        "C",
        "()Lteam/opay/pay/transfer/MobileTransferShareDataViewModel;",
        "mobileTransferShareDataViewModel",
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
.field public static final g:Lteam/opay/pay/transfer/MobileTransferActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Ljava/lang/String;
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
    new-instance v0, Lteam/opay/pay/transfer/MobileTransferActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/transfer/MobileTransferActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/transfer/MobileTransferActivity;->g:Lteam/opay/pay/transfer/MobileTransferActivity$Companion;

    .line 8
    .line 9
    const-string v0, "phone"

    .line 10
    .line 11
    sput-object v0, Lteam/opay/pay/transfer/MobileTransferActivity;->h:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "accountNumber"

    .line 14
    .line 15
    sput-object v0, Lteam/opay/pay/transfer/MobileTransferActivity;->i:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "amount"

    .line 18
    .line 19
    sput-object v0, Lteam/opay/pay/transfer/MobileTransferActivity;->j:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "autoPay"

    .line 22
    .line 23
    sput-object v0, Lteam/opay/pay/transfer/MobileTransferActivity;->k:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "gateway"

    .line 26
    .line 27
    sput-object v0, Lteam/opay/pay/transfer/MobileTransferActivity;->l:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "returnResult"

    .line 30
    .line 31
    sput-object v0, Lteam/opay/pay/transfer/MobileTransferActivity;->m:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_mobile_transfer:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/transfer/Hilt_MobileTransferActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lla9;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lla9;-><init>(Lteam/opay/pay/transfer/MobileTransferActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/transfer/MobileTransferActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/transfer/MobileTransferActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/transfer/MobileTransferActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/transfer/MobileTransferShareDataViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/transfer/MobileTransferActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/transfer/MobileTransferActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/transfer/MobileTransferActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/transfer/MobileTransferActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/transfer/MobileTransferActivity;->f:Lid8;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/transfer/MobileTransferActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/MobileTransferActivity;->F(Lteam/opay/pay/transfer/MobileTransferActivity;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lteam/opay/pay/transfer/MobileTransferActivity;)Lnf;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/MobileTransferActivity;->G(Lteam/opay/pay/transfer/MobileTransferActivity;)Lnf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final C()Lteam/opay/pay/transfer/MobileTransferShareDataViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/MobileTransferActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transfer/MobileTransferShareDataViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final E(Landroid/content/Intent;)V
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    sget-object v4, Lteam/opay/pay/transfer/MobileTransferActivity;->h:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    const/4 v6, 0x0

    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    invoke-static {v5}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    if-eqz v7, :cond_1

    .line 21
    .line 22
    :cond_0
    move-object v5, v6

    .line 23
    :cond_1
    sget-object v7, Lteam/opay/pay/transfer/MobileTransferActivity;->j:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    if-eqz v8, :cond_2

    .line 30
    .line 31
    invoke-static {v8}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    if-eqz v9, :cond_3

    .line 36
    .line 37
    :cond_2
    move-object v8, v6

    .line 38
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v9, ""

    .line 43
    .line 44
    if-eqz v1, :cond_6

    .line 45
    .line 46
    const-string v10, "businessSceneSource"

    .line 47
    .line 48
    invoke-virtual {v1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    if-eqz v11, :cond_6

    .line 53
    .line 54
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    if-nez v11, :cond_4

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    invoke-virtual {v1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    if-nez v10, :cond_5

    .line 66
    .line 67
    move-object v10, v9

    .line 68
    :cond_5
    move-object/from16 v19, v9

    .line 69
    .line 70
    move-object v15, v10

    .line 71
    goto :goto_2

    .line 72
    :cond_6
    :goto_0
    if-eqz v1, :cond_9

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    if-eqz v10, :cond_9

    .line 79
    .line 80
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-nez v10, :cond_7

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_7
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    if-eqz v10, :cond_9

    .line 92
    .line 93
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    if-nez v10, :cond_8

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_8
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    const-string v11, "transfer"

    .line 105
    .line 106
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-eqz v10, :cond_9

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    const-string v11, "/qrcode"

    .line 117
    .line 118
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    if-eqz v10, :cond_9

    .line 123
    .line 124
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/transfer/MobileTransferActivity;->C()Lteam/opay/pay/transfer/MobileTransferShareDataViewModel;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-virtual {v10, v3}, Lteam/opay/pay/transfer/MobileTransferShareDataViewModel;->t(Z)V

    .line 129
    .line 130
    .line 131
    const-string v10, "QRCode"

    .line 132
    .line 133
    const-string v11, "qrcode"

    .line 134
    .line 135
    move-object v15, v10

    .line 136
    move-object/from16 v19, v11

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_9
    :goto_1
    move-object v15, v6

    .line 140
    move-object/from16 v19, v9

    .line 141
    .line 142
    :goto_2
    if-eqz v1, :cond_e

    .line 143
    .line 144
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    if-eqz v10, :cond_e

    .line 149
    .line 150
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    if-nez v10, :cond_a

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_a
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    if-nez v4, :cond_b

    .line 162
    .line 163
    move-object v4, v9

    .line 164
    :cond_b
    invoke-static {v4}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {v4}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    sget-object v4, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 177
    .line 178
    invoke-virtual {v4}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v4}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-static {v4}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_d

    .line 195
    .line 196
    sget-object v4, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 197
    .line 198
    invoke-virtual {v4}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v4}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    sget v10, Lteam/opay/pay/R$string;->osdk_same_phone_number_tips:I

    .line 207
    .line 208
    if-nez v5, :cond_c

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_c
    move-object v9, v5

    .line 212
    :goto_3
    invoke-static {v9}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    new-array v11, v3, [Ljava/lang/Object;

    .line 217
    .line 218
    aput-object v9, v11, v2

    .line 219
    .line 220
    invoke-static {v10, v11}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    invoke-static {v4, v9}, Lr5g;->d(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 228
    .line 229
    .line 230
    :cond_d
    :goto_4
    move-object/from16 v18, v5

    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_e
    :goto_5
    if-eqz v1, :cond_d

    .line 234
    .line 235
    sget-object v4, Lteam/opay/pay/transfer/MobileTransferActivity;->i:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    if-eqz v10, :cond_d

    .line 242
    .line 243
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 244
    .line 245
    .line 246
    move-result v10

    .line 247
    if-nez v10, :cond_f

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_f
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    if-nez v4, :cond_10

    .line 255
    .line 256
    move-object v4, v9

    .line 257
    :cond_10
    invoke-static {v4}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-static {v4}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    sget-object v4, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 270
    .line 271
    invoke-virtual {v4}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-virtual {v4}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-static {v4}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-eqz v4, :cond_d

    .line 288
    .line 289
    sget-object v4, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 290
    .line 291
    invoke-virtual {v4}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-virtual {v4}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    sget v10, Lteam/opay/pay/R$string;->osdk_same_phone_number_tips:I

    .line 300
    .line 301
    if-nez v5, :cond_11

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_11
    move-object v9, v5

    .line 305
    :goto_6
    invoke-static {v9}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    new-array v11, v3, [Ljava/lang/Object;

    .line 310
    .line 311
    aput-object v9, v11, v2

    .line 312
    .line 313
    invoke-static {v10, v11}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v9

    .line 317
    invoke-static {v4, v9}, Lr5g;->d(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 321
    .line 322
    .line 323
    goto :goto_4

    .line 324
    :goto_7
    if-eqz v1, :cond_13

    .line 325
    .line 326
    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    if-eqz v4, :cond_13

    .line 331
    .line 332
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    if-nez v4, :cond_12

    .line 337
    .line 338
    goto :goto_8

    .line 339
    :cond_12
    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v8

    .line 343
    :cond_13
    :goto_8
    move-object/from16 v33, v8

    .line 344
    .line 345
    const-string v4, "true"

    .line 346
    .line 347
    if-eqz v1, :cond_15

    .line 348
    .line 349
    sget-object v5, Lteam/opay/pay/transfer/MobileTransferActivity;->m:Ljava/lang/String;

    .line 350
    .line 351
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    if-eqz v7, :cond_15

    .line 356
    .line 357
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 358
    .line 359
    .line 360
    move-result v7

    .line 361
    if-nez v7, :cond_14

    .line 362
    .line 363
    goto :goto_9

    .line 364
    :cond_14
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    if-eqz v5, :cond_15

    .line 373
    .line 374
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/transfer/MobileTransferActivity;->C()Lteam/opay/pay/transfer/MobileTransferShareDataViewModel;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    invoke-virtual {v5, v3}, Lteam/opay/pay/transfer/MobileTransferShareDataViewModel;->u(Z)V

    .line 379
    .line 380
    .line 381
    :cond_15
    :goto_9
    if-eqz v1, :cond_16

    .line 382
    .line 383
    sget-object v3, Lteam/opay/pay/transfer/MobileTransferActivity;->k:Ljava/lang/String;

    .line 384
    .line 385
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    if-eqz v3, :cond_16

    .line 390
    .line 391
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    :cond_16
    if-eqz v1, :cond_17

    .line 396
    .line 397
    sget-object v3, Lteam/opay/pay/transfer/MobileTransferActivity;->l:Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    if-eqz v1, :cond_17

    .line 404
    .line 405
    move-object/from16 v40, v1

    .line 406
    .line 407
    goto :goto_a

    .line 408
    :cond_17
    move-object/from16 v40, v6

    .line 409
    .line 410
    :goto_a
    sget-object v12, Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment;->y:Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment$Companion;

    .line 411
    .line 412
    new-instance v13, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 413
    .line 414
    move-object/from16 v16, v13

    .line 415
    .line 416
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 417
    .line 418
    .line 419
    move-result-object v39

    .line 420
    const v42, 0x13efff0

    .line 421
    .line 422
    .line 423
    const/16 v43, 0x0

    .line 424
    .line 425
    const-string v17, ""

    .line 426
    .line 427
    const-string v20, ""

    .line 428
    .line 429
    const/16 v21, 0x0

    .line 430
    .line 431
    const/16 v22, 0x0

    .line 432
    .line 433
    const/16 v23, 0x0

    .line 434
    .line 435
    const/16 v24, 0x0

    .line 436
    .line 437
    const/16 v25, 0x0

    .line 438
    .line 439
    const/16 v26, 0x0

    .line 440
    .line 441
    const/16 v27, 0x0

    .line 442
    .line 443
    const/16 v28, 0x0

    .line 444
    .line 445
    const/16 v29, 0x0

    .line 446
    .line 447
    const/16 v30, 0x0

    .line 448
    .line 449
    const/16 v31, 0x0

    .line 450
    .line 451
    const/16 v32, 0x0

    .line 452
    .line 453
    const/16 v34, 0x0

    .line 454
    .line 455
    const/16 v35, 0x0

    .line 456
    .line 457
    const/16 v36, 0x0

    .line 458
    .line 459
    const/16 v37, 0x0

    .line 460
    .line 461
    const/16 v38, 0x0

    .line 462
    .line 463
    const/16 v41, 0x0

    .line 464
    .line 465
    invoke-direct/range {v16 .. v43}, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/core/api/graphql/StampDutyInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 466
    .line 467
    .line 468
    const/16 v17, 0xa

    .line 469
    .line 470
    const/16 v18, 0x0

    .line 471
    .line 472
    const/4 v14, 0x0

    .line 473
    const/16 v16, 0x0

    .line 474
    .line 475
    invoke-static/range {v12 .. v18}, Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment$Companion;->b(Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment$Companion;Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;ZLjava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-static {v0, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 480
    .line 481
    .line 482
    sget-object v1, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 483
    .line 484
    new-instance v2, Lteam/opay/pay/transfer/MobileTransferActivity$a;

    .line 485
    .line 486
    invoke-direct {v2, v0}, Lteam/opay/pay/transfer/MobileTransferActivity$a;-><init>(Lteam/opay/pay/transfer/MobileTransferActivity;)V

    .line 487
    .line 488
    .line 489
    const-string v3, "close_from_contact_transfer_dispatch"

    .line 490
    .line 491
    invoke-virtual {v1, v0, v3, v2}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 492
    .line 493
    .line 494
    return-void
.end method

.method public static final F(Lteam/opay/pay/transfer/MobileTransferActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static final G(Lteam/opay/pay/transfer/MobileTransferActivity;)Lnf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lnf;->inflate(Landroid/view/LayoutInflater;)Lnf;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public D()Lnf;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/MobileTransferActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnf;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/MobileTransferActivity;->D()Lnf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/transfer/Hilt_MobileTransferActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/transfer/MobileTransferActivity;->C()Lteam/opay/pay/transfer/MobileTransferShareDataViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lteam/opay/pay/transfer/MobileTransferShareDataViewModel;->r()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Lma9;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lma9;-><init>(Lteam/opay/pay/transfer/MobileTransferActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "getIntent(...)"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lteam/opay/pay/transfer/MobileTransferActivity;->E(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/pay/transfer/MobileTransferActivity;->E(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
