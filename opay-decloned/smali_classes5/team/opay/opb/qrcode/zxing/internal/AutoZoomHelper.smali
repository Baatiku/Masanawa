.class public final Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;
.super Ljava/lang/Object;
.source "AutoZoomHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J1\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;",
        "",
        "<init>",
        "()V",
        "Lcom/google/zxing/ResultPoint;",
        "newPoint",
        "",
        "scanFrameWidth",
        "Lkotlin/Function1;",
        "",
        "",
        "onZoomCommand",
        "a",
        "(Lcom/google/zxing/ResultPoint;ILkotlin/jvm/functions/Function1;)V",
        "",
        "Ljava/util/List;",
        "collectedPoints",
        "",
        "b",
        "J",
        "lastPointsCleanupTime",
        "c",
        "lastSuccessfulDetectionTime",
        "d",
        "Companion",
        "opay-qrcode-zxing_release"
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
.field public static final d:Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:J

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->d:Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->a:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/ResultPoint;ILkotlin/jvm/functions/Function1;)V
    .locals 11
    .param p1    # Lcom/google/zxing/ResultPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/ResultPoint;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "newPoint"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v1, "onZoomCommand"

    .line 8
    .line 9
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-gtz p2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->a:Ljava/util/List;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iget-wide v4, p0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->b:J

    .line 23
    .line 24
    sub-long v4, v2, v4

    .line 25
    .line 26
    const-wide/16 v6, 0x1f4

    .line 27
    .line 28
    cmp-long v8, v4, v6

    .line 29
    .line 30
    if-lez v8, :cond_1

    .line 31
    .line 32
    iget-object v4, p0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->a:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 35
    .line 36
    .line 37
    iput-wide v2, p0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->b:J

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto/16 :goto_6

    .line 42
    .line 43
    :cond_1
    :goto_0
    iget-object v4, p0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->a:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    :goto_1
    if-ge v6, v4, :cond_3

    .line 52
    .line 53
    iget-object v7, p0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->a:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Lcom/google/zxing/ResultPoint;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    sub-float/2addr v8, v9

    .line 70
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    const/high16 v9, 0x41a00000    # 20.0f

    .line 75
    .line 76
    cmpg-float v8, v8, v9

    .line 77
    .line 78
    if-gez v8, :cond_2

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    sub-float/2addr v8, v7

    .line 89
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 90
    .line 91
    .line 92
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    cmpg-float v7, v7, v9

    .line 94
    .line 95
    if-gez v7, :cond_2

    .line 96
    .line 97
    monitor-exit v1

    .line 98
    return-void

    .line 99
    :cond_2
    add-int/2addr v6, v0

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    :try_start_1
    iget-object v4, p0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->a:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->a:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    const/4 v4, 0x3

    .line 113
    if-ge p1, v4, :cond_4

    .line 114
    .line 115
    monitor-exit v1

    .line 116
    return-void

    .line 117
    :cond_4
    :try_start_2
    iget-object p1, p0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->a:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const/4 v4, 0x1

    .line 124
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 125
    .line 126
    .line 127
    const/4 v6, 0x1

    .line 128
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 129
    .line 130
    .line 131
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 132
    .line 133
    .line 134
    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    if-eqz v9, :cond_9

    .line 139
    .line 140
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    check-cast v9, Lcom/google/zxing/ResultPoint;

    .line 145
    .line 146
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    cmpg-float v10, v10, v7

    .line 151
    .line 152
    if-gez v10, :cond_6

    .line 153
    .line 154
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    :cond_6
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    cmpl-float v10, v10, v4

    .line 163
    .line 164
    if-lez v10, :cond_7

    .line 165
    .line 166
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    :cond_7
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    cmpg-float v10, v10, v8

    .line 175
    .line 176
    if-gez v10, :cond_8

    .line 177
    .line 178
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    :cond_8
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    cmpl-float v10, v10, v6

    .line 187
    .line 188
    if-lez v10, :cond_5

    .line 189
    .line 190
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    goto :goto_2

    .line 195
    :cond_9
    sub-float/2addr v4, v7

    .line 196
    sub-float/2addr v6, v8

    .line 197
    iget-wide v7, p0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->c:J

    .line 198
    .line 199
    sub-long v7, v2, v7

    .line 200
    .line 201
    const-wide/16 v9, 0x1388

    .line 202
    .line 203
    cmp-long p1, v7, v9

    .line 204
    .line 205
    if-gez p1, :cond_a

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_a
    const/4 v0, 0x0

    .line 209
    :goto_3
    const p1, 0x3ecccccd    # 0.4f

    .line 210
    .line 211
    .line 212
    if-eqz v0, :cond_b

    .line 213
    .line 214
    const v5, 0x3ecccccd    # 0.4f

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_b
    const v5, 0x3f333333    # 0.7f

    .line 219
    .line 220
    .line 221
    :goto_4
    if-eqz v0, :cond_c

    .line 222
    .line 223
    const/high16 v0, 0x40200000    # 2.5f

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_c
    const v0, 0x3fe66666    # 1.8f

    .line 227
    .line 228
    .line 229
    :goto_5
    const/4 v7, 0x0

    .line 230
    cmpl-float v8, v6, v7

    .line 231
    .line 232
    if-lez v8, :cond_d

    .line 233
    .line 234
    div-float v7, v4, v6

    .line 235
    .line 236
    :cond_d
    cmpg-float v5, v5, v7

    .line 237
    .line 238
    if-gtz v5, :cond_f

    .line 239
    .line 240
    cmpg-float v0, v7, v0

    .line 241
    .line 242
    if-gtz v0, :cond_f

    .line 243
    .line 244
    int-to-float p2, p2

    .line 245
    mul-float p2, p2, p1

    .line 246
    .line 247
    cmpg-float p1, v4, p2

    .line 248
    .line 249
    if-gez p1, :cond_e

    .line 250
    .line 251
    const-wide p1, 0x3ff6666666666666L    # 1.4

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    iput-wide v2, p0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->c:J

    .line 264
    .line 265
    :cond_e
    iget-object p1, p0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->a:Ljava/util/List;

    .line 266
    .line 267
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 268
    .line 269
    .line 270
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    .line 272
    monitor-exit v1

    .line 273
    return-void

    .line 274
    :cond_f
    :try_start_3
    iget-object p1, p0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->a:Ljava/util/List;

    .line 275
    .line 276
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    const/4 p2, 0x5

    .line 281
    if-le p1, p2, :cond_10

    .line 282
    .line 283
    iget-object p1, p0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->a:Ljava/util/List;

    .line 284
    .line 285
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    .line 287
    .line 288
    :cond_10
    monitor-exit v1

    .line 289
    return-void

    .line 290
    :goto_6
    monitor-exit v1

    .line 291
    throw p1
.end method
