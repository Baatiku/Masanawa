.class public final Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PdfBodyViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\rR\u001a\u0010\u0013\u001a\u00020\u000e8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0016\u001a\u00020\u000e8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0010\u001a\u0004\u0008\u0015\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u000e8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0010\u001a\u0004\u0008\u0018\u0010\u0012R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View;",
        "itemView",
        "",
        "fromShare",
        "<init>",
        "(Landroid/view/View;Z)V",
        "Lteam/opay/pay/history/details/TransactionBody;",
        "entity",
        "",
        "a",
        "(Lteam/opay/pay/history/details/TransactionBody;)V",
        "Z",
        "",
        "b",
        "Ljava/lang/String;",
        "getFLOWTYPE_IN",
        "()Ljava/lang/String;",
        "FLOWTYPE_IN",
        "c",
        "getFLOWTYPE_OUT",
        "FLOWTYPE_OUT",
        "d",
        "getMAPTYPE_MONEY",
        "MAPTYPE_MONEY",
        "Ln0f;",
        "e",
        "Ln0f;",
        "binding",
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
.field public final a:Z

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ln0f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "itemView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iput-boolean p2, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->a:Z

    .line 10
    .line 11
    const-string p2, "IN"

    .line 12
    .line 13
    iput-object p2, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->b:Ljava/lang/String;

    .line 14
    .line 15
    const-string p2, "OUT"

    .line 16
    .line 17
    iput-object p2, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->c:Ljava/lang/String;

    .line 18
    .line 19
    const-string p2, "money"

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->d:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1}, Ln0f;->bind(Landroid/view/View;)Ln0f;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "bind(...)"

    .line 28
    .line 29
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->e:Ln0f;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/pay/history/details/TransactionBody;)V
    .locals 5
    .param p1    # Lteam/opay/pay/history/details/TransactionBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "entity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->e:Ln0f;

    .line 9
    .line 10
    iget-object v1, v1, Ln0f;->e:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-boolean v3, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->a:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    sget v3, Lteam/opay/pay/R$color;->transaction_evidence_black_85:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget v3, Lteam/opay/pay/R$color;->black_85:I

    .line 24
    .line 25
    :goto_0
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->e:Ln0f;

    .line 33
    .line 34
    iget-object v1, v1, Ln0f;->d:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-boolean v3, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->a:Z

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    sget v3, Lteam/opay/pay/R$color;->transaction_evidence_black_85:I

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    sget v3, Lteam/opay/pay/R$color;->black_85:I

    .line 48
    .line 49
    :goto_1
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->e:Ln0f;

    .line 57
    .line 58
    iget-object v1, v1, Ln0f;->c:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-boolean v3, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->a:Z

    .line 65
    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    sget v3, Lteam/opay/pay/R$color;->transaction_evidence_black_85:I

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    sget v3, Lteam/opay/pay/R$color;->black_85:I

    .line 72
    .line 73
    :goto_2
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->e:Ln0f;

    .line 81
    .line 82
    iget-object v1, v1, Ln0f;->b:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-boolean v2, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->a:Z

    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    sget v2, Lteam/opay/pay/R$color;->transaction_evidence_black_45:I

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    sget v2, Lteam/opay/pay/R$color;->black_45:I

    .line 96
    .line 97
    :goto_3
    invoke-static {v0, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->e:Ln0f;

    .line 105
    .line 106
    iget-object v0, v0, Ln0f;->e:Landroid/widget/TextView;

    .line 107
    .line 108
    const-string v1, "transactionSign"

    .line 109
    .line 110
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->d:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionBody;->getValue()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const/4 v3, 0x0

    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    invoke-virtual {v2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getMapType()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    goto :goto_4

    .line 127
    :cond_4
    move-object v2, v3

    .line 128
    :goto_4
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->e:Ln0f;

    .line 136
    .line 137
    iget-object v0, v0, Ln0f;->d:Landroid/widget/TextView;

    .line 138
    .line 139
    const-string v1, "transactionCurrency"

    .line 140
    .line 141
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->d:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionBody;->getValue()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    if-eqz v2, :cond_5

    .line 151
    .line 152
    invoke-virtual {v2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getMapType()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    goto :goto_5

    .line 157
    :cond_5
    move-object v2, v3

    .line 158
    :goto_5
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->e:Ln0f;

    .line 166
    .line 167
    iget-object v0, v0, Ln0f;->e:Landroid/widget/TextView;

    .line 168
    .line 169
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->b:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionBody;->getValue()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    if-eqz v2, :cond_6

    .line 176
    .line 177
    invoke-virtual {v2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getFlowType()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    goto :goto_6

    .line 182
    :cond_6
    move-object v2, v3

    .line 183
    :goto_6
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    const-string v2, ""

    .line 188
    .line 189
    if-eqz v1, :cond_7

    .line 190
    .line 191
    const-string v1, "+"

    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_7
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->c:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionBody;->getValue()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    if-eqz v4, :cond_8

    .line 201
    .line 202
    invoke-virtual {v4}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getFlowType()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    goto :goto_7

    .line 207
    :cond_8
    move-object v4, v3

    .line 208
    :goto_7
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_9

    .line 213
    .line 214
    const-string v1, "-"

    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_9
    move-object v1, v2

    .line 218
    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->e:Ln0f;

    .line 222
    .line 223
    iget-object v0, v0, Ln0f;->b:Landroid/widget/TextView;

    .line 224
    .line 225
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionBody;->getKey()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    if-eqz v1, :cond_a

    .line 230
    .line 231
    goto :goto_9

    .line 232
    :cond_a
    move-object v1, v2

    .line 233
    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    sget-object v0, Lteam/opay/core/api/GraphQL$TransactionState;->TOBEPAY:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionBody;->getValue()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    if-eqz v1, :cond_b

    .line 247
    .line 248
    invoke-virtual {v1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    goto :goto_a

    .line 253
    :cond_b
    move-object v1, v3

    .line 254
    :goto_a
    const/4 v4, 0x1

    .line 255
    invoke-static {v0, v1, v4}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_d

    .line 260
    .line 261
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->e:Ln0f;

    .line 262
    .line 263
    iget-object v0, v0, Ln0f;->c:Landroid/widget/TextView;

    .line 264
    .line 265
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionBody;->getValue()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    if-eqz p1, :cond_c

    .line 270
    .line 271
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    if-eqz p1, :cond_c

    .line 276
    .line 277
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 278
    .line 279
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    const-string v1, "toUpperCase(...)"

    .line 284
    .line 285
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    if-eqz p1, :cond_c

    .line 289
    .line 290
    move-object v2, p1

    .line 291
    :cond_c
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    goto :goto_c

    .line 295
    :cond_d
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->e:Ln0f;

    .line 296
    .line 297
    iget-object v0, v0, Ln0f;->c:Landroid/widget/TextView;

    .line 298
    .line 299
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionBody;->getValue()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    if-eqz p1, :cond_e

    .line 304
    .line 305
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    :cond_e
    if-nez v3, :cond_f

    .line 310
    .line 311
    goto :goto_b

    .line 312
    :cond_f
    move-object v2, v3

    .line 313
    :goto_b
    const/4 p1, 0x0

    .line 314
    invoke-static {v2, p1}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .line 320
    .line 321
    :goto_c
    return-void
.end method
