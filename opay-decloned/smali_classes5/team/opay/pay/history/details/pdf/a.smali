.class public final Lteam/opay/pay/history/details/pdf/a;
.super Ljava/lang/Object;
.source "PdfDetailFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u001a5\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u001e\u0010\u0007\u001a\u001a\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00060\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;",
        "transactionDetail",
        "Lkotlin/Function2;",
        "",
        "",
        "Lteam/opay/pay/history/details/BaseTransactionDetail;",
        "",
        "block",
        "a",
        "(Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;Lkotlin/jvm/functions/Function2;)V",
        "sdk_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .param p0    # Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/util/List<",
            "+",
            "Lteam/opay/pay/history/details/BaseTransactionDetail;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "transactionDetail"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->f()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "Status"

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->g()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    new-instance v1, Lteam/opay/pay/history/details/TransactionTitle2;

    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->f()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->g()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->b()Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v5, 0x0

    .line 54
    :goto_0
    invoke-direct {v1, v3, v4, v5}, Lteam/opay/pay/history/details/TransactionTitle2;-><init>(Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 55
    .line 56
    .line 57
    const/4 v3, 0x2

    .line 58
    invoke-virtual {v1, v3}, Lteam/opay/pay/history/details/BaseTransactionDetail;->setItemType(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->k()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v3, 0x5

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->k()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    new-instance v4, Lteam/opay/pay/history/details/TransactionBody;

    .line 80
    .line 81
    const-string v5, "Transaction type"

    .line 82
    .line 83
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->k()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-direct {v4, v5, v6}, Lteam/opay/pay/history/details/TransactionBody;-><init>(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v3}, Lteam/opay/pay/history/details/BaseTransactionDetail;->setItemType(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    const-string v1, ""

    .line 98
    .line 99
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->b()Ljava/util/LinkedHashMap;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    if-eqz v4, :cond_7

    .line 104
    .line 105
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_3

    .line 110
    .line 111
    goto/16 :goto_4

    .line 112
    .line 113
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->b()Ljava/util/LinkedHashMap;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_5

    .line 130
    .line 131
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    check-cast v5, Ljava/util/Map$Entry;

    .line 136
    .line 137
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_4

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    new-instance v6, Lteam/opay/pay/history/details/TransactionBody;

    .line 149
    .line 150
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    check-cast v7, Ljava/lang/String;

    .line 155
    .line 156
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 161
    .line 162
    invoke-direct {v6, v7, v5}, Lteam/opay/pay/history/details/TransactionBody;-><init>(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6, v3}, Lteam/opay/pay/history/details/BaseTransactionDetail;->setItemType(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->h()Ljava/util/LinkedHashMap;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-eqz v2, :cond_7

    .line 177
    .line 178
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_6

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->h()Ljava/util/LinkedHashMap;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_7

    .line 202
    .line 203
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Ljava/util/Map$Entry;

    .line 208
    .line 209
    new-instance v5, Lteam/opay/pay/history/details/TransactionBody;

    .line 210
    .line 211
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    check-cast v6, Ljava/lang/String;

    .line 216
    .line 217
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    check-cast v4, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 222
    .line 223
    invoke-direct {v5, v6, v4}, Lteam/opay/pay/history/details/TransactionBody;-><init>(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v3}, Lteam/opay/pay/history/details/BaseTransactionDetail;->setItemType(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->c()Ljava/util/LinkedHashMap;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    if-eqz v2, :cond_9

    .line 238
    .line 239
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_8

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_8
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->c()Ljava/util/LinkedHashMap;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_9

    .line 263
    .line 264
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    check-cast v2, Ljava/util/Map$Entry;

    .line 269
    .line 270
    new-instance v4, Lteam/opay/pay/history/details/TransactionBody;

    .line 271
    .line 272
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    check-cast v5, Ljava/lang/String;

    .line 277
    .line 278
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    check-cast v2, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 283
    .line 284
    invoke-direct {v4, v5, v2}, Lteam/opay/pay/history/details/TransactionBody;-><init>(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4, v3}, Lteam/opay/pay/history/details/BaseTransactionDetail;->setItemType(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_9
    :goto_6
    new-instance p0, Lteam/opay/pay/history/details/BaseTransactionDetail;

    .line 295
    .line 296
    invoke-direct {p0}, Lteam/opay/pay/history/details/BaseTransactionDetail;-><init>()V

    .line 297
    .line 298
    .line 299
    const/4 v2, 0x6

    .line 300
    invoke-virtual {p0, v2}, Lteam/opay/pay/history/details/BaseTransactionDetail;->setItemType(I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    invoke-interface {p1, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    return-void
.end method
