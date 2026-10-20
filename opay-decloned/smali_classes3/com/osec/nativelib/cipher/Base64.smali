.class public Lcom/osec/nativelib/cipher/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final BASELENGTH:I = 0xff

.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field static final EIGHTBIT:I = 0x8

.field static final FOURBYTE:I = 0x4

.field static final LOOKUPLENGTH:I = 0x40

.field static final PAD:B = 0x3dt

.field static final SIGN:I = -0x80

.field static final SIXTEENBIT:I = 0x10

.field static final TWENTYFOURBITGROUP:I = 0x18

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v0, "\r\n"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/osec/nativelib/cipher/Base64;->CHUNK_SEPARATOR:[B

    .line 8
    .line 9
    const/16 v0, 0xff

    .line 10
    .line 11
    new-array v1, v0, [B

    .line 12
    .line 13
    sput-object v1, Lcom/osec/nativelib/cipher/Base64;->base64Alphabet:[B

    .line 14
    .line 15
    const/16 v1, 0x40

    .line 16
    .line 17
    new-array v1, v1, [B

    .line 18
    .line 19
    sput-object v1, Lcom/osec/nativelib/cipher/Base64;->lookUpBase64Alphabet:[B

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v0, :cond_0

    .line 24
    .line 25
    sget-object v3, Lcom/osec/nativelib/cipher/Base64;->base64Alphabet:[B

    .line 26
    .line 27
    const/4 v4, -0x1

    .line 28
    aput-byte v4, v3, v2

    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/16 v0, 0x5a

    .line 34
    .line 35
    :goto_1
    const/16 v2, 0x41

    .line 36
    .line 37
    if-lt v0, v2, :cond_1

    .line 38
    .line 39
    sget-object v2, Lcom/osec/nativelib/cipher/Base64;->base64Alphabet:[B

    .line 40
    .line 41
    add-int/lit8 v3, v0, -0x41

    .line 42
    .line 43
    int-to-byte v3, v3

    .line 44
    aput-byte v3, v2, v0

    .line 45
    .line 46
    add-int/lit8 v0, v0, -0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/16 v0, 0x7a

    .line 50
    .line 51
    :goto_2
    const/16 v2, 0x61

    .line 52
    .line 53
    if-lt v0, v2, :cond_2

    .line 54
    .line 55
    sget-object v2, Lcom/osec/nativelib/cipher/Base64;->base64Alphabet:[B

    .line 56
    .line 57
    add-int/lit8 v3, v0, -0x47

    .line 58
    .line 59
    int-to-byte v3, v3

    .line 60
    aput-byte v3, v2, v0

    .line 61
    .line 62
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/16 v0, 0x39

    .line 66
    .line 67
    :goto_3
    const/16 v2, 0x30

    .line 68
    .line 69
    if-lt v0, v2, :cond_3

    .line 70
    .line 71
    sget-object v2, Lcom/osec/nativelib/cipher/Base64;->base64Alphabet:[B

    .line 72
    .line 73
    add-int/lit8 v3, v0, 0x4

    .line 74
    .line 75
    int-to-byte v3, v3

    .line 76
    aput-byte v3, v2, v0

    .line 77
    .line 78
    add-int/lit8 v0, v0, -0x1

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    sget-object v0, Lcom/osec/nativelib/cipher/Base64;->base64Alphabet:[B

    .line 82
    .line 83
    const/16 v2, 0x2b

    .line 84
    .line 85
    const/16 v3, 0x3e

    .line 86
    .line 87
    aput-byte v3, v0, v2

    .line 88
    .line 89
    const/16 v4, 0x2f

    .line 90
    .line 91
    const/16 v5, 0x3f

    .line 92
    .line 93
    aput-byte v5, v0, v4

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    :goto_4
    const/16 v6, 0x19

    .line 97
    .line 98
    if-gt v0, v6, :cond_4

    .line 99
    .line 100
    sget-object v6, Lcom/osec/nativelib/cipher/Base64;->lookUpBase64Alphabet:[B

    .line 101
    .line 102
    add-int/lit8 v7, v0, 0x41

    .line 103
    .line 104
    int-to-byte v7, v7

    .line 105
    aput-byte v7, v6, v0

    .line 106
    .line 107
    add-int/lit8 v0, v0, 0x1

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_4
    const/16 v0, 0x1a

    .line 111
    .line 112
    const/4 v6, 0x0

    .line 113
    :goto_5
    const/16 v7, 0x33

    .line 114
    .line 115
    if-gt v0, v7, :cond_5

    .line 116
    .line 117
    sget-object v7, Lcom/osec/nativelib/cipher/Base64;->lookUpBase64Alphabet:[B

    .line 118
    .line 119
    add-int/lit8 v8, v6, 0x61

    .line 120
    .line 121
    int-to-byte v8, v8

    .line 122
    aput-byte v8, v7, v0

    .line 123
    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 125
    .line 126
    add-int/lit8 v6, v6, 0x1

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_5
    const/16 v0, 0x34

    .line 130
    .line 131
    :goto_6
    const/16 v6, 0x3d

    .line 132
    .line 133
    if-gt v0, v6, :cond_6

    .line 134
    .line 135
    sget-object v6, Lcom/osec/nativelib/cipher/Base64;->lookUpBase64Alphabet:[B

    .line 136
    .line 137
    add-int/lit8 v7, v1, 0x30

    .line 138
    .line 139
    int-to-byte v7, v7

    .line 140
    aput-byte v7, v6, v0

    .line 141
    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 143
    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_6
    sget-object v0, Lcom/osec/nativelib/cipher/Base64;->lookUpBase64Alphabet:[B

    .line 148
    .line 149
    aput-byte v2, v0, v3

    .line 150
    .line 151
    aput-byte v4, v0, v5

    .line 152
    .line 153
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

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2
    const-string v0, "UTF-8"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ""

    const/16 v3, 0x28

    if-ge v1, v3, :cond_0

    return-object v2

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/osec/nativelib/cipher/Base64;->decode([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/osec/nativelib/cipher/Base64;->decode([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v2
.end method

.method public static decode([B)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/osec/nativelib/cipher/Base64;->decodeBase64([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode2(Ljava/lang/String;)[B
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/osec/nativelib/cipher/Base64;->removeWhiteSpace([C)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    rem-int/lit8 v2, v1, 0x4

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    div-int/lit8 v1, v1, 0x4

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    new-array p0, v2, [B

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    mul-int/lit8 v3, v1, 0x3

    .line 27
    .line 28
    new-array v3, v3, [B

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    :goto_0
    add-int/lit8 v7, v1, -0x1

    .line 34
    .line 35
    if-ge v4, v7, :cond_5

    .line 36
    .line 37
    add-int/lit8 v7, v5, 0x1

    .line 38
    .line 39
    aget-char v8, p0, v5

    .line 40
    .line 41
    invoke-static {v8}, Lcom/osec/nativelib/cipher/Base64;->isData(C)Z

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    if-eqz v9, :cond_4

    .line 46
    .line 47
    add-int/lit8 v9, v5, 0x2

    .line 48
    .line 49
    aget-char v7, p0, v7

    .line 50
    .line 51
    invoke-static {v7}, Lcom/osec/nativelib/cipher/Base64;->isData(C)Z

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    if-eqz v10, :cond_4

    .line 56
    .line 57
    add-int/lit8 v10, v5, 0x3

    .line 58
    .line 59
    aget-char v9, p0, v9

    .line 60
    .line 61
    invoke-static {v9}, Lcom/osec/nativelib/cipher/Base64;->isData(C)Z

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    if-eqz v11, :cond_4

    .line 66
    .line 67
    add-int/lit8 v5, v5, 0x4

    .line 68
    .line 69
    aget-char v10, p0, v10

    .line 70
    .line 71
    invoke-static {v10}, Lcom/osec/nativelib/cipher/Base64;->isData(C)Z

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    if-nez v11, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    sget-object v11, Lcom/osec/nativelib/cipher/Base64;->base64Alphabet:[B

    .line 79
    .line 80
    aget-byte v8, v11, v8

    .line 81
    .line 82
    aget-byte v7, v11, v7

    .line 83
    .line 84
    aget-byte v9, v11, v9

    .line 85
    .line 86
    aget-byte v10, v11, v10

    .line 87
    .line 88
    add-int/lit8 v11, v6, 0x1

    .line 89
    .line 90
    shl-int/lit8 v8, v8, 0x2

    .line 91
    .line 92
    shr-int/lit8 v12, v7, 0x4

    .line 93
    .line 94
    or-int/2addr v8, v12

    .line 95
    int-to-byte v8, v8

    .line 96
    aput-byte v8, v3, v6

    .line 97
    .line 98
    add-int/lit8 v8, v6, 0x2

    .line 99
    .line 100
    and-int/lit8 v7, v7, 0xf

    .line 101
    .line 102
    shl-int/lit8 v7, v7, 0x4

    .line 103
    .line 104
    shr-int/lit8 v12, v9, 0x2

    .line 105
    .line 106
    and-int/lit8 v12, v12, 0xf

    .line 107
    .line 108
    or-int/2addr v7, v12

    .line 109
    int-to-byte v7, v7

    .line 110
    aput-byte v7, v3, v11

    .line 111
    .line 112
    add-int/lit8 v6, v6, 0x3

    .line 113
    .line 114
    shl-int/lit8 v7, v9, 0x6

    .line 115
    .line 116
    or-int/2addr v7, v10

    .line 117
    int-to-byte v7, v7

    .line 118
    aput-byte v7, v3, v8

    .line 119
    .line 120
    add-int/lit8 v4, v4, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    :goto_1
    return-object v0

    .line 124
    :cond_5
    add-int/lit8 v1, v5, 0x1

    .line 125
    .line 126
    aget-char v7, p0, v5

    .line 127
    .line 128
    invoke-static {v7}, Lcom/osec/nativelib/cipher/Base64;->isData(C)Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-eqz v8, :cond_c

    .line 133
    .line 134
    add-int/lit8 v8, v5, 0x2

    .line 135
    .line 136
    aget-char v1, p0, v1

    .line 137
    .line 138
    invoke-static {v1}, Lcom/osec/nativelib/cipher/Base64;->isData(C)Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-nez v9, :cond_6

    .line 143
    .line 144
    goto/16 :goto_3

    .line 145
    .line 146
    :cond_6
    sget-object v9, Lcom/osec/nativelib/cipher/Base64;->base64Alphabet:[B

    .line 147
    .line 148
    aget-byte v7, v9, v7

    .line 149
    .line 150
    aget-byte v1, v9, v1

    .line 151
    .line 152
    add-int/lit8 v5, v5, 0x3

    .line 153
    .line 154
    aget-char v8, p0, v8

    .line 155
    .line 156
    aget-char p0, p0, v5

    .line 157
    .line 158
    invoke-static {v8}, Lcom/osec/nativelib/cipher/Base64;->isData(C)Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_8

    .line 163
    .line 164
    invoke-static {p0}, Lcom/osec/nativelib/cipher/Base64;->isData(C)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-nez v5, :cond_7

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_7
    sget-object v0, Lcom/osec/nativelib/cipher/Base64;->base64Alphabet:[B

    .line 172
    .line 173
    aget-byte v2, v0, v8

    .line 174
    .line 175
    aget-byte p0, v0, p0

    .line 176
    .line 177
    add-int/lit8 v0, v6, 0x1

    .line 178
    .line 179
    shl-int/lit8 v4, v7, 0x2

    .line 180
    .line 181
    shr-int/lit8 v5, v1, 0x4

    .line 182
    .line 183
    or-int/2addr v4, v5

    .line 184
    int-to-byte v4, v4

    .line 185
    aput-byte v4, v3, v6

    .line 186
    .line 187
    add-int/lit8 v6, v6, 0x2

    .line 188
    .line 189
    and-int/lit8 v1, v1, 0xf

    .line 190
    .line 191
    shl-int/lit8 v1, v1, 0x4

    .line 192
    .line 193
    shr-int/lit8 v4, v2, 0x2

    .line 194
    .line 195
    and-int/lit8 v4, v4, 0xf

    .line 196
    .line 197
    or-int/2addr v1, v4

    .line 198
    int-to-byte v1, v1

    .line 199
    aput-byte v1, v3, v0

    .line 200
    .line 201
    shl-int/lit8 v0, v2, 0x6

    .line 202
    .line 203
    or-int/2addr p0, v0

    .line 204
    int-to-byte p0, p0

    .line 205
    aput-byte p0, v3, v6

    .line 206
    .line 207
    return-object v3

    .line 208
    :cond_8
    :goto_2
    invoke-static {v8}, Lcom/osec/nativelib/cipher/Base64;->isPad(C)Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_a

    .line 213
    .line 214
    invoke-static {p0}, Lcom/osec/nativelib/cipher/Base64;->isPad(C)Z

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-eqz v5, :cond_a

    .line 219
    .line 220
    and-int/lit8 p0, v1, 0xf

    .line 221
    .line 222
    if-eqz p0, :cond_9

    .line 223
    .line 224
    return-object v0

    .line 225
    :cond_9
    mul-int/lit8 v4, v4, 0x3

    .line 226
    .line 227
    add-int/lit8 p0, v4, 0x1

    .line 228
    .line 229
    new-array p0, p0, [B

    .line 230
    .line 231
    invoke-static {v3, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    .line 233
    .line 234
    shl-int/lit8 v0, v7, 0x2

    .line 235
    .line 236
    shr-int/lit8 v1, v1, 0x4

    .line 237
    .line 238
    or-int/2addr v0, v1

    .line 239
    int-to-byte v0, v0

    .line 240
    aput-byte v0, p0, v6

    .line 241
    .line 242
    return-object p0

    .line 243
    :cond_a
    invoke-static {v8}, Lcom/osec/nativelib/cipher/Base64;->isPad(C)Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-nez v5, :cond_c

    .line 248
    .line 249
    invoke-static {p0}, Lcom/osec/nativelib/cipher/Base64;->isPad(C)Z

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    if-eqz p0, :cond_c

    .line 254
    .line 255
    sget-object p0, Lcom/osec/nativelib/cipher/Base64;->base64Alphabet:[B

    .line 256
    .line 257
    aget-byte p0, p0, v8

    .line 258
    .line 259
    and-int/lit8 v5, p0, 0x3

    .line 260
    .line 261
    if-eqz v5, :cond_b

    .line 262
    .line 263
    return-object v0

    .line 264
    :cond_b
    mul-int/lit8 v4, v4, 0x3

    .line 265
    .line 266
    add-int/lit8 v0, v4, 0x2

    .line 267
    .line 268
    new-array v0, v0, [B

    .line 269
    .line 270
    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    .line 272
    .line 273
    add-int/lit8 v2, v6, 0x1

    .line 274
    .line 275
    shl-int/lit8 v3, v7, 0x2

    .line 276
    .line 277
    shr-int/lit8 v4, v1, 0x4

    .line 278
    .line 279
    or-int/2addr v3, v4

    .line 280
    int-to-byte v3, v3

    .line 281
    aput-byte v3, v0, v6

    .line 282
    .line 283
    and-int/lit8 v1, v1, 0xf

    .line 284
    .line 285
    shl-int/lit8 v1, v1, 0x4

    .line 286
    .line 287
    shr-int/lit8 p0, p0, 0x2

    .line 288
    .line 289
    and-int/lit8 p0, p0, 0xf

    .line 290
    .line 291
    or-int/2addr p0, v1

    .line 292
    int-to-byte p0, p0

    .line 293
    aput-byte p0, v0, v2

    .line 294
    .line 295
    :cond_c
    :goto_3
    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 10

    .line 1
    invoke-static {p0}, Lcom/osec/nativelib/cipher/Base64;->discardNonBase64([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-array p0, v1, [B

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    array-length v0, p0

    .line 13
    div-int/lit8 v0, v0, 0x4

    .line 14
    .line 15
    array-length v2, p0

    .line 16
    :cond_1
    add-int/lit8 v3, v2, -0x1

    .line 17
    .line 18
    aget-byte v3, p0, v3

    .line 19
    .line 20
    const/16 v4, 0x3d

    .line 21
    .line 22
    if-ne v3, v4, :cond_2

    .line 23
    .line 24
    add-int/lit8 v2, v2, -0x1

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    new-array p0, v1, [B

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_2
    sub-int/2addr v2, v0

    .line 32
    new-array v2, v2, [B

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    :goto_0
    if-ge v1, v0, :cond_6

    .line 36
    .line 37
    mul-int/lit8 v5, v1, 0x4

    .line 38
    .line 39
    add-int/lit8 v6, v5, 0x2

    .line 40
    .line 41
    aget-byte v6, p0, v6

    .line 42
    .line 43
    add-int/lit8 v7, v5, 0x3

    .line 44
    .line 45
    aget-byte v7, p0, v7

    .line 46
    .line 47
    sget-object v8, Lcom/osec/nativelib/cipher/Base64;->base64Alphabet:[B

    .line 48
    .line 49
    aget-byte v9, p0, v5

    .line 50
    .line 51
    aget-byte v9, v8, v9

    .line 52
    .line 53
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    aget-byte v5, p0, v5

    .line 56
    .line 57
    aget-byte v5, v8, v5

    .line 58
    .line 59
    if-eq v6, v4, :cond_3

    .line 60
    .line 61
    if-eq v7, v4, :cond_3

    .line 62
    .line 63
    aget-byte v6, v8, v6

    .line 64
    .line 65
    aget-byte v7, v8, v7

    .line 66
    .line 67
    shl-int/lit8 v8, v9, 0x2

    .line 68
    .line 69
    shr-int/lit8 v9, v5, 0x4

    .line 70
    .line 71
    or-int/2addr v8, v9

    .line 72
    int-to-byte v8, v8

    .line 73
    aput-byte v8, v2, v3

    .line 74
    .line 75
    add-int/lit8 v8, v3, 0x1

    .line 76
    .line 77
    and-int/lit8 v5, v5, 0xf

    .line 78
    .line 79
    shl-int/lit8 v5, v5, 0x4

    .line 80
    .line 81
    shr-int/lit8 v9, v6, 0x2

    .line 82
    .line 83
    and-int/lit8 v9, v9, 0xf

    .line 84
    .line 85
    or-int/2addr v5, v9

    .line 86
    int-to-byte v5, v5

    .line 87
    aput-byte v5, v2, v8

    .line 88
    .line 89
    add-int/lit8 v5, v3, 0x2

    .line 90
    .line 91
    shl-int/lit8 v6, v6, 0x6

    .line 92
    .line 93
    or-int/2addr v6, v7

    .line 94
    int-to-byte v6, v6

    .line 95
    aput-byte v6, v2, v5

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    if-ne v6, v4, :cond_4

    .line 99
    .line 100
    shl-int/lit8 v6, v9, 0x2

    .line 101
    .line 102
    shr-int/lit8 v5, v5, 0x4

    .line 103
    .line 104
    or-int/2addr v5, v6

    .line 105
    int-to-byte v5, v5

    .line 106
    aput-byte v5, v2, v3

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    if-ne v7, v4, :cond_5

    .line 110
    .line 111
    aget-byte v6, v8, v6

    .line 112
    .line 113
    shl-int/lit8 v7, v9, 0x2

    .line 114
    .line 115
    shr-int/lit8 v8, v5, 0x4

    .line 116
    .line 117
    or-int/2addr v7, v8

    .line 118
    int-to-byte v7, v7

    .line 119
    aput-byte v7, v2, v3

    .line 120
    .line 121
    add-int/lit8 v7, v3, 0x1

    .line 122
    .line 123
    and-int/lit8 v5, v5, 0xf

    .line 124
    .line 125
    shl-int/lit8 v5, v5, 0x4

    .line 126
    .line 127
    shr-int/lit8 v6, v6, 0x2

    .line 128
    .line 129
    and-int/lit8 v6, v6, 0xf

    .line 130
    .line 131
    or-int/2addr v5, v6

    .line 132
    int-to-byte v5, v5

    .line 133
    aput-byte v5, v2, v7

    .line 134
    .line 135
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x3

    .line 136
    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    return-object v2
.end method

.method public static discardNonBase64([B)[B
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    array-length v4, p0

    .line 8
    if-ge v2, v4, :cond_1

    .line 9
    .line 10
    aget-byte v4, p0, v2

    .line 11
    .line 12
    invoke-static {v4}, Lcom/osec/nativelib/cipher/Base64;->isBase64(B)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    add-int/lit8 v4, v3, 0x1

    .line 19
    .line 20
    aget-byte v5, p0, v2

    .line 21
    .line 22
    aput-byte v5, v0, v3

    .line 23
    .line 24
    move v3, v4

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-array p0, v3, [B

    .line 29
    .line 30
    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public static discardWhitespace([B)[B
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    array-length v4, p0

    .line 8
    if-ge v2, v4, :cond_1

    .line 9
    .line 10
    aget-byte v4, p0, v2

    .line 11
    .line 12
    const/16 v5, 0x9

    .line 13
    .line 14
    if-eq v4, v5, :cond_0

    .line 15
    .line 16
    const/16 v5, 0xa

    .line 17
    .line 18
    if-eq v4, v5, :cond_0

    .line 19
    .line 20
    const/16 v5, 0xd

    .line 21
    .line 22
    if-eq v4, v5, :cond_0

    .line 23
    .line 24
    const/16 v5, 0x20

    .line 25
    .line 26
    if-eq v4, v5, :cond_0

    .line 27
    .line 28
    add-int/lit8 v5, v3, 0x1

    .line 29
    .line 30
    aput-byte v4, v0, v3

    .line 31
    .line 32
    move v3, v5

    .line 33
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-array p0, v3, [B

    .line 37
    .line 38
    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    return-object p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/osec/nativelib/cipher/Base64;->encode([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 3
    invoke-static {p0}, Lcom/osec/nativelib/cipher/Digest;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/osec/nativelib/cipher/Base64;->encode([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode([B)[B
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/osec/nativelib/cipher/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([B)[B
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/osec/nativelib/cipher/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZ)[B
    .locals 18

    move-object/from16 v0, p0

    .line 2
    array-length v1, v0

    const/16 v2, 0x8

    mul-int/lit8 v1, v1, 0x8

    .line 3
    rem-int/lit8 v3, v1, 0x18

    .line 4
    div-int/lit8 v1, v1, 0x18

    if-eqz v3, :cond_0

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v4, v4, 0x4

    goto :goto_0

    :cond_0
    mul-int/lit8 v4, v1, 0x4

    :goto_0
    if-eqz p1, :cond_2

    .line 5
    sget-object v6, Lcom/osec/nativelib/cipher/Base64;->CHUNK_SEPARATOR:[B

    array-length v7, v6

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    int-to-float v7, v4

    const/high16 v8, 0x42980000    # 76.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 6
    :goto_1
    array-length v6, v6

    mul-int v6, v6, v7

    add-int/2addr v4, v6

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 7
    :goto_2
    new-array v6, v4, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x4c

    :goto_3
    if-ge v9, v1, :cond_7

    mul-int/lit8 v13, v9, 0x3

    .line 8
    aget-byte v14, v0, v13

    add-int/lit8 v15, v13, 0x1

    .line 9
    aget-byte v15, v0, v15

    add-int/lit8 v13, v13, 0x2

    .line 10
    aget-byte v13, v0, v13

    and-int/lit8 v2, v15, 0xf

    int-to-byte v2, v2

    and-int/lit8 v8, v14, 0x3

    int-to-byte v8, v8

    and-int/lit8 v16, v14, -0x80

    shr-int/lit8 v14, v14, 0x2

    if-nez v16, :cond_3

    :goto_4
    int-to-byte v14, v14

    goto :goto_5

    :cond_3
    xor-int/lit16 v14, v14, 0xc0

    goto :goto_4

    :goto_5
    and-int/lit8 v16, v15, -0x80

    shr-int/lit8 v15, v15, 0x4

    if-nez v16, :cond_4

    :goto_6
    int-to-byte v15, v15

    goto :goto_7

    :cond_4
    xor-int/lit16 v15, v15, 0xf0

    goto :goto_6

    :goto_7
    and-int/lit8 v16, v13, -0x80

    shr-int/lit8 v5, v13, 0x6

    if-nez v16, :cond_5

    :goto_8
    int-to-byte v5, v5

    goto :goto_9

    :cond_5
    xor-int/lit16 v5, v5, 0xfc

    goto :goto_8

    .line 11
    :goto_9
    sget-object v17, Lcom/osec/nativelib/cipher/Base64;->lookUpBase64Alphabet:[B

    aget-byte v14, v17, v14

    aput-byte v14, v6, v10

    add-int/lit8 v14, v10, 0x1

    shl-int/lit8 v8, v8, 0x4

    or-int/2addr v8, v15

    .line 12
    aget-byte v8, v17, v8

    aput-byte v8, v6, v14

    add-int/lit8 v8, v10, 0x2

    shl-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v5

    .line 13
    aget-byte v2, v17, v2

    aput-byte v2, v6, v8

    add-int/lit8 v2, v10, 0x3

    and-int/lit8 v5, v13, 0x3f

    .line 14
    aget-byte v5, v17, v5

    aput-byte v5, v6, v2

    add-int/lit8 v10, v10, 0x4

    if-eqz p1, :cond_6

    if-ne v10, v12, :cond_6

    .line 15
    sget-object v2, Lcom/osec/nativelib/cipher/Base64;->CHUNK_SEPARATOR:[B

    array-length v5, v2

    const/4 v8, 0x0

    invoke-static {v2, v8, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v11, 0x1

    add-int/lit8 v11, v11, 0x2

    const/16 v8, 0x4c

    mul-int/lit8 v11, v11, 0x4c

    .line 16
    array-length v12, v2

    mul-int v12, v12, v5

    add-int/2addr v12, v11

    .line 17
    array-length v2, v2

    add-int/2addr v10, v2

    move v11, v5

    goto :goto_a

    :cond_6
    const/16 v8, 0x4c

    :goto_a
    add-int/lit8 v9, v9, 0x1

    const/16 v2, 0x8

    goto :goto_3

    :cond_7
    mul-int/lit8 v9, v9, 0x3

    const/16 v1, 0x3d

    const/16 v2, 0x8

    if-ne v3, v2, :cond_9

    .line 18
    aget-byte v0, v0, v9

    and-int/lit8 v2, v0, 0x3

    int-to-byte v2, v2

    and-int/lit8 v3, v0, -0x80

    shr-int/lit8 v0, v0, 0x2

    if-nez v3, :cond_8

    :goto_b
    int-to-byte v0, v0

    goto :goto_c

    :cond_8
    xor-int/lit16 v0, v0, 0xc0

    goto :goto_b

    .line 19
    :goto_c
    sget-object v3, Lcom/osec/nativelib/cipher/Base64;->lookUpBase64Alphabet:[B

    aget-byte v0, v3, v0

    aput-byte v0, v6, v10

    add-int/lit8 v0, v10, 0x1

    shl-int/lit8 v2, v2, 0x4

    .line 20
    aget-byte v2, v3, v2

    aput-byte v2, v6, v0

    add-int/lit8 v0, v10, 0x2

    .line 21
    aput-byte v1, v6, v0

    add-int/lit8 v10, v10, 0x3

    .line 22
    aput-byte v1, v6, v10

    goto :goto_11

    :cond_9
    const/16 v2, 0x10

    if-ne v3, v2, :cond_c

    .line 23
    aget-byte v2, v0, v9

    add-int/lit8 v9, v9, 0x1

    .line 24
    aget-byte v0, v0, v9

    and-int/lit8 v3, v0, 0xf

    int-to-byte v3, v3

    and-int/lit8 v5, v2, 0x3

    int-to-byte v5, v5

    and-int/lit8 v8, v2, -0x80

    shr-int/lit8 v2, v2, 0x2

    if-nez v8, :cond_a

    :goto_d
    int-to-byte v2, v2

    goto :goto_e

    :cond_a
    xor-int/lit16 v2, v2, 0xc0

    goto :goto_d

    :goto_e
    and-int/lit8 v8, v0, -0x80

    shr-int/lit8 v0, v0, 0x4

    if-nez v8, :cond_b

    :goto_f
    int-to-byte v0, v0

    goto :goto_10

    :cond_b
    xor-int/lit16 v0, v0, 0xf0

    goto :goto_f

    .line 25
    :goto_10
    sget-object v8, Lcom/osec/nativelib/cipher/Base64;->lookUpBase64Alphabet:[B

    aget-byte v2, v8, v2

    aput-byte v2, v6, v10

    add-int/lit8 v2, v10, 0x1

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v0, v5

    .line 26
    aget-byte v0, v8, v0

    aput-byte v0, v6, v2

    add-int/lit8 v0, v10, 0x2

    shl-int/lit8 v2, v3, 0x2

    .line 27
    aget-byte v2, v8, v2

    aput-byte v2, v6, v0

    add-int/lit8 v10, v10, 0x3

    .line 28
    aput-byte v1, v6, v10

    :cond_c
    :goto_11
    if-eqz p1, :cond_d

    if-ge v11, v7, :cond_d

    .line 29
    sget-object v0, Lcom/osec/nativelib/cipher/Base64;->CHUNK_SEPARATOR:[B

    array-length v1, v0

    sub-int/2addr v4, v1

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v6, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    return-object v6
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/osec/nativelib/cipher/Base64;->encodeBase64([BZ)[B

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/osec/nativelib/cipher/Base64;->discardWhitespace([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v0, :cond_2

    .line 13
    .line 14
    aget-byte v4, p0, v3

    .line 15
    .line 16
    invoke-static {v4}, Lcom/osec/nativelib/cipher/Base64;->isBase64(B)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    return v1
.end method

.method private static isBase64(B)Z
    .locals 2

    .line 1
    const/16 v0, 0x3d

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-object v0, Lcom/osec/nativelib/cipher/Base64;->base64Alphabet:[B

    .line 8
    .line 9
    aget-byte p0, v0, p0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    if-ne p0, v0, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    return v1
.end method

.method private static isData(C)Z
    .locals 1

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    if-ge p0, v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/osec/nativelib/cipher/Base64;->base64Alphabet:[B

    .line 6
    .line 7
    aget-byte p0, v0, p0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method private static isPad(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x3d

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method private static isWhiteSpace(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0xd

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x9

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method private static removeWhiteSpace([C)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    array-length v1, p0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    aget-char v3, p0, v0

    .line 10
    .line 11
    invoke-static {v3}, Lcom/osec/nativelib/cipher/Base64;->isWhiteSpace(C)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    add-int/lit8 v3, v2, 0x1

    .line 18
    .line 19
    aget-char v4, p0, v0

    .line 20
    .line 21
    aput-char v4, p0, v2

    .line 22
    .line 23
    move v2, v3

    .line 24
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    return v2
.end method
