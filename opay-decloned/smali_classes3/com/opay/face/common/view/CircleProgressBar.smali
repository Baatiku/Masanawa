.class public Lcom/opay/face/common/view/CircleProgressBar;
.super Landroid/view/View;
.source "CircleProgressBar.java"


# instance fields
.field public a:Landroid/graphics/RectF;

.field public b:Landroid/graphics/Paint;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/opay/face/common/view/CircleProgressBar;->d:I

    .line 3
    iput v0, p0, Lcom/opay/face/common/view/CircleProgressBar;->e:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/opay/face/common/view/CircleProgressBar;->g:I

    const v0, -0x9c4701

    .line 5
    iput v0, p0, Lcom/opay/face/common/view/CircleProgressBar;->h:I

    .line 6
    const-string v0, "#0039ff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/opay/face/common/view/CircleProgressBar;->i:I

    .line 7
    const-string v0, "#55e4eaff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/opay/face/common/view/CircleProgressBar;->j:I

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/opay/face/common/view/CircleProgressBar;->a:Landroid/graphics/RectF;

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    .line 10
    invoke-static {p1, v0}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/opay/face/common/view/CircleProgressBar;->f:I

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dipToPx(context, 3):"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/opay/face/common/view/CircleProgressBar;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "info"

    invoke-static {v0, p1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0xa

    .line 13
    iput p2, p0, Lcom/opay/face/common/view/CircleProgressBar;->d:I

    .line 14
    iput p2, p0, Lcom/opay/face/common/view/CircleProgressBar;->e:I

    const/4 p2, -0x1

    .line 15
    iput p2, p0, Lcom/opay/face/common/view/CircleProgressBar;->g:I

    const p2, -0x9c4701

    .line 16
    iput p2, p0, Lcom/opay/face/common/view/CircleProgressBar;->h:I

    .line 17
    const-string p2, "#0039ff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/opay/face/common/view/CircleProgressBar;->i:I

    .line 18
    const-string p2, "#55e4eaff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/opay/face/common/view/CircleProgressBar;->j:I

    .line 19
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/opay/face/common/view/CircleProgressBar;->a:Landroid/graphics/RectF;

    .line 20
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    const/high16 p2, 0x40400000    # 3.0f

    .line 21
    invoke-static {p1, p2}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/opay/face/common/view/CircleProgressBar;->f:I

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dipToPx(context, 3):"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/opay/face/common/view/CircleProgressBar;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "info"

    invoke-static {p2, p1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMaxProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/common/view/CircleProgressBar;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    move v1, v0

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 26
    .line 27
    iget v4, p0, Lcom/opay/face/common/view/CircleProgressBar;->j:I

    .line 28
    .line 29
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v4, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 37
    .line 38
    iget v5, p0, Lcom/opay/face/common/view/CircleProgressBar;->f:I

    .line 39
    .line 40
    int-to-float v5, v5

    .line 41
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    .line 43
    .line 44
    iget-object v4, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 45
    .line 46
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    .line 50
    .line 51
    iget-object v4, p0, Lcom/opay/face/common/view/CircleProgressBar;->a:Landroid/graphics/RectF;

    .line 52
    .line 53
    iget v5, p0, Lcom/opay/face/common/view/CircleProgressBar;->f:I

    .line 54
    .line 55
    div-int/lit8 v6, v5, 0x2

    .line 56
    .line 57
    add-int/lit8 v6, v6, 0x2

    .line 58
    .line 59
    int-to-float v6, v6

    .line 60
    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 61
    .line 62
    div-int/lit8 v6, v5, 0x2

    .line 63
    .line 64
    add-int/lit8 v6, v6, 0x2

    .line 65
    .line 66
    int-to-float v6, v6

    .line 67
    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 68
    .line 69
    div-int/lit8 v6, v5, 0x2

    .line 70
    .line 71
    sub-int v6, v0, v6

    .line 72
    .line 73
    add-int/lit8 v6, v6, -0x2

    .line 74
    .line 75
    int-to-float v6, v6

    .line 76
    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 77
    .line 78
    div-int/lit8 v5, v5, 0x2

    .line 79
    .line 80
    sub-int v5, v1, v5

    .line 81
    .line 82
    add-int/lit8 v5, v5, -0x2

    .line 83
    .line 84
    int-to-float v5, v5

    .line 85
    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 86
    .line 87
    iget-object v4, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 88
    .line 89
    iget v5, p0, Lcom/opay/face/common/view/CircleProgressBar;->j:I

    .line 90
    .line 91
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    .line 93
    .line 94
    iget-object v7, p0, Lcom/opay/face/common/view/CircleProgressBar;->a:Landroid/graphics/RectF;

    .line 95
    .line 96
    const/4 v10, 0x1

    .line 97
    iget-object v11, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 98
    .line 99
    const/high16 v8, -0x3d4c0000    # -90.0f

    .line 100
    .line 101
    const/high16 v9, 0x43b40000    # 360.0f

    .line 102
    .line 103
    move-object v6, p1

    .line 104
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 105
    .line 106
    .line 107
    iget-object v4, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 108
    .line 109
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 110
    .line 111
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 112
    .line 113
    .line 114
    iget-object v7, p0, Lcom/opay/face/common/view/CircleProgressBar;->a:Landroid/graphics/RectF;

    .line 115
    .line 116
    iget-object v11, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 117
    .line 118
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 119
    .line 120
    .line 121
    iget-object v4, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 122
    .line 123
    iget v6, p0, Lcom/opay/face/common/view/CircleProgressBar;->h:I

    .line 124
    .line 125
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    .line 127
    .line 128
    iget-object v4, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 129
    .line 130
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 131
    .line 132
    .line 133
    iget-object v7, p0, Lcom/opay/face/common/view/CircleProgressBar;->a:Landroid/graphics/RectF;

    .line 134
    .line 135
    iget v4, p0, Lcom/opay/face/common/view/CircleProgressBar;->e:I

    .line 136
    .line 137
    mul-int/lit16 v4, v4, 0x168

    .line 138
    .line 139
    iget v5, p0, Lcom/opay/face/common/view/CircleProgressBar;->d:I

    .line 140
    .line 141
    div-int/2addr v4, v5

    .line 142
    rsub-int v4, v4, 0x168

    .line 143
    .line 144
    int-to-float v9, v4

    .line 145
    const/4 v10, 0x0

    .line 146
    iget-object v11, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 147
    .line 148
    move-object v6, p1

    .line 149
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 150
    .line 151
    .line 152
    iget-object v4, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 167
    .line 168
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 169
    .line 170
    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    iget v5, p0, Lcom/opay/face/common/view/CircleProgressBar;->e:I

    .line 177
    .line 178
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v5, ""

    .line 182
    .line 183
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    div-int/lit8 v5, v1, 0x3

    .line 191
    .line 192
    iget-object v6, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 193
    .line 194
    int-to-float v7, v5

    .line 195
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 196
    .line 197
    .line 198
    iget-object v6, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 199
    .line 200
    iget v7, p0, Lcom/opay/face/common/view/CircleProgressBar;->g:I

    .line 201
    .line 202
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    .line 204
    .line 205
    iget-object v6, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 206
    .line 207
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    invoke-virtual {v6, v4, v2, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    float-to-int v6, v6

    .line 216
    iget-object v7, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 217
    .line 218
    sget-object v8, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 219
    .line 220
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 221
    .line 222
    .line 223
    div-int/lit8 v0, v0, 0x2

    .line 224
    .line 225
    div-int/lit8 v6, v6, 0x2

    .line 226
    .line 227
    sub-int/2addr v0, v6

    .line 228
    int-to-float v0, v0

    .line 229
    div-int/lit8 v6, v1, 0x2

    .line 230
    .line 231
    div-int/lit8 v5, v5, 0x3

    .line 232
    .line 233
    add-int/2addr v6, v5

    .line 234
    int-to-float v5, v6

    .line 235
    iget-object v6, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 236
    .line 237
    invoke-virtual {p1, v4, v0, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 241
    .line 242
    const/high16 v0, 0x3f800000    # 1.0f

    .line 243
    .line 244
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 245
    .line 246
    .line 247
    div-int/lit8 v1, v1, 0x4

    .line 248
    .line 249
    iget-object p1, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 250
    .line 251
    const-string v0, "%"

    .line 252
    .line 253
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 257
    .line 258
    int-to-float v0, v1

    .line 259
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 260
    .line 261
    .line 262
    iget-object p1, p0, Lcom/opay/face/common/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    .line 263
    .line 264
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 265
    .line 266
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 267
    .line 268
    .line 269
    return-void
.end method

.method public setCircleColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/common/view/CircleProgressBar;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public setCircleRollColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/common/view/CircleProgressBar;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/common/view/CircleProgressBar;->c:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/opay/face/common/view/CircleProgressBar;->c:I

    .line 7
    .line 8
    iput p1, p0, Lcom/opay/face/common/view/CircleProgressBar;->d:I

    .line 9
    .line 10
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/common/view/CircleProgressBar;->e:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProgressNotInUiThread(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/common/view/CircleProgressBar;->e:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/common/view/CircleProgressBar;->g:I

    .line 2
    .line 3
    return-void
.end method
