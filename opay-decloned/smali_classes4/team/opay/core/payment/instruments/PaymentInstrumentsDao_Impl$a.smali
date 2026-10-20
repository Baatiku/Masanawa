.class public Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl$a;
.super Landroidx/room/EntityInsertAdapter;
.source "PaymentInstrumentsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lteam/opay/core/payment/instruments/RoomPaymentInstrument;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl;


# direct methods
.method public constructor <init>(Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl$a;->a:Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ld2d;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl$a;->e(Ld2d;Lteam/opay/core/payment/instruments/RoomPaymentInstrument;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "INSERT OR ABORT INTO `instruments` (`id`,`type`,`display_name`,`coins_account`,`card_number`,`card_skip_cvv`,`bank_code`,`bank_name`,`bank_account_number`,`bank_first_name`,`bank_last_name`,`mobile_money_provider`,`mobile_money_phone_number`,`card_status`,`card_invalid_reason`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ld2d;Lteam/opay/core/payment/instruments/RoomPaymentInstrument;)V
    .locals 4
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/payment/instruments/RoomPaymentInstrument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl$a;->a:Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl;

    .line 20
    .line 21
    invoke-static {v0}, Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl;->a(Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl;)Lteam/opay/pay/database/RoomTypeConverters;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getType()Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lteam/opay/pay/database/RoomTypeConverters;->i(Lteam/opay/core/api/GraphQL$PaymentInstrumentType;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x2

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getDisplayName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x3

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getDisplayName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_2
    iget-object v0, p0, Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl$a;->a:Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl;

    .line 62
    .line 63
    invoke-static {v0}, Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl;->a(Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl;)Lteam/opay/pay/database/RoomTypeConverters;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->a()Lteam/opay/core/api/GraphQL$CoinsAccount;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lteam/opay/pay/database/RoomTypeConverters;->a(Lteam/opay/core/api/GraphQL$CoinsAccount;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/4 v1, 0x4

    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_3
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getCardNumber()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/4 v1, 0x5

    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_4
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getCardNumber()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_4
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getCardSkipCvv()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/4 v1, 0x6

    .line 108
    int-to-long v2, v0

    .line 109
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getBankCode()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const/4 v1, 0x7

    .line 117
    if-nez v0, :cond_5

    .line 118
    .line 119
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_5
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getBankCode()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :goto_5
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getBankName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const/16 v1, 0x8

    .line 135
    .line 136
    if-nez v0, :cond_6

    .line 137
    .line 138
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 139
    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_6
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getBankName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :goto_6
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getBankAccountNumber()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const/16 v1, 0x9

    .line 154
    .line 155
    if-nez v0, :cond_7

    .line 156
    .line 157
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 158
    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_7
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getBankAccountNumber()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_7
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getBankFirstName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const/16 v1, 0xa

    .line 173
    .line 174
    if-nez v0, :cond_8

    .line 175
    .line 176
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_8
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getBankFirstName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :goto_8
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getBankLastName()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const/16 v1, 0xb

    .line 192
    .line 193
    if-nez v0, :cond_9

    .line 194
    .line 195
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 196
    .line 197
    .line 198
    goto :goto_9

    .line 199
    :cond_9
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getBankLastName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :goto_9
    iget-object v0, p0, Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl$a;->a:Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl;

    .line 207
    .line 208
    invoke-static {v0}, Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl;->a(Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl;)Lteam/opay/pay/database/RoomTypeConverters;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->d()Lteam/opay/core/api/GraphQL$MobileMoneyProvider;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Lteam/opay/pay/database/RoomTypeConverters;->h(Lteam/opay/core/api/GraphQL$MobileMoneyProvider;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const/16 v1, 0xc

    .line 221
    .line 222
    if-nez v0, :cond_a

    .line 223
    .line 224
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 225
    .line 226
    .line 227
    goto :goto_a

    .line 228
    :cond_a
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :goto_a
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->c()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    const/16 v1, 0xd

    .line 236
    .line 237
    if-nez v0, :cond_b

    .line 238
    .line 239
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 240
    .line 241
    .line 242
    goto :goto_b

    .line 243
    :cond_b
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->c()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :goto_b
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getCardStatus()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    const/16 v1, 0xe

    .line 255
    .line 256
    if-nez v0, :cond_c

    .line 257
    .line 258
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 259
    .line 260
    .line 261
    goto :goto_c

    .line 262
    :cond_c
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->getCardStatus()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :goto_c
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->b()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    const/16 v1, 0xf

    .line 274
    .line 275
    if-nez v0, :cond_d

    .line 276
    .line 277
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 278
    .line 279
    .line 280
    goto :goto_d

    .line 281
    :cond_d
    invoke-virtual {p2}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->b()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    invoke-interface {p1, v1, p2}, Ld2d;->m(ILjava/lang/String;)V

    .line 286
    .line 287
    .line 288
    :goto_d
    return-void
.end method
