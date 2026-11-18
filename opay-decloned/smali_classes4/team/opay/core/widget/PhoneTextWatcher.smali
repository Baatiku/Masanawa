.class public final Lteam/opay/core/widget/PhoneTextWatcher;
.super Ljava/lang/Object;
.source "PhoneTextWatcher.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/widget/PhoneTextWatcher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u0000 \u001b2\u00020\u0001:\u0001%B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ1\u0010\u0010\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J1\u0010\u0013\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\r\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J1\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0011J\u0017\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0014H\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0014H\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001aR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u001cR\"\u0010#\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0016\u0010$\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001e\u00a8\u0006&"
    }
    d2 = {
        "Lteam/opay/core/widget/PhoneTextWatcher;",
        "Landroid/text/TextWatcher;",
        "Landroid/widget/EditText;",
        "editText",
        "<init>",
        "(Landroid/widget/EditText;)V",
        "Landroid/text/Editable;",
        "s",
        "",
        "afterTextChanged",
        "(Landroid/text/Editable;)V",
        "",
        "",
        "start",
        "count",
        "after",
        "beforeTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "before",
        "onTextChanged",
        "",
        "b",
        "()Ljava/lang/String;",
        "a",
        "tel",
        "c",
        "(Ljava/lang/String;)V",
        "d",
        "Landroid/widget/EditText;",
        "",
        "Z",
        "getZeroStyle",
        "()Z",
        "setZeroStyle",
        "(Z)V",
        "zeroStyle",
        "cancelFormat",
        "Companion",
        "common-base_release"
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
.field public static final d:Lteam/opay/core/widget/PhoneTextWatcher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/widget/PhoneTextWatcher$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/widget/PhoneTextWatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/widget/PhoneTextWatcher;->d:Lteam/opay/core/widget/PhoneTextWatcher$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1
    .param p1    # Landroid/widget/EditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "editText"

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
    iput-object p1, p0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;III)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    sget-object v4, Lnk8;->c:Lnk8;

    .line 10
    .line 11
    iget-boolean v5, v0, Lteam/opay/core/widget/PhoneTextWatcher;->b:Z

    .line 12
    .line 13
    iget-boolean v6, v0, Lteam/opay/core/widget/PhoneTextWatcher;->c:Z

    .line 14
    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v8, "Hao count = "

    .line 21
    .line 22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v8, ", s= "

    .line 29
    .line 30
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-object/from16 v8, p1

    .line 34
    .line 35
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v9, ", start= "

    .line 39
    .line 40
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v9, ", before = "

    .line 47
    .line 48
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v9, ", zeroStyle = "

    .line 55
    .line 56
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v5, ", cancelFormat = "

    .line 63
    .line 64
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v7, 0x2

    .line 76
    invoke-static {v4, v5, v6, v7, v6}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-boolean v4, v0, Lteam/opay/core/widget/PhoneTextWatcher;->c:Z

    .line 80
    .line 81
    const/4 v5, 0x0

    .line 82
    if-eqz v4, :cond_0

    .line 83
    .line 84
    iput-boolean v5, v0, Lteam/opay/core/widget/PhoneTextWatcher;->c:Z

    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    const-string v4, "0"

    .line 88
    .line 89
    const-string v9, ""

    .line 90
    .line 91
    const/4 v10, 0x1

    .line 92
    if-eqz v3, :cond_c

    .line 93
    .line 94
    if-eq v3, v10, :cond_c

    .line 95
    .line 96
    iput-boolean v10, v0, Lteam/opay/core/widget/PhoneTextWatcher;->c:Z

    .line 97
    .line 98
    iget-object v1, v0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 99
    .line 100
    iget-boolean v2, v0, Lteam/opay/core/widget/PhoneTextWatcher;->b:Z

    .line 101
    .line 102
    if-eqz v2, :cond_8

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    if-eqz v2, :cond_1

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    if-eqz v10, :cond_1

    .line 115
    .line 116
    const/4 v14, 0x4

    .line 117
    const/4 v15, 0x0

    .line 118
    const-string v11, " "

    .line 119
    .line 120
    const-string v12, ""

    .line 121
    .line 122
    const/4 v13, 0x0

    .line 123
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-nez v2, :cond_2

    .line 128
    .line 129
    :cond_1
    move-object v2, v9

    .line 130
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    const/16 v8, 0xb

    .line 135
    .line 136
    if-ne v3, v8, :cond_5

    .line 137
    .line 138
    invoke-static {v2, v4, v5, v7, v6}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_5

    .line 143
    .line 144
    iget-object v2, v0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 145
    .line 146
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    if-eqz v2, :cond_4

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    if-eqz v10, :cond_4

    .line 157
    .line 158
    const/4 v14, 0x4

    .line 159
    const/4 v15, 0x0

    .line 160
    const-string v11, " "

    .line 161
    .line 162
    const-string v12, ""

    .line 163
    .line 164
    const/4 v13, 0x0

    .line 165
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    if-nez v2, :cond_3

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_3
    move-object v9, v2

    .line 173
    :cond_4
    :goto_0
    invoke-static {v9}, Ltob;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    goto :goto_3

    .line 178
    :cond_5
    iget-object v2, v0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 179
    .line 180
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    if-eqz v2, :cond_7

    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    if-eqz v10, :cond_7

    .line 191
    .line 192
    const/4 v14, 0x4

    .line 193
    const/4 v15, 0x0

    .line 194
    const-string v11, " "

    .line 195
    .line 196
    const-string v12, ""

    .line 197
    .line 198
    const/4 v13, 0x0

    .line 199
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    if-nez v2, :cond_6

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_6
    move-object v9, v2

    .line 207
    :cond_7
    :goto_1
    invoke-static {v9}, Ltob;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    goto :goto_3

    .line 212
    :cond_8
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    if-eqz v2, :cond_a

    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    if-eqz v10, :cond_a

    .line 223
    .line 224
    const/4 v14, 0x4

    .line 225
    const/4 v15, 0x0

    .line 226
    const-string v11, " "

    .line 227
    .line 228
    const-string v12, ""

    .line 229
    .line 230
    const/4 v13, 0x0

    .line 231
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    if-nez v2, :cond_9

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_9
    move-object v9, v2

    .line 239
    :cond_a
    :goto_2
    invoke-static {v9}, Ltob;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    .line 245
    .line 246
    iget-object v1, v0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 247
    .line 248
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    if-eqz v2, :cond_b

    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    if-eqz v2, :cond_b

    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    :cond_b
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_b

    .line 268
    .line 269
    :cond_c
    iget-object v11, v0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 270
    .line 271
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    if-eqz v11, :cond_e

    .line 276
    .line 277
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v12

    .line 281
    if-eqz v12, :cond_e

    .line 282
    .line 283
    const/16 v16, 0x4

    .line 284
    .line 285
    const/16 v17, 0x0

    .line 286
    .line 287
    const-string v13, " "

    .line 288
    .line 289
    const-string v14, ""

    .line 290
    .line 291
    const/4 v15, 0x0

    .line 292
    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v11

    .line 296
    if-nez v11, :cond_d

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_d
    move-object v9, v11

    .line 300
    :cond_e
    :goto_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    const/4 v12, 0x3

    .line 305
    if-gt v11, v12, :cond_f

    .line 306
    .line 307
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 312
    .line 313
    .line 314
    move-result v8

    .line 315
    const/4 v11, 0x4

    .line 316
    if-ne v8, v11, :cond_f

    .line 317
    .line 318
    iput-boolean v10, v0, Lteam/opay/core/widget/PhoneTextWatcher;->c:Z

    .line 319
    .line 320
    iget-object v8, v0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 321
    .line 322
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    .line 324
    .line 325
    :cond_f
    iget-boolean v8, v0, Lteam/opay/core/widget/PhoneTextWatcher;->b:Z

    .line 326
    .line 327
    if-eqz v8, :cond_10

    .line 328
    .line 329
    iget-object v8, v0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 330
    .line 331
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 332
    .line 333
    .line 334
    move-result-object v8

    .line 335
    if-eqz v8, :cond_10

    .line 336
    .line 337
    invoke-static {v8, v4, v5, v7, v6}, Lkotlin/text/StringsKt;->a1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-ne v4, v10, :cond_10

    .line 342
    .line 343
    invoke-virtual {v0, v9}, Lteam/opay/core/widget/PhoneTextWatcher;->d(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_10
    invoke-virtual {v0, v9}, Lteam/opay/core/widget/PhoneTextWatcher;->c(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    :goto_5
    iget-object v4, v0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 351
    .line 352
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    if-gez v1, :cond_11

    .line 361
    .line 362
    const/4 v6, 0x0

    .line 363
    goto :goto_6

    .line 364
    :cond_11
    if-le v1, v4, :cond_12

    .line 365
    .line 366
    iget-object v6, v0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 367
    .line 368
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 373
    .line 374
    .line 375
    move-result v6

    .line 376
    goto :goto_6

    .line 377
    :cond_12
    move v6, v1

    .line 378
    :goto_6
    iget-object v8, v0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 379
    .line 380
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 381
    .line 382
    .line 383
    move-result-object v8

    .line 384
    const-string v9, "getText(...)"

    .line 385
    .line 386
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-static {v8, v6}, Lkotlin/text/StringsKt;->A1(Ljava/lang/CharSequence;I)Ljava/lang/Character;

    .line 390
    .line 391
    .line 392
    move-result-object v8

    .line 393
    if-nez v8, :cond_13

    .line 394
    .line 395
    goto :goto_8

    .line 396
    :cond_13
    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    const/16 v9, 0x20

    .line 401
    .line 402
    if-ne v9, v8, :cond_15

    .line 403
    .line 404
    iget-object v8, v0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 405
    .line 406
    add-int/2addr v6, v7

    .line 407
    if-le v6, v4, :cond_14

    .line 408
    .line 409
    goto :goto_7

    .line 410
    :cond_14
    move v4, v6

    .line 411
    :goto_7
    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 412
    .line 413
    .line 414
    goto :goto_a

    .line 415
    :cond_15
    :goto_8
    iget-object v7, v0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 416
    .line 417
    add-int/2addr v6, v10

    .line 418
    if-le v6, v4, :cond_16

    .line 419
    .line 420
    goto :goto_9

    .line 421
    :cond_16
    move v4, v6

    .line 422
    :goto_9
    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 423
    .line 424
    .line 425
    :goto_a
    if-nez v3, :cond_18

    .line 426
    .line 427
    if-le v2, v10, :cond_17

    .line 428
    .line 429
    iget-object v1, v0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 430
    .line 431
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 432
    .line 433
    .line 434
    goto :goto_b

    .line 435
    :cond_17
    iget-object v2, v0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 436
    .line 437
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 438
    .line 439
    .line 440
    :cond_18
    :goto_b
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "s"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lkotlin/text/Regex;

    .line 12
    .line 13
    const-string v2, " "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
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

.method public final c(Ljava/lang/String;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    const-string v4, " "

    .line 9
    .line 10
    const/4 v5, 0x3

    .line 11
    const-string v6, "substring(...)"

    .line 12
    .line 13
    if-gt v1, v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x7

    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    iput-boolean v3, p0, Lteam/opay/core/widget/PhoneTextWatcher;->c:Z

    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 21
    .line 22
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v8, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v1, 0x6

    .line 66
    if-le v0, v1, :cond_1

    .line 67
    .line 68
    iput-boolean v3, p0, Lteam/opay/core/widget/PhoneTextWatcher;->c:Z

    .line 69
    .line 70
    iget-object v0, p0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 71
    .line 72
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    const-string v4, " "

    .line 9
    .line 10
    const/4 v5, 0x3

    .line 11
    const-string v6, "substring(...)"

    .line 12
    .line 13
    if-gt v1, v0, :cond_0

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    iput-boolean v3, p0, Lteam/opay/core/widget/PhoneTextWatcher;->c:Z

    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 22
    .line 23
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v8, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v1, 0x7

    .line 67
    if-le v0, v1, :cond_1

    .line 68
    .line 69
    iput-boolean v3, p0, Lteam/opay/core/widget/PhoneTextWatcher;->c:Z

    .line 70
    .line 71
    iget-object v0, p0, Lteam/opay/core/widget/PhoneTextWatcher;->a:Landroid/widget/EditText;

    .line 72
    .line 73
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/core/widget/PhoneTextWatcher;->a(Ljava/lang/CharSequence;III)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method
