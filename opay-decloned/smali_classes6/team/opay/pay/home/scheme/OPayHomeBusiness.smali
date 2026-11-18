.class public final Lteam/opay/pay/home/scheme/OPayHomeBusiness;
.super Lteam/opay/pay/home/pay/Business;
.source "OPayHomeBusiness.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/pay/home/pay/Business;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/scheme/OPayHomeBusiness$Companion;,
        Lteam/opay/pay/home/scheme/OPayHomeBusiness$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00122\u00020\u00012\u00020\u0002:\u0001\u0012B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J \u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\nH\u0002\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/pay/home/scheme/OPayHomeBusiness;",
        "Lteam/opay/pay/home/pay/Business;",
        "Lteam/opay/KeepNoProguard;",
        "<init>",
        "()V",
        "supportGuest",
        "",
        "context",
        "Landroid/content/Context;",
        "data",
        "Lorg/json/JSONObject;",
        "service",
        "Lteam/opay/pay/home/Service;",
        "open",
        "joinIntentParams",
        "",
        "intent",
        "Landroid/content/Intent;",
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
.field public static final Companion:Lteam/opay/pay/home/scheme/OPayHomeBusiness$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OPAY_ACTION_FROM_KEY:Ljava/lang/String; = "OPayHomeBusiness_action_from_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/scheme/OPayHomeBusiness$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/scheme/OPayHomeBusiness$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/scheme/OPayHomeBusiness;->Companion:Lteam/opay/pay/home/scheme/OPayHomeBusiness$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/pay/Business;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final joinIntentParams(Landroid/content/Intent;Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "action_url"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "Uri.parse(this)"

    .line 17
    .line 18
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string v0, "from"

    .line 52
    .line 53
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const-string v0, "OPayHomeBusiness_action_from_key"

    .line 58
    .line 59
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public open(Landroid/content/Context;Lorg/json/JSONObject;Lteam/opay/pay/home/Service;)Z
    .locals 21
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/home/Service;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    const-string v3, "context"

    .line 8
    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "data"

    .line 13
    .line 14
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v3, "service"

    .line 18
    .line 19
    move-object/from16 v4, p3

    .line 20
    .line 21
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v3, Lteam/opay/pay/home/scheme/OPayHomeBusiness$a;->a:[I

    .line 25
    .line 26
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    aget v3, v3, v4

    .line 31
    .line 32
    const-class v4, Lteam/opay/pay/wallet/ReceiveMoneyActivity;

    .line 33
    .line 34
    const/high16 v5, 0x10000000

    .line 35
    .line 36
    const/16 v20, 0x1

    .line 37
    .line 38
    packed-switch v3, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    return v1

    .line 43
    :pswitch_0
    sget-object v1, Lteam/opay/pay/TransferContactActivity;->g:Lteam/opay/pay/TransferContactActivity$Companion;

    .line 44
    .line 45
    const-string v2, "send_money"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lteam/opay/pay/TransferContactActivity$Companion;->a(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return v20

    .line 51
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    .line 52
    .line 53
    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    instance-of v4, v2, Landroid/app/Activity;

    .line 57
    .line 58
    if-nez v4, :cond_0

    .line 59
    .line 60
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-direct {v0, v3, v1}, Lteam/opay/pay/home/scheme/OPayHomeBusiness;->joinIntentParams(Landroid/content/Intent;Lorg/json/JSONObject;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    .line 68
    .line 69
    return v20

    .line 70
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lsy2;->b(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    return v20

    .line 74
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    .line 75
    .line 76
    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .line 78
    .line 79
    instance-of v3, v2, Landroid/app/Activity;

    .line 80
    .line 81
    if-nez v3, :cond_1

    .line 82
    .line 83
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    return v20

    .line 90
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    .line 91
    .line 92
    const-class v3, Lteam/opay/pay/settings/PaymentInstrumentActivity;

    .line 93
    .line 94
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    .line 99
    .line 100
    return v20

    .line 101
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    .line 102
    .line 103
    const-class v3, Lteam/opay/pay/home/security/SecurityEntranceActivity;

    .line 104
    .line 105
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .line 107
    .line 108
    instance-of v3, v2, Landroid/app/Activity;

    .line 109
    .line 110
    if-nez v3, :cond_2

    .line 111
    .line 112
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    :cond_2
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 116
    .line 117
    .line 118
    return v20

    .line 119
    :pswitch_6
    new-instance v3, Landroid/content/Intent;

    .line 120
    .line 121
    const-class v4, Lteam/opay/pay/wallet/addmoney/AddMoneyItemActivity;

    .line 122
    .line 123
    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .line 125
    .line 126
    instance-of v4, v2, Landroid/app/Activity;

    .line 127
    .line 128
    if-nez v4, :cond_3

    .line 129
    .line 130
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    :cond_3
    invoke-direct {v0, v3, v1}, Lteam/opay/pay/home/scheme/OPayHomeBusiness;->joinIntentParams(Landroid/content/Intent;Lorg/json/JSONObject;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 137
    .line 138
    .line 139
    return v20

    .line 140
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkmf;->G(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    return v20

    .line 144
    :pswitch_8
    sget-object v3, Lteam/opay/pay/cashio/CashInActivity;->E:Lteam/opay/pay/cashio/CashInActivity$Companion;

    .line 145
    .line 146
    move-object v1, v3

    .line 147
    invoke-virtual {v3}, Lteam/opay/pay/cashio/CashInActivity$Companion;->c()I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    const v18, 0xffbe

    .line 152
    .line 153
    .line 154
    const/16 v19, 0x0

    .line 155
    .line 156
    const/4 v3, 0x0

    .line 157
    const/4 v4, 0x0

    .line 158
    const/4 v5, 0x0

    .line 159
    const/4 v6, 0x0

    .line 160
    const/4 v7, 0x0

    .line 161
    const/4 v9, 0x0

    .line 162
    const/4 v10, 0x0

    .line 163
    const/4 v11, 0x0

    .line 164
    const/4 v12, 0x0

    .line 165
    const/4 v13, 0x0

    .line 166
    const/4 v14, 0x0

    .line 167
    const/4 v15, 0x0

    .line 168
    const/16 v16, 0x0

    .line 169
    .line 170
    const/16 v17, 0x0

    .line 171
    .line 172
    move-object/from16 v2, p1

    .line 173
    .line 174
    invoke-static/range {v1 .. v19}, Lteam/opay/pay/cashio/CashInActivity$Companion;->b(Lteam/opay/pay/cashio/CashInActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/core/api/graphql/StampDutyInfo;ILjava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    return v20

    .line 178
    :pswitch_9
    const-string v3, "action_url"

    .line 179
    .line 180
    const-string v4, ""

    .line 181
    .line 182
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-lez v3, :cond_4

    .line 194
    .line 195
    sget-object v3, Lh43;->a:Lh43;

    .line 196
    .line 197
    invoke-virtual {v3, v2, v1}, Lh43;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .line 202
    .line 203
    const-class v3, Lteam/opay/pay/wallet/AddMoneyActivity;

    .line 204
    .line 205
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .line 207
    .line 208
    instance-of v3, v2, Landroid/app/Activity;

    .line 209
    .line 210
    if-nez v3, :cond_5

    .line 211
    .line 212
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    .line 214
    .line 215
    :cond_5
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 216
    .line 217
    .line 218
    :goto_0
    return v20

    .line 219
    :pswitch_a
    sget-object v1, Lteam/opay/pay/transfer/MobileTransferItemActivity;->h:Lteam/opay/pay/transfer/MobileTransferItemActivity$Companion;

    .line 220
    .line 221
    const-string v3, "1"

    .line 222
    .line 223
    invoke-virtual {v1, v2, v3}, Lteam/opay/pay/transfer/MobileTransferItemActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    return v20

    .line 227
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public supportGuest(Landroid/content/Context;Lorg/json/JSONObject;Lteam/opay/pay/home/Service;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/home/Service;
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
    const-string p1, "data"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "service"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Lteam/opay/pay/home/Service;->getAction()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v0, "service: "

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    sget-object p1, Lteam/opay/pay/home/scheme/OPayHomeBusiness$a;->a:[I

    .line 34
    .line 35
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    aget p1, p1, p2

    .line 40
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    goto :goto_0

    .line 46
    :pswitch_0
    const/4 p1, 0x1

    .line 47
    :goto_0
    return p1

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
