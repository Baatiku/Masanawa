.class public final Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0010"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "text",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "core-ktx_release",
        "androidx/core/widget/TextViewKt$doAfterTextChanged$$inlined$addTextChangedListener$1"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 13
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lmb6;

    .line 8
    .line 9
    iget-object p1, p1, Lmb6;->t:Lteam/opay/pay/android/views/PhoneEditText;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/pay/android/views/PhoneEditText;->getFormatText()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p1, v0

    .line 20
    :goto_0
    const-string v1, ""

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    move-object p1, v1

    .line 25
    :cond_1
    iget-object v2, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 26
    .line 27
    invoke-static {v2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;->F0(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;)Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->o()Lteam/opay/core/api/Country;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {p1, v2}, Lxob;->p(Ljava/lang/String;Lteam/opay/core/api/Country;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    iget-object v3, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 42
    .line 43
    invoke-virtual {v3}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lmb6;

    .line 48
    .line 49
    iget-object v3, v3, Lmb6;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    const-string v4, "numInputError"

    .line 52
    .line 53
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    iget-object v3, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 63
    .line 64
    invoke-virtual {v3}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Lmb6;

    .line 69
    .line 70
    iget-object v3, v3, Lmb6;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 79
    .line 80
    invoke-virtual {v3}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Lmb6;

    .line 85
    .line 86
    iget-object v3, v3, Lmb6;->m:Landroid/view/View;

    .line 87
    .line 88
    sget v4, Lteam/opay/pay/R$color;->color_f8f8fb:I

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object v3, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 94
    .line 95
    invoke-static {v3}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;->F0(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;)Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->P0()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {p1}, Lxob;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_3

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-nez v3, :cond_e

    .line 118
    .line 119
    :cond_3
    iget-object v3, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 120
    .line 121
    invoke-static {v3}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;->F0(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;)Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v3, p1}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->Z1(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    if-eqz v2, :cond_8

    .line 129
    .line 130
    iget-object v2, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 131
    .line 132
    invoke-static {v2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;->C0(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;)Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->t0()Lteam/opay/pay/util/PhoneFromHelp;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2, p1}, Lteam/opay/pay/util/PhoneFromHelp;->c(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 144
    .line 145
    invoke-static {v2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;->E0(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;)Lteam/opay/pay/payment/record/RecordsTopupViewModel;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v2}, Lteam/opay/pay/payment/record/RecordsTopupViewModel;->C()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    if-eqz v2, :cond_7

    .line 154
    .line 155
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_6

    .line 164
    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    move-object v4, v3

    .line 170
    check-cast v4, Lteam/opay/pay/api/RecordsTopupRsp;

    .line 171
    .line 172
    invoke-virtual {v4}, Lteam/opay/pay/api/RecordsTopupRsp;->c()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    if-nez v4, :cond_5

    .line 177
    .line 178
    move-object v4, v1

    .line 179
    :cond_5
    invoke-static {v4}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    iget-object v5, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 184
    .line 185
    invoke-static {v5}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;->F0(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;)Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v5}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->P0()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-static {v5}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_4

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_6
    move-object v3, v0

    .line 205
    :goto_1
    check-cast v3, Lteam/opay/pay/api/RecordsTopupRsp;

    .line 206
    .line 207
    if-eqz v3, :cond_7

    .line 208
    .line 209
    invoke-virtual {v3}, Lteam/opay/pay/api/RecordsTopupRsp;->d()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :cond_7
    iget-object v2, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 214
    .line 215
    const/4 v3, 0x0

    .line 216
    invoke-static {v2, p1, v3, v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;->B0(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;Ljava/lang/String;ZLjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 220
    .line 221
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    check-cast p1, Lmb6;

    .line 226
    .line 227
    iget-object p1, p1, Lmb6;->t:Lteam/opay/pay/android/views/PhoneEditText;

    .line 228
    .line 229
    sget v0, Lteam/opay/pay/R$id;->tag_key_airtime_phone_number:I

    .line 230
    .line 231
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 235
    .line 236
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    check-cast p1, Lmb6;

    .line 241
    .line 242
    iget-object p1, p1, Lmb6;->t:Lteam/opay/pay/android/views/PhoneEditText;

    .line 243
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 248
    .line 249
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Lmb6;

    .line 254
    .line 255
    iget-object p1, p1, Lmb6;->t:Lteam/opay/pay/android/views/PhoneEditText;

    .line 256
    .line 257
    const-string v0, "phoneEdit"

    .line 258
    .line 259
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-static {p1}, Lkmf;->t(Landroid/view/View;)V

    .line 263
    .line 264
    .line 265
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 266
    .line 267
    invoke-static {p1}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;->J0(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_2

    .line 271
    .line 272
    :cond_8
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 273
    .line 274
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    check-cast p1, Lmb6;

    .line 279
    .line 280
    iget-object p1, p1, Lmb6;->t:Lteam/opay/pay/android/views/PhoneEditText;

    .line 281
    .line 282
    invoke-virtual {p1}, Lteam/opay/pay/android/views/PhoneEditText;->getFormatText()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 287
    .line 288
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Lmb6;

    .line 293
    .line 294
    iget-object v0, v0, Lmb6;->t:Lteam/opay/pay/android/views/PhoneEditText;

    .line 295
    .line 296
    if-eqz v0, :cond_d

    .line 297
    .line 298
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    const/4 v1, 0x1

    .line 303
    if-ne v0, v1, :cond_d

    .line 304
    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    const/4 v1, 0x3

    .line 310
    if-le v0, v1, :cond_b

    .line 311
    .line 312
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 313
    .line 314
    invoke-static {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;->D0(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;)Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v0, p1}, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;->x(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    if-eqz p1, :cond_a

    .line 323
    .line 324
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 325
    .line 326
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    check-cast p1, Lmb6;

    .line 331
    .line 332
    iget-object p1, p1, Lmb6;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 333
    .line 334
    const-string v0, "recordsGroup"

    .line 335
    .line 336
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    if-nez p1, :cond_9

    .line 344
    .line 345
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 346
    .line 347
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    check-cast p1, Lmb6;

    .line 352
    .line 353
    iget-object p1, p1, Lmb6;->j:Landroidx/constraintlayout/widget/Group;

    .line 354
    .line 355
    const-string v0, "groudErrorText"

    .line 356
    .line 357
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    const/16 v0, 0x8

    .line 361
    .line 362
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 363
    .line 364
    .line 365
    goto :goto_2

    .line 366
    :cond_9
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 367
    .line 368
    const/4 v5, 0x4

    .line 369
    const/4 v6, 0x0

    .line 370
    const/4 v2, 0x1

    .line 371
    const/4 v3, 0x0

    .line 372
    const/4 v4, 0x0

    .line 373
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;->l2(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;ZZZILjava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    goto :goto_2

    .line 377
    :cond_a
    iget-object v7, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 378
    .line 379
    const/4 v11, 0x4

    .line 380
    const/4 v12, 0x0

    .line 381
    const/4 v8, 0x0

    .line 382
    const/4 v9, 0x0

    .line 383
    const/4 v10, 0x0

    .line 384
    invoke-static/range {v7 .. v12}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;->l2(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;ZZZILjava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    goto :goto_2

    .line 388
    :cond_b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    if-nez p1, :cond_c

    .line 393
    .line 394
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 395
    .line 396
    const/4 v4, 0x4

    .line 397
    const/4 v5, 0x0

    .line 398
    const/4 v1, 0x1

    .line 399
    const/4 v2, 0x1

    .line 400
    const/4 v3, 0x0

    .line 401
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;->l2(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;ZZZILjava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    goto :goto_2

    .line 405
    :cond_c
    iget-object v6, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 406
    .line 407
    const/4 v10, 0x6

    .line 408
    const/4 v11, 0x0

    .line 409
    const/4 v7, 0x0

    .line 410
    const/4 v8, 0x0

    .line 411
    const/4 v9, 0x0

    .line 412
    invoke-static/range {v6 .. v11}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;->l2(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;ZZZILjava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    goto :goto_2

    .line 416
    :cond_d
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 417
    .line 418
    const/4 v4, 0x4

    .line 419
    const/4 v5, 0x0

    .line 420
    const/4 v1, 0x0

    .line 421
    const/4 v2, 0x0

    .line 422
    const/4 v3, 0x0

    .line 423
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;->l2(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;ZZZILjava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    :goto_2
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment$initView$$inlined$doAfterTextChanged$1;->a:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;

    .line 427
    .line 428
    invoke-static {p1}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;->K0(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataFragment;)V

    .line 429
    .line 430
    .line 431
    :cond_e
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
