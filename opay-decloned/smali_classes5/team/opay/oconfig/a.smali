.class public final Lteam/opay/oconfig/a;
.super Ljava/lang/Object;
.source "RemoteConfigApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\u0008\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ#\u0010\n\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\n\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/oconfig/a;",
        "",
        "<init>",
        "()V",
        "T",
        "",
        "key",
        "defaultValue",
        "b",
        "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;",
        "a",
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
.field public static final a:Lteam/opay/oconfig/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/oconfig/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/oconfig/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/oconfig/a;->a:Lteam/opay/oconfig/a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "1"

    .line 11
    .line 12
    const-string v2, "15"

    .line 13
    .line 14
    const-string v3, "true"

    .line 15
    .line 16
    sparse-switch v0, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :sswitch_0
    const-string v0, "is_aa_transfer_free"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_0
    move-object v1, v3

    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :sswitch_1
    const-string v0, "osdk_min_no_remeber_logout"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_1
    const-string v1, "60"

    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :sswitch_2
    const-string v0, "receive_money_auto_invest_dialog_config_data"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_2
    const-string v1, "{  \"is_open\": false, \r\n\"receive_money_auto_invest_dialog_show_max_times\": 0, \"receive_money_auto_invest_dialog_show_interval_days\": 0, \"receive_money_auto_invest_dialog_close_max_times\": 0}"

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :sswitch_3
    const-string v0, "opay-osdk-ussd-code"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_3
    const-string v1, "*955*010#"

    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :sswitch_4
    const-string v0, "home_pay_balance_scheme"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_4

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :cond_4
    const-string v1, "otravel://assetsinfo/entrance"

    .line 87
    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :sswitch_5
    const-string v0, "request_money_contact_transfer_list_top_tips"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_5

    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_5
    const-string v1, "Tips: Request money for free from any phone number"

    .line 101
    .line 102
    goto/16 :goto_1

    .line 103
    .line 104
    :sswitch_6
    const-string v0, "opay_is_open_hybrid"

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_0

    .line 111
    .line 112
    goto/16 :goto_0

    .line 113
    .line 114
    :sswitch_7
    const-string v0, "face_countdown_time"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-nez p1, :cond_6

    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :cond_6
    move-object v1, v2

    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :sswitch_8
    const-string v0, "owealth_withdraw_to_bank_finished_action"

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_7

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :cond_7
    const-string v1, "https://owealthh5.opayweb.com/owealth"

    .line 138
    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    :sswitch_9
    const-string v0, "gp_config_data"

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-nez p1, :cond_8

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_8
    const-string v1, "{\r\n    \"enable_gp_dialog_in_pay_success\": true,\r\n    \"gp_dialog_ensure_max_times\": 5,\r\n    \"gp_dialog_ensure_interval_days\": 15,\r\n    \"gp_dialog_cancel_max_times\": 5,\r\n    \"gp_dialog_cancel_interval_days\": 15\r\n}"

    .line 152
    .line 153
    goto/16 :goto_1

    .line 154
    .line 155
    :sswitch_a
    const-string v0, "opay_cs_live_chat_support_url"

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-nez p1, :cond_9

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_9
    const-string v1, "https://cscenter-nigeria.opayweb.com/chat/h5/v2/index.html?sysnum=e698cb8256814e09a4864662839009e4&channelid=2&source=4"

    .line 166
    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    :sswitch_b
    const-string v0, "account_cashback_link"

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-nez p1, :cond_a

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_a
    const-string v1, "{\r\n\"name\":\"How to use\",\r\n\"link\":\"https://mkt.opayweb.com/proh5?code=1583350422504050690&id=126\"\r\n}"

    .line 180
    .line 181
    goto/16 :goto_1

    .line 182
    .line 183
    :sswitch_c
    const-string v0, "opay_protocol_check_switch"

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-nez p1, :cond_0

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :sswitch_d
    const-string v0, "osdk_pay_enc"

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-nez p1, :cond_b

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_b
    sget-object p1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 204
    .line 205
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-eqz p1, :cond_12

    .line 214
    .line 215
    const-string v1, "0"

    .line 216
    .line 217
    goto/16 :goto_1

    .line 218
    .line 219
    :sswitch_e
    const-string v0, "home_pay_balance"

    .line 220
    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-nez p1, :cond_c

    .line 226
    .line 227
    goto :goto_0

    .line 228
    :cond_c
    const-string v1, "https://opay.ng/user-balance"

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :sswitch_f
    const-string v0, "opay_bank_top_up_limit"

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-nez p1, :cond_d

    .line 238
    .line 239
    goto :goto_0

    .line 240
    :cond_d
    const-string v1, "{\r\n    \"account\": [\r\n        {\r\n            \"cardBin\": \"214\",\r\n            \"min\": \"100\",\r\n            \"max\": \"99999\",\r\n            \"bankName\": \"First City Monument Bank\"\r\n        },\r\n       {\r\n            \"cardBin\": \"011\",\r\n            \"min\": \"50\",\r\n            \"max\": \"99999\",\r\n            \"bankName\": \"First Bank Of Nigeria\"\r\n        },\r\n       {\r\n            \"cardBin\": \"058\",\r\n            \"min\": \"30\",\r\n            \"max\": \"99999\",\r\n            \"bankName\": \"Guaranty Trust Bank\"\r\n        },\r\n       {\r\n            \"cardBin\": \"033\",\r\n            \"min\": \"15\",\r\n            \"max\": \"99999\",\r\n            \"bankName\": \"United Bank For Africa\"\r\n        }\r\n    ]\r\n}"

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :sswitch_10
    const-string v0, "sdk_bind_card_customer_amount"

    .line 244
    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-nez p1, :cond_12

    .line 250
    .line 251
    goto :goto_0

    .line 252
    :sswitch_11
    const-string v0, "opay-osdk-feedback-url"

    .line 253
    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-nez p1, :cond_e

    .line 259
    .line 260
    goto :goto_0

    .line 261
    :cond_e
    const-string v1, "https://opay.ng/feedback"

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :sswitch_12
    const-string v0, "is_request_money_transfer_free"

    .line 265
    .line 266
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-nez p1, :cond_0

    .line 271
    .line 272
    goto :goto_0

    .line 273
    :sswitch_13
    const-string v0, "opa-osdk-tab-requestmoney-switch"

    .line 274
    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-nez p1, :cond_f

    .line 280
    .line 281
    goto :goto_0

    .line 282
    :cond_f
    const-string v1, "{\r\n    \"status\": \"0\",\r\n    \"order\": \"0\"\r\n}"

    .line 283
    .line 284
    goto :goto_1

    .line 285
    :sswitch_14
    const-string v0, "key_home_customer_service_url"

    .line 286
    .line 287
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    if-nez p1, :cond_10

    .line 292
    .line 293
    goto :goto_0

    .line 294
    :cond_10
    const-string v1, "https://opay.ng/feedback-home"

    .line 295
    .line 296
    goto :goto_1

    .line 297
    :sswitch_15
    const-string v0, "aa_auto_invest_dialog_config_data"

    .line 298
    .line 299
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    if-nez p1, :cond_11

    .line 304
    .line 305
    goto :goto_0

    .line 306
    :cond_11
    const-string v1, "{\"is_open\": false,\r\n\"aa_auto_invest_dialog_show_max_times\": 0, \r\n\"aa_auto_invest_dialog_show_interval_days\": 0, \r\n\"aa_auto_invest_dialog_close_max_times\": 0}"

    .line 307
    .line 308
    goto :goto_1

    .line 309
    :sswitch_16
    const-string v0, "sdk_bind_card_agent_amount"

    .line 310
    .line 311
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    if-nez p1, :cond_6

    .line 316
    .line 317
    :goto_0
    move-object v1, p2

    .line 318
    :cond_12
    :goto_1
    if-nez v1, :cond_13

    .line 319
    .line 320
    const/4 v1, 0x0

    .line 321
    :cond_13
    if-nez v1, :cond_14

    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_14
    move-object p2, v1

    .line 325
    :goto_2
    return-object p2

    .line 326
    nop

    .line 327
    :sswitch_data_0
    .sparse-switch
        -0x7e74b23c -> :sswitch_16
        -0x7172d7f7 -> :sswitch_15
        -0x6ac1407c -> :sswitch_14
        -0x6754f39d -> :sswitch_13
        -0x618da244 -> :sswitch_12
        -0x4be9caab -> :sswitch_11
        -0x2b742859 -> :sswitch_10
        -0x2522b302 -> :sswitch_f
        -0x5fb651b -> :sswitch_e
        -0x44cee11 -> :sswitch_d
        0xf676ac -> :sswitch_c
        0x7d853ed -> :sswitch_b
        0xb8ca6a2 -> :sswitch_a
        0x157f3431 -> :sswitch_9
        0x26720eb2 -> :sswitch_8
        0x36ae5e3d -> :sswitch_7
        0x41fa2922 -> :sswitch_6
        0x43de731d -> :sswitch_5
        0x46387c3f -> :sswitch_4
        0x46a6741d -> :sswitch_3
        0x4f03ab45 -> :sswitch_2
        0x66269642 -> :sswitch_1
        0x751986d6 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/oconfig/OpayRemoteConfig;->Companion:Lteam/opay/oconfig/OpayRemoteConfig$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/oconfig/OpayRemoteConfig$Companion;->a()Lteam/opay/oconfig/OpayRemoteConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lteam/opay/oconfig/OpayRemoteConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lca2;->a(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    return-object p2

    .line 29
    :cond_0
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, p1, p2}, Lteam/opay/oconfig/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    instance-of p1, p2, Ljava/lang/String;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lca2;->a(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string p2, "true"

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    invoke-static {p1, p2, v0}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    :goto_0
    move-object p2, v0

    .line 78
    :cond_4
    :goto_1
    return-object p2
.end method
