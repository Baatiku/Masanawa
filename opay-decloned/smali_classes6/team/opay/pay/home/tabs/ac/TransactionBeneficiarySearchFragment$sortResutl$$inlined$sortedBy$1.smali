.class public final Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;->h(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->a:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p1, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getShowType()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x3

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ne v0, v3, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->a:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 23
    .line 24
    invoke-static {v0}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;->d(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v4, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, v4, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-ne v0, v1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    iget-object v5, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 51
    .line 52
    const/4 v8, 0x2

    .line 53
    const/4 v9, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x1

    .line 56
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v0, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    const/4 v0, 0x0

    .line 64
    :goto_1
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget-object v5, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v4, v5, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    iget-object v6, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 81
    .line 82
    const/4 v9, 0x2

    .line 83
    const/4 v10, 0x0

    .line 84
    const/4 v7, 0x0

    .line 85
    const/4 v8, 0x1

    .line 86
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    :cond_4
    :goto_2
    add-int/2addr v0, v1

    .line 91
    goto :goto_4

    .line 92
    :cond_5
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountNo()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    iget-object v4, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v0, v4, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-ne v0, v1, :cond_6

    .line 105
    .line 106
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountNo()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iget-object v5, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 111
    .line 112
    const/4 v8, 0x2

    .line 113
    const/4 v9, 0x0

    .line 114
    const/4 v6, 0x0

    .line 115
    const/4 v7, 0x1

    .line 116
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    goto :goto_3

    .line 121
    :cond_6
    const/4 v0, 0x0

    .line 122
    :goto_3
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    if-eqz v4, :cond_4

    .line 127
    .line 128
    iget-object v5, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v4, v5, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-ne v4, v1, :cond_4

    .line 135
    .line 136
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    iget-object v6, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 141
    .line 142
    const/4 v9, 0x2

    .line 143
    const/4 v10, 0x0

    .line 144
    const/4 v7, 0x0

    .line 145
    const/4 v8, 0x1

    .line 146
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    goto :goto_2

    .line 151
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p2, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 156
    .line 157
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getShowType()Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-nez v0, :cond_7

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-ne v0, v3, :cond_8

    .line 169
    .line 170
    goto/16 :goto_8

    .line 171
    .line 172
    :cond_8
    :goto_5
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->a:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 173
    .line 174
    invoke-static {v0}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;->d(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_c

    .line 179
    .line 180
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    if-eqz v0, :cond_a

    .line 185
    .line 186
    iget-object v3, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v0, v3, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-ne v0, v1, :cond_a

    .line 193
    .line 194
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    if-eqz v3, :cond_9

    .line 199
    .line 200
    iget-object v4, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 201
    .line 202
    const/4 v7, 0x2

    .line 203
    const/4 v8, 0x0

    .line 204
    const/4 v5, 0x0

    .line 205
    const/4 v6, 0x1

    .line 206
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    move v2, v0

    .line 211
    goto :goto_6

    .line 212
    :cond_9
    const/4 v2, 0x1

    .line 213
    :cond_a
    :goto_6
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget-object v3, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 218
    .line 219
    invoke-static {v0, v3, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_b

    .line 224
    .line 225
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    iget-object v4, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 230
    .line 231
    const/4 v7, 0x2

    .line 232
    const/4 v8, 0x0

    .line 233
    const/4 v5, 0x0

    .line 234
    const/4 v6, 0x1

    .line 235
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    :cond_b
    :goto_7
    add-int/2addr v2, v1

    .line 240
    goto :goto_8

    .line 241
    :cond_c
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountNo()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    if-eqz v0, :cond_d

    .line 246
    .line 247
    iget-object v3, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 248
    .line 249
    invoke-static {v0, v3, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-ne v0, v1, :cond_d

    .line 254
    .line 255
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountNo()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    iget-object v4, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 260
    .line 261
    const/4 v7, 0x2

    .line 262
    const/4 v8, 0x0

    .line 263
    const/4 v5, 0x0

    .line 264
    const/4 v6, 0x1

    .line 265
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    :cond_d
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountName()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    if-eqz v0, :cond_b

    .line 274
    .line 275
    iget-object v3, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {v0, v3, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-ne v0, v1, :cond_b

    .line 282
    .line 283
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountName()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    iget-object v4, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment$sortResutl$$inlined$sortedBy$1;->b:Ljava/lang/String;

    .line 288
    .line 289
    const/4 v7, 0x2

    .line 290
    const/4 v8, 0x0

    .line 291
    const/4 v5, 0x0

    .line 292
    const/4 v6, 0x1

    .line 293
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    goto :goto_7

    .line 298
    :goto_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    invoke-static {p1, p2}, Lkotlin/comparisons/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    return p1
.end method
