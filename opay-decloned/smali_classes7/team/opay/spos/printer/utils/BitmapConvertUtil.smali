.class public Lteam/opay/spos/printer/utils/BitmapConvertUtil;
.super Ljava/lang/Object;
.source "BitmapConvertUtil.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:Landroid/content/Context;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/Paint;

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x180

    .line 5
    .line 6
    iput v0, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->a:I

    .line 7
    .line 8
    const/16 v1, 0x240

    .line 9
    .line 10
    iput v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->b:I

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    iput v2, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->c:I

    .line 14
    .line 15
    iput v0, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->e:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->f:I

    .line 19
    .line 20
    iput v2, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->g:I

    .line 21
    .line 22
    iput v0, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 23
    .line 24
    iput v0, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->j:I

    .line 25
    .line 26
    iput-object p1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->d:Landroid/content/Context;

    .line 27
    .line 28
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 29
    .line 30
    const-string v0, "CPOS"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const-string v0, "STAR A-6300"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    :cond_0
    iput v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->e:I

    .line 47
    .line 48
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/spos/printer/utils/PrintItemPattern;Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern;->d()Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->e:I

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sub-int/2addr v1, v2

    .line 16
    div-int/lit8 v1, v1, 0x2

    .line 17
    .line 18
    int-to-float v1, v1

    .line 19
    iget v2, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 20
    .line 21
    int-to-float v2, v2

    .line 22
    new-instance v3, Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 31
    .line 32
    .line 33
    iget p2, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr p2, v1

    .line 40
    iput p2, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final b(Lteam/opay/spos/printer/utils/PrintItemPattern;Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    const-string v2, "center"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    const-string v2, "right"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->g:I

    .line 31
    .line 32
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->e:I

    .line 39
    .line 40
    iput v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->g:I

    .line 41
    .line 42
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->e:I

    .line 49
    .line 50
    div-int/lit8 v1, v1, 0x2

    .line 51
    .line 52
    iput v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->g:I

    .line 53
    .line 54
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern;->b()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 64
    .line 65
    .line 66
    const-string v2, "large"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    const-string v2, "small"

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    const/high16 v1, 0x41b00000    # 22.0f

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 85
    .line 86
    .line 87
    const/16 v1, 0x18

    .line 88
    .line 89
    iput v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->j:I

    .line 90
    .line 91
    invoke-virtual {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern;->e()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    iget v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 98
    .line 99
    invoke-virtual {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern;->e()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    mul-int/lit8 v2, v2, 0x1a

    .line 104
    .line 105
    add-int/2addr v1, v2

    .line 106
    iput v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    const/high16 v1, 0x41880000    # 17.0f

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    .line 113
    .line 114
    const/16 v1, 0x13

    .line 115
    .line 116
    iput v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->j:I

    .line 117
    .line 118
    invoke-virtual {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern;->e()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_4

    .line 123
    .line 124
    iget v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 125
    .line 126
    invoke-virtual {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern;->e()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    mul-int/lit8 v2, v2, 0x15

    .line 131
    .line 132
    add-int/2addr v1, v2

    .line 133
    iput v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    const/high16 v1, 0x42000000    # 32.0f

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 139
    .line 140
    .line 141
    const/16 v1, 0x22

    .line 142
    .line 143
    iput v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->j:I

    .line 144
    .line 145
    invoke-virtual {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern;->e()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_4

    .line 150
    .line 151
    iget v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 152
    .line 153
    invoke-virtual {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern;->e()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    mul-int/lit8 v2, v2, 0x24

    .line 158
    .line 159
    add-int/2addr v1, v2

    .line 160
    iput v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 161
    .line 162
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v2, ""

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern;->f()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    iput-object v0, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->i:Landroid/graphics/Paint;

    .line 184
    .line 185
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-nez v2, :cond_8

    .line 190
    .line 191
    invoke-virtual {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern;->g()Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-nez p1, :cond_6

    .line 196
    .line 197
    const-string p1, "\n"

    .line 198
    .line 199
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_5

    .line 204
    .line 205
    iget v2, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 206
    .line 207
    iget v3, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->j:I

    .line 208
    .line 209
    add-int/2addr v2, v3

    .line 210
    iput v2, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 211
    .line 212
    :cond_5
    iget v2, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->g:I

    .line 213
    .line 214
    int-to-float v2, v2

    .line 215
    iget v3, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 216
    .line 217
    int-to-float v3, v3

    .line 218
    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-eqz p1, :cond_7

    .line 226
    .line 227
    iget p1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 228
    .line 229
    add-int/lit8 p1, p1, 0x2

    .line 230
    .line 231
    iput p1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_6
    invoke-virtual {p0, p2, v1}, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->d(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_7
    :goto_2
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 238
    .line 239
    .line 240
    :cond_8
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/spos/printer/utils/PrintItemPattern;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_2

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lteam/opay/spos/printer/utils/PrintItemPattern;

    .line 13
    .line 14
    invoke-virtual {v1}, Lteam/opay/spos/printer/utils/PrintItemPattern;->f()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lteam/opay/spos/printer/utils/PrintItemPattern;

    .line 29
    .line 30
    invoke-virtual {v1}, Lteam/opay/spos/printer/utils/PrintItemPattern;->f()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "\n"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->f:I

    .line 43
    .line 44
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lteam/opay/spos/printer/utils/PrintItemPattern;

    .line 49
    .line 50
    invoke-virtual {v2}, Lteam/opay/spos/printer/utils/PrintItemPattern;->c()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    add-int/2addr v1, v2

    .line 55
    iput v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->f:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lteam/opay/spos/printer/utils/PrintItemPattern;

    .line 63
    .line 64
    invoke-virtual {v1}, Lteam/opay/spos/printer/utils/PrintItemPattern;->f()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    iget v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->f:I

    .line 75
    .line 76
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lteam/opay/spos/printer/utils/PrintItemPattern;

    .line 81
    .line 82
    invoke-virtual {v2}, Lteam/opay/spos/printer/utils/PrintItemPattern;->c()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    add-int/2addr v1, v2

    .line 87
    iput v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->f:I

    .line 88
    .line 89
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget v0, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0xa

    .line 4
    .line 5
    iget v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 6
    .line 7
    iget v2, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->j:I

    .line 8
    .line 9
    add-int/2addr v1, v2

    .line 10
    iput v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 11
    .line 12
    iget-object v2, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->i:Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    int-to-float v7, v0

    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v6, 0x1

    .line 22
    move-object v3, p2

    .line 23
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget v2, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->g:I

    .line 33
    .line 34
    int-to-float v2, v2

    .line 35
    iget v3, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 36
    .line 37
    int-to-float v3, v3

    .line 38
    iget-object v4, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->i:Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 41
    .line 42
    .line 43
    iget v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x2

    .line 46
    .line 47
    iput v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-lez v0, :cond_0

    .line 62
    .line 63
    invoke-virtual {p0, p1, p2}, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->d(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method public final e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    return-object p1
.end method

.method public f(Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/spos/printer/utils/PrintItemPattern;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->c(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget v0, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->e:I

    .line 5
    .line 6
    iget v1, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->f:I

    .line 7
    .line 8
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Landroid/graphics/Canvas;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ge v2, v3, :cond_1

    .line 29
    .line 30
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lteam/opay/spos/printer/utils/PrintItemPattern;

    .line 35
    .line 36
    invoke-virtual {v3}, Lteam/opay/spos/printer/utils/PrintItemPattern;->d()Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0, v3, v1}, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->a(Lteam/opay/spos/printer/utils/PrintItemPattern;Landroid/graphics/Canvas;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    invoke-virtual {p0, v3, v1}, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->b(Lteam/opay/spos/printer/utils/PrintItemPattern;Landroid/graphics/Canvas;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    return-object p1
.end method

.method public g(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/spos/printer/utils/PrintItemPattern;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_3

    .line 18
    .line 19
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Lteam/opay/spos/printer/utils/PrintItemPattern;

    .line 24
    .line 25
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v4, v3, 0x1

    .line 29
    .line 30
    rem-int v5, v4, p2

    .line 31
    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    add-int/lit8 v5, v5, -0x1

    .line 39
    .line 40
    if-ne v3, v5, :cond_2

    .line 41
    .line 42
    :cond_0
    iput v2, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->f:I

    .line 43
    .line 44
    iput v2, p0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->h:I

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->f(Ljava/util/List;)Landroid/graphics/Bitmap;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    :cond_2
    move v3, v4

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    return-object v0
.end method
