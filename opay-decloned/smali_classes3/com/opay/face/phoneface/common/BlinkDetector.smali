.class public Lcom/opay/face/phoneface/common/BlinkDetector;
.super Ljava/lang/Object;
.source "BlinkDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/face/phoneface/common/BlinkDetector$State;,
        Lcom/opay/face/phoneface/common/BlinkDetector$b;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/String; = "BlinkDetector"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:D

.field public f:I

.field public final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/opay/face/phoneface/common/BlinkDetector$b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/opay/face/phoneface/common/BlinkDetector$b;",
            ">;"
        }
    .end annotation
.end field

.field public final i:J

.field public j:Lcom/opay/face/phoneface/common/BlinkDetector$State;

.field public k:Z

.field public l:J

.field public m:D

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;JDLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->g:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->h:Ljava/util/ArrayDeque;

    .line 17
    .line 18
    const-wide/16 v0, 0x1f4

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->i:J

    .line 21
    .line 22
    sget-object v0, Lcom/opay/face/phoneface/common/BlinkDetector$State;->OPEN:Lcom/opay/face/phoneface/common/BlinkDetector$State;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->j:Lcom/opay/face/phoneface/common/BlinkDetector$State;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->k:Z

    .line 28
    .line 29
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->l:J

    .line 32
    .line 33
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->m:D

    .line 36
    .line 37
    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->n:I

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getOpenEyeTh()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->a:I

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getCloseEyeTh()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->b:I

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getBlinkTh()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->c:I

    .line 57
    .line 58
    iput-wide p2, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->d:J

    .line 59
    .line 60
    iput-wide p4, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->e:D

    .line 61
    .line 62
    iput-object p6, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->o:Ljava/lang/String;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public a()[I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->h:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/opay/face/phoneface/common/BlinkDetector$b;

    .line 20
    .line 21
    iget v4, v3, Lcom/opay/face/phoneface/common/BlinkDetector$b;->b:I

    .line 22
    .line 23
    const/16 v5, 0x32

    .line 24
    .line 25
    if-lt v4, v5, :cond_1

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    :cond_1
    iget v3, v3, Lcom/opay/face/phoneface/common/BlinkDetector$b;->c:I

    .line 30
    .line 31
    const/16 v4, 0x5a

    .line 32
    .line 33
    if-lt v3, v4, :cond_0

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->h:Ljava/util/ArrayDeque;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    filled-new-array {v0, v1, v2}, [I

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public c([IJ)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x4

    .line 5
    aget v2, p1, v2

    .line 6
    .line 7
    const/16 v3, 0x14

    .line 8
    .line 9
    if-lt v2, v3, :cond_0

    .line 10
    .line 11
    const/16 v3, 0xf

    .line 12
    .line 13
    iput v3, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->f:I

    .line 14
    .line 15
    :cond_0
    iget-wide v3, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->m:D

    .line 16
    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    const/4 v7, 0x3

    .line 20
    cmpl-double v8, v3, v5

    .line 21
    .line 22
    if-nez v8, :cond_1

    .line 23
    .line 24
    aget v3, p1, v7

    .line 25
    .line 26
    int-to-double v3, v3

    .line 27
    iput-wide v3, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->m:D

    .line 28
    .line 29
    :cond_1
    iget-wide v3, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->m:D

    .line 30
    .line 31
    iget-wide v5, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->e:D

    .line 32
    .line 33
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 34
    .line 35
    sub-double/2addr v8, v5

    .line 36
    mul-double v3, v3, v8

    .line 37
    .line 38
    aget v7, p1, v7

    .line 39
    .line 40
    int-to-double v7, v7

    .line 41
    mul-double v7, v7, v5

    .line 42
    .line 43
    add-double/2addr v3, v7

    .line 44
    iput-wide v3, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->m:D

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/face/phoneface/common/BlinkDetector;->d([IJ)V

    .line 47
    .line 48
    .line 49
    sget-object v3, Lcom/opay/face/phoneface/common/BlinkDetector$a;->a:[I

    .line 50
    .line 51
    iget-object v4, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->j:Lcom/opay/face/phoneface/common/BlinkDetector$State;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    aget v3, v3, v4

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    const-string v5, ", other:"

    .line 61
    .line 62
    const-string v6, ", mask:"

    .line 63
    .line 64
    if-eq v3, v4, :cond_6

    .line 65
    .line 66
    const/4 p1, 0x2

    .line 67
    if-eq v3, p1, :cond_2

    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_2
    iget-wide v7, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->m:D

    .line 72
    .line 73
    iget p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->b:I

    .line 74
    .line 75
    iget v3, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->f:I

    .line 76
    .line 77
    add-int/2addr p1, v3

    .line 78
    int-to-double v9, p1

    .line 79
    cmpg-double p1, v7, v9

    .line 80
    .line 81
    if-gez p1, :cond_3

    .line 82
    .line 83
    sget-object p1, Lcom/opay/face/phoneface/common/BlinkDetector;->q:Ljava/lang/String;

    .line 84
    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object p3, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->o:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p3, " closed smoothEar:"

    .line 96
    .line 97
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-wide v3, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->m:D

    .line 101
    .line 102
    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-static {p1, p2}, Lcom/opay/face/util/Logs;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_2

    .line 125
    .line 126
    :cond_3
    iget p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->a:I

    .line 127
    .line 128
    int-to-double v9, p1

    .line 129
    cmpl-double p1, v7, v9

    .line 130
    .line 131
    if-lez p1, :cond_a

    .line 132
    .line 133
    iget-wide v7, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->l:J

    .line 134
    .line 135
    sub-long/2addr p2, v7

    .line 136
    sget-object p1, Lcom/opay/face/phoneface/common/BlinkDetector;->q:Ljava/lang/String;

    .line 137
    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object v7, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->o:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v7, " reopen "

    .line 149
    .line 150
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-wide v7, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->m:D

    .line 154
    .line 155
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v7, ", duration:"

    .line 159
    .line 160
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {p1, v1}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-wide v1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->d:J

    .line 186
    .line 187
    cmp-long p1, p2, v1

    .line 188
    .line 189
    if-gez p1, :cond_4

    .line 190
    .line 191
    iget-boolean p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->k:Z

    .line 192
    .line 193
    if-eqz p1, :cond_5

    .line 194
    .line 195
    const/4 v0, 0x1

    .line 196
    goto :goto_0

    .line 197
    :cond_4
    iput-boolean v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->k:Z

    .line 198
    .line 199
    :cond_5
    :goto_0
    sget-object p1, Lcom/opay/face/phoneface/common/BlinkDetector$State;->OPEN:Lcom/opay/face/phoneface/common/BlinkDetector$State;

    .line 200
    .line 201
    iput-object p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->j:Lcom/opay/face/phoneface/common/BlinkDetector$State;

    .line 202
    .line 203
    goto/16 :goto_2

    .line 204
    .line 205
    :cond_6
    iget-wide v7, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->m:D

    .line 206
    .line 207
    iget v3, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->a:I

    .line 208
    .line 209
    int-to-double v9, v3

    .line 210
    cmpl-double v3, v7, v9

    .line 211
    .line 212
    if-lez v3, :cond_7

    .line 213
    .line 214
    sget-object v3, Lcom/opay/face/phoneface/common/BlinkDetector;->q:Ljava/lang/String;

    .line 215
    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    iget-object v8, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->o:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v8, " opening:"

    .line 227
    .line 228
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-wide v8, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->m:D

    .line 232
    .line 233
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-static {v3, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iput-boolean v4, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->k:Z

    .line 256
    .line 257
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/face/phoneface/common/BlinkDetector;->e([IJ)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_2

    .line 261
    .line 262
    :cond_7
    iget-boolean p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->p:Z

    .line 263
    .line 264
    if-eqz p1, :cond_8

    .line 265
    .line 266
    iget p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->n:I

    .line 267
    .line 268
    int-to-double v3, p1

    .line 269
    sub-double/2addr v3, v7

    .line 270
    iget p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->c:I

    .line 271
    .line 272
    int-to-double v9, p1

    .line 273
    cmpl-double p1, v3, v9

    .line 274
    .line 275
    if-lez p1, :cond_8

    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_8
    iget p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->b:I

    .line 279
    .line 280
    iget v3, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->f:I

    .line 281
    .line 282
    add-int/2addr p1, v3

    .line 283
    int-to-double v3, p1

    .line 284
    cmpg-double p1, v7, v3

    .line 285
    .line 286
    if-gez p1, :cond_9

    .line 287
    .line 288
    :goto_1
    iget-boolean p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->k:Z

    .line 289
    .line 290
    if-eqz p1, :cond_9

    .line 291
    .line 292
    sget-object p1, Lcom/opay/face/phoneface/common/BlinkDetector;->q:Ljava/lang/String;

    .line 293
    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    iget-object v4, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->o:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v4, " closing "

    .line 305
    .line 306
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget-wide v7, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->m:D

    .line 310
    .line 311
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v4, ", blink:"

    .line 315
    .line 316
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    iget v4, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->n:I

    .line 320
    .line 321
    int-to-double v7, v4

    .line 322
    iget-wide v9, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->m:D

    .line 323
    .line 324
    sub-double/2addr v7, v9

    .line 325
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-static {p1, v1}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    sget-object p1, Lcom/opay/face/phoneface/common/BlinkDetector$State;->CLOSING:Lcom/opay/face/phoneface/common/BlinkDetector$State;

    .line 348
    .line 349
    iput-object p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->j:Lcom/opay/face/phoneface/common/BlinkDetector$State;

    .line 350
    .line 351
    iput-wide p2, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->l:J

    .line 352
    .line 353
    goto :goto_2

    .line 354
    :cond_9
    sget-object p1, Lcom/opay/face/phoneface/common/BlinkDetector;->q:Ljava/lang/String;

    .line 355
    .line 356
    new-instance p2, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    iget-object p3, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->o:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string p3, " none "

    .line 367
    .line 368
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    iget-wide v3, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->m:D

    .line 372
    .line 373
    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p2

    .line 392
    invoke-static {p1, p2}, Lcom/opay/face/util/Logs;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    :cond_a
    :goto_2
    return v0
.end method

.method public final d([IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->h:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    new-instance v1, Lcom/opay/face/phoneface/common/BlinkDetector$b;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3}, Lcom/opay/face/phoneface/common/BlinkDetector$b;-><init>([IJ)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->h:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->h:Ljava/util/ArrayDeque;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/opay/face/phoneface/common/BlinkDetector$b;

    .line 26
    .line 27
    iget-wide v0, p1, Lcom/opay/face/phoneface/common/BlinkDetector$b;->d:J

    .line 28
    .line 29
    sub-long v0, p2, v0

    .line 30
    .line 31
    const-wide/16 v2, 0x1f4

    .line 32
    .line 33
    cmp-long p1, v0, v2

    .line 34
    .line 35
    if-lez p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->h:Ljava/util/ArrayDeque;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public final e([IJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->g:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    new-instance v1, Lcom/opay/face/phoneface/common/BlinkDetector$b;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3}, Lcom/opay/face/phoneface/common/BlinkDetector$b;-><init>([IJ)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->g:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->g:Ljava/util/ArrayDeque;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/opay/face/phoneface/common/BlinkDetector$b;

    .line 26
    .line 27
    iget-wide v0, v0, Lcom/opay/face/phoneface/common/BlinkDetector$b;->d:J

    .line 28
    .line 29
    sub-long v0, p2, v0

    .line 30
    .line 31
    const-wide/16 v2, 0x1f4

    .line 32
    .line 33
    cmp-long v4, v0, v2

    .line 34
    .line 35
    if-lez v4, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->g:Ljava/util/ArrayDeque;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p2, 0x3

    .line 44
    aget p1, p1, p2

    .line 45
    .line 46
    iput p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->n:I

    .line 47
    .line 48
    iget-object p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->g:Ljava/util/ArrayDeque;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Lcom/opay/face/phoneface/common/BlinkDetector$b;

    .line 65
    .line 66
    iget p2, p2, Lcom/opay/face/phoneface/common/BlinkDetector$b;->a:I

    .line 67
    .line 68
    iget p3, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->n:I

    .line 69
    .line 70
    if-le p2, p3, :cond_1

    .line 71
    .line 72
    iput p2, p0, Lcom/opay/face/phoneface/common/BlinkDetector;->n:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    return-void
.end method
