.class final Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MyQRCodeActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.qrcode.myqrcode.MyQRCodeActivity$saveCode$1"
    f = "MyQRCodeActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $qrcode:Lteam/opay/qrcode/bean/MyQRCodeRsp;

.field label:I

.field final synthetic this$0:Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;


# direct methods
.method public constructor <init>(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Lteam/opay/qrcode/bean/MyQRCodeRsp;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;",
            "Lteam/opay/qrcode/bean/MyQRCodeRsp;",
            "Ljr2<",
            "-",
            "Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->this$0:Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->$qrcode:Lteam/opay/qrcode/bean/MyQRCodeRsp;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->this$0:Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->$qrcode:Lteam/opay/qrcode/bean/MyQRCodeRsp;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;-><init>(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Lteam/opay/qrcode/bean/MyQRCodeRsp;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_9

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->this$0:Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lnbc;->inflate(Landroid/view/LayoutInflater;)Lnbc;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "inflate(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p1, Lnbc;->e:Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object v1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->this$0:Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;

    .line 29
    .line 30
    invoke-static {v1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->H(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;)Lhbc;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-object v1, v1, Lhbc;->p:Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object v1, v2

    .line 47
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->$qrcode:Lteam/opay/qrcode/bean/MyQRCodeRsp;

    .line 55
    .line 56
    invoke-virtual {v0}, Lteam/opay/qrcode/bean/MyQRCodeRsp;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v1, 0x0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object v0, p1, Lnbc;->b:Landroid/widget/TextView;

    .line 64
    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    sget-object v4, Lbd9;->a:Lbd9;

    .line 71
    .line 72
    iget-object v5, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->$qrcode:Lteam/opay/qrcode/bean/MyQRCodeRsp;

    .line 73
    .line 74
    invoke-virtual {v5}, Lteam/opay/qrcode/bean/MyQRCodeRsp;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v4, v5}, Lbd9;->a(Lteam/opay/core/android/money/MoneyAmount;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v4, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->$qrcode:Lteam/opay/qrcode/bean/MyQRCodeRsp;

    .line 90
    .line 91
    invoke-virtual {v4}, Lteam/opay/qrcode/bean/MyQRCodeRsp;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p1, Lnbc;->b:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    iget-object v0, p1, Lnbc;->b:Landroid/widget/TextView;

    .line 116
    .line 117
    const/16 v3, 0x8

    .line 118
    .line 119
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    :goto_1
    iget-object v0, p1, Lnbc;->d:Landroid/widget/ImageView;

    .line 123
    .line 124
    sget-object v3, Ln7c;->a:Ln7c;

    .line 125
    .line 126
    iget-object v4, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->$qrcode:Lteam/opay/qrcode/bean/MyQRCodeRsp;

    .line 127
    .line 128
    invoke-virtual {v4}, Lteam/opay/qrcode/bean/MyQRCodeRsp;->b()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v3, v4, v2}, Ln7c;->d(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lnbc;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iget-object v3, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->this$0:Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;

    .line 144
    .line 145
    invoke-static {v3}, Ljmf;->r(Landroid/content/Context;)I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    const/high16 v4, 0x40000000    # 2.0f

    .line 150
    .line 151
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    iget-object v4, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->this$0:Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;

    .line 156
    .line 157
    invoke-static {v4}, Ljmf;->q(Landroid/content/Context;)I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    const/high16 v5, -0x80000000

    .line 162
    .line 163
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lnbc;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lnbc;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    invoke-virtual {p1}, Lnbc;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    invoke-virtual {v0, v1, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 191
    .line 192
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v1, "OPayMyCode_"

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget-object v1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->$qrcode:Lteam/opay/qrcode/bean/MyQRCodeRsp;

    .line 204
    .line 205
    invoke-virtual {v1}, Lteam/opay/qrcode/bean/MyQRCodeRsp;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-eqz v1, :cond_2

    .line 210
    .line 211
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    goto :goto_2

    .line 216
    :cond_2
    move-object v1, v2

    .line 217
    :goto_2
    const-string v3, ""

    .line 218
    .line 219
    if-nez v1, :cond_3

    .line 220
    .line 221
    move-object v1, v3

    .line 222
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const/16 v1, 0x5f

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 231
    .line 232
    .line 233
    move-result-wide v4

    .line 234
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v1, ".jpg"

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {p1}, Lnbc;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    const-string v1, "getRoot(...)"

    .line 251
    .line 252
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-static {p1}, Ljbc;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .line 261
    const/16 v4, 0x1d

    .line 262
    .line 263
    const/16 v5, 0x2f

    .line 264
    .line 265
    const-string v6, "/DCIM/"

    .line 266
    .line 267
    const-string v7, "OPayMyCode"

    .line 268
    .line 269
    if-ge v1, v4, :cond_6

    .line 270
    .line 271
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 277
    .line 278
    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    new-instance v4, Ljava/io/File;

    .line 302
    .line 303
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-nez v4, :cond_4

    .line 311
    .line 312
    new-instance v4, Ljava/io/File;

    .line 313
    .line 314
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 318
    .line 319
    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    const-string v8, "make dir "

    .line 326
    .line 327
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    sget-object v2, Lld1;->a:Lld1;

    .line 352
    .line 353
    invoke-virtual {v2, p1, v1}, Lld1;->d(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    if-eqz p1, :cond_5

    .line 358
    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    :cond_5
    iget-object p1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->this$0:Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;

    .line 381
    .line 382
    invoke-static {p1, v1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->J(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_6
    iget-object v1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->this$0:Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;

    .line 387
    .line 388
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    new-instance v4, Landroid/content/ContentValues;

    .line 393
    .line 394
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string v8, "_display_name"

    .line 398
    .line 399
    invoke-virtual {v4, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    const-string v8, "mime_type"

    .line 403
    .line 404
    const-string v9, "image/jpeg"

    .line 405
    .line 406
    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const-string v8, "relative_path"

    .line 410
    .line 411
    new-instance v9, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .line 415
    .line 416
    const-string v10, "DCIM/"

    .line 417
    .line 418
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v9

    .line 428
    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 432
    .line 433
    invoke-virtual {v1, v8, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    if-eqz v4, :cond_8

    .line 438
    .line 439
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 440
    .line 441
    .line 442
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 443
    if-nez v1, :cond_7

    .line 444
    .line 445
    goto :goto_3

    .line 446
    :cond_7
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 447
    .line 448
    const/16 v8, 0x64

    .line 449
    .line 450
    invoke-virtual {p1, v4, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 457
    .line 458
    .line 459
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    .line 461
    :try_start_3
    invoke-static {v1, v2}, Lsf2;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 462
    .line 463
    .line 464
    goto :goto_4

    .line 465
    :catchall_0
    move-exception p1

    .line 466
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 467
    :catchall_1
    move-exception v0

    .line 468
    :try_start_5
    invoke-static {v1, p1}, Lsf2;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 469
    .line 470
    .line 471
    throw v0

    .line 472
    :cond_8
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 493
    :catch_0
    :goto_5
    iget-object p1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;->this$0:Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;

    .line 494
    .line 495
    invoke-static {p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->I(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;)Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    invoke-virtual {p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    invoke-virtual {p1, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 507
    .line 508
    return-object p1

    .line 509
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 510
    .line 511
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 512
    .line 513
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    throw p1
.end method
