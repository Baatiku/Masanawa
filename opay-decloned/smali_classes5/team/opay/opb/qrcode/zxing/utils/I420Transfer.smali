.class public Lteam/opay/opb/qrcode/zxing/utils/I420Transfer;
.super Ljava/lang/Object;
.source "I420Transfer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
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

.method public static a(Landroid/media/Image;I)[B
    .locals 20

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    if-eqz p0, :cond_f

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "only support COLOR_FormatI420 and COLOR_FormatNV21"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Lteam/opay/opb/qrcode/zxing/utils/I420Transfer;->b(Landroid/media/Image;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_e

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    mul-int v8, v5, v6

    .line 47
    .line 48
    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    mul-int v4, v4, v8

    .line 53
    .line 54
    div-int/lit8 v4, v4, 0x8

    .line 55
    .line 56
    new-array v4, v4, [B

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    aget-object v10, v7, v9

    .line 60
    .line 61
    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    new-array v10, v10, [B

    .line 66
    .line 67
    const/4 v11, 0x0

    .line 68
    const/4 v12, 0x0

    .line 69
    const/4 v13, 0x1

    .line 70
    :goto_1
    array-length v14, v7

    .line 71
    if-ge v11, v14, :cond_d

    .line 72
    .line 73
    if-eqz v11, :cond_6

    .line 74
    .line 75
    if-eq v11, v2, :cond_4

    .line 76
    .line 77
    if-eq v11, v1, :cond_2

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_2
    if-ne v0, v2, :cond_3

    .line 81
    .line 82
    int-to-double v12, v8

    .line 83
    const-wide/high16 v14, 0x3ff4000000000000L    # 1.25

    .line 84
    .line 85
    mul-double v12, v12, v14

    .line 86
    .line 87
    double-to-int v12, v12

    .line 88
    :goto_2
    const/4 v13, 0x1

    .line 89
    goto :goto_4

    .line 90
    :cond_3
    if-ne v0, v1, :cond_7

    .line 91
    .line 92
    move v12, v8

    .line 93
    :goto_3
    const/4 v13, 0x2

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    if-ne v0, v2, :cond_5

    .line 96
    .line 97
    move v12, v8

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    if-ne v0, v1, :cond_7

    .line 100
    .line 101
    add-int/lit8 v12, v8, 0x1

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_6
    const/4 v12, 0x0

    .line 105
    goto :goto_2

    .line 106
    :cond_7
    :goto_4
    aget-object v14, v7, v11

    .line 107
    .line 108
    invoke-virtual {v14}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 109
    .line 110
    .line 111
    move-result-object v14

    .line 112
    aget-object v15, v7, v11

    .line 113
    .line 114
    invoke-virtual {v15}, Landroid/media/Image$Plane;->getRowStride()I

    .line 115
    .line 116
    .line 117
    move-result v15

    .line 118
    aget-object v16, v7, v11

    .line 119
    .line 120
    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-nez v11, :cond_8

    .line 125
    .line 126
    const/16 v16, 0x0

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_8
    const/16 v16, 0x1

    .line 130
    .line 131
    :goto_5
    shr-int v9, v5, v16

    .line 132
    .line 133
    shr-int v2, v6, v16

    .line 134
    .line 135
    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 136
    .line 137
    shr-int v0, v0, v16

    .line 138
    .line 139
    mul-int v0, v0, v15

    .line 140
    .line 141
    move/from16 v18, v5

    .line 142
    .line 143
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 144
    .line 145
    shr-int v5, v5, v16

    .line 146
    .line 147
    mul-int v5, v5, v1

    .line 148
    .line 149
    add-int/2addr v0, v5

    .line 150
    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 151
    .line 152
    .line 153
    const/4 v0, 0x0

    .line 154
    :goto_6
    if-ge v0, v2, :cond_c

    .line 155
    .line 156
    const/4 v5, 0x1

    .line 157
    if-ne v1, v5, :cond_9

    .line 158
    .line 159
    if-ne v13, v5, :cond_9

    .line 160
    .line 161
    invoke-virtual {v14, v4, v12, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 162
    .line 163
    .line 164
    add-int/2addr v12, v9

    .line 165
    move-object/from16 v17, v3

    .line 166
    .line 167
    move v3, v9

    .line 168
    goto :goto_8

    .line 169
    :cond_9
    add-int/lit8 v16, v9, -0x1

    .line 170
    .line 171
    mul-int v16, v16, v1

    .line 172
    .line 173
    move-object/from16 v17, v3

    .line 174
    .line 175
    add-int/lit8 v3, v16, 0x1

    .line 176
    .line 177
    const/4 v5, 0x0

    .line 178
    invoke-virtual {v14, v10, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 179
    .line 180
    .line 181
    :goto_7
    if-ge v5, v9, :cond_a

    .line 182
    .line 183
    mul-int v19, v5, v1

    .line 184
    .line 185
    aget-byte v19, v10, v19

    .line 186
    .line 187
    aput-byte v19, v4, v12

    .line 188
    .line 189
    add-int/2addr v12, v13

    .line 190
    add-int/lit8 v5, v5, 0x1

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_a
    :goto_8
    add-int/lit8 v5, v2, -0x1

    .line 194
    .line 195
    if-ge v0, v5, :cond_b

    .line 196
    .line 197
    invoke-virtual {v14}, Ljava/nio/Buffer;->position()I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    add-int/2addr v5, v15

    .line 202
    sub-int/2addr v5, v3

    .line 203
    invoke-virtual {v14, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 204
    .line 205
    .line 206
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 207
    .line 208
    move-object/from16 v3, v17

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_c
    move-object/from16 v17, v3

    .line 212
    .line 213
    add-int/lit8 v11, v11, 0x1

    .line 214
    .line 215
    move/from16 v0, p1

    .line 216
    .line 217
    move/from16 v5, v18

    .line 218
    .line 219
    const/4 v1, 0x2

    .line 220
    const/4 v2, 0x1

    .line 221
    const/4 v9, 0x0

    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :cond_d
    return-object v4

    .line 225
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    .line 226
    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string v2, "can\'t convert Image to byte array, format "

    .line 233
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v0

    .line 252
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 253
    .line 254
    const-string v1, "image must not be null"

    .line 255
    .line 256
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v0
.end method

.method public static b(Landroid/media/Image;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/16 v1, 0x11

    .line 10
    .line 11
    if-eq p0, v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x23

    .line 14
    .line 15
    if-eq p0, v1, :cond_1

    .line 16
    .line 17
    const v1, 0x32315659

    .line 18
    .line 19
    .line 20
    if-eq p0, v1, :cond_1

    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    const/4 p0, 0x1

    .line 24
    return p0
.end method
