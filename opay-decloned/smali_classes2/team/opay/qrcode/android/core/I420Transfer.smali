.class public Lteam/opay/qrcode/android/core/I420Transfer;
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
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "only support COLOR_FormatI420 and COLOR_FormatNV21"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Lteam/opay/qrcode/android/core/I420Transfer;->b(Landroid/media/Image;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_e

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    mul-int v8, v5, v6

    .line 45
    .line 46
    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    mul-int v4, v4, v8

    .line 51
    .line 52
    div-int/lit8 v4, v4, 0x8

    .line 53
    .line 54
    new-array v4, v4, [B

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    aget-object v10, v7, v9

    .line 58
    .line 59
    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    new-array v10, v10, [B

    .line 64
    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v12, 0x0

    .line 67
    const/4 v13, 0x1

    .line 68
    :goto_1
    array-length v14, v7

    .line 69
    if-ge v11, v14, :cond_d

    .line 70
    .line 71
    if-eqz v11, :cond_6

    .line 72
    .line 73
    if-eq v11, v2, :cond_4

    .line 74
    .line 75
    if-eq v11, v1, :cond_2

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_2
    if-ne v0, v2, :cond_3

    .line 79
    .line 80
    int-to-double v12, v8

    .line 81
    const-wide/high16 v14, 0x3ff4000000000000L    # 1.25

    .line 82
    .line 83
    mul-double v12, v12, v14

    .line 84
    .line 85
    double-to-int v12, v12

    .line 86
    :goto_2
    const/4 v13, 0x1

    .line 87
    goto :goto_4

    .line 88
    :cond_3
    if-ne v0, v1, :cond_7

    .line 89
    .line 90
    move v12, v8

    .line 91
    :goto_3
    const/4 v13, 0x2

    .line 92
    goto :goto_4

    .line 93
    :cond_4
    if-ne v0, v2, :cond_5

    .line 94
    .line 95
    move v12, v8

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    if-ne v0, v1, :cond_7

    .line 98
    .line 99
    add-int/lit8 v12, v8, 0x1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_6
    const/4 v12, 0x0

    .line 103
    goto :goto_2

    .line 104
    :cond_7
    :goto_4
    aget-object v14, v7, v11

    .line 105
    .line 106
    invoke-virtual {v14}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    aget-object v15, v7, v11

    .line 111
    .line 112
    invoke-virtual {v15}, Landroid/media/Image$Plane;->getRowStride()I

    .line 113
    .line 114
    .line 115
    move-result v15

    .line 116
    aget-object v16, v7, v11

    .line 117
    .line 118
    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v11, :cond_8

    .line 123
    .line 124
    const/16 v16, 0x0

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_8
    const/16 v16, 0x1

    .line 128
    .line 129
    :goto_5
    shr-int v9, v5, v16

    .line 130
    .line 131
    shr-int v2, v6, v16

    .line 132
    .line 133
    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 134
    .line 135
    shr-int v0, v0, v16

    .line 136
    .line 137
    mul-int v0, v0, v15

    .line 138
    .line 139
    move/from16 v18, v5

    .line 140
    .line 141
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 142
    .line 143
    shr-int v5, v5, v16

    .line 144
    .line 145
    mul-int v5, v5, v1

    .line 146
    .line 147
    add-int/2addr v0, v5

    .line 148
    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 149
    .line 150
    .line 151
    const/4 v0, 0x0

    .line 152
    :goto_6
    if-ge v0, v2, :cond_c

    .line 153
    .line 154
    const/4 v5, 0x1

    .line 155
    if-ne v1, v5, :cond_9

    .line 156
    .line 157
    if-ne v13, v5, :cond_9

    .line 158
    .line 159
    invoke-virtual {v14, v4, v12, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 160
    .line 161
    .line 162
    add-int/2addr v12, v9

    .line 163
    move-object/from16 v17, v3

    .line 164
    .line 165
    move v3, v9

    .line 166
    goto :goto_8

    .line 167
    :cond_9
    add-int/lit8 v16, v9, -0x1

    .line 168
    .line 169
    mul-int v16, v16, v1

    .line 170
    .line 171
    move-object/from16 v17, v3

    .line 172
    .line 173
    add-int/lit8 v3, v16, 0x1

    .line 174
    .line 175
    const/4 v5, 0x0

    .line 176
    invoke-virtual {v14, v10, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 177
    .line 178
    .line 179
    :goto_7
    if-ge v5, v9, :cond_a

    .line 180
    .line 181
    mul-int v19, v5, v1

    .line 182
    .line 183
    aget-byte v19, v10, v19

    .line 184
    .line 185
    aput-byte v19, v4, v12

    .line 186
    .line 187
    add-int/2addr v12, v13

    .line 188
    add-int/lit8 v5, v5, 0x1

    .line 189
    .line 190
    goto :goto_7

    .line 191
    :cond_a
    :goto_8
    add-int/lit8 v5, v2, -0x1

    .line 192
    .line 193
    if-ge v0, v5, :cond_b

    .line 194
    .line 195
    invoke-virtual {v14}, Ljava/nio/Buffer;->position()I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    add-int/2addr v5, v15

    .line 200
    sub-int/2addr v5, v3

    .line 201
    invoke-virtual {v14, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 202
    .line 203
    .line 204
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 205
    .line 206
    move-object/from16 v3, v17

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_c
    move-object/from16 v17, v3

    .line 210
    .line 211
    add-int/lit8 v11, v11, 0x1

    .line 212
    .line 213
    move/from16 v0, p1

    .line 214
    .line 215
    move/from16 v5, v18

    .line 216
    .line 217
    const/4 v1, 0x2

    .line 218
    const/4 v2, 0x1

    .line 219
    const/4 v9, 0x0

    .line 220
    goto/16 :goto_1

    .line 221
    .line 222
    :cond_d
    return-object v4

    .line 223
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    .line 224
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v2, "can\'t convert Image to byte array, format "

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v0
.end method

.method public static b(Landroid/media/Image;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x11

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x23

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const v0, 0x32315659

    .line 14
    .line 15
    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method
