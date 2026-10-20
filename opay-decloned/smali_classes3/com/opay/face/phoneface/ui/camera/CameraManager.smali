.class public final Lcom/opay/face/phoneface/ui/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/face/phoneface/ui/camera/CameraManager$b;
    }
.end annotation


# static fields
.field public static final o:Ljava/lang/String; = "CameraManager"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lns1;

.field public c:Landroid/hardware/Camera;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:[B

.field public i:[B

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Lcom/opay/face/phoneface/ui/config/FlashColor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->f:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->g:I

    .line 9
    .line 10
    const/16 v1, 0x280

    .line 11
    .line 12
    iput v1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->j:I

    .line 13
    .line 14
    const/16 v1, 0x1e0

    .line 15
    .line 16
    iput v1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->k:I

    .line 17
    .line 18
    iput v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->l:I

    .line 19
    .line 20
    sget-object v0, Lcom/opay/face/phoneface/ui/config/FlashColor;->W:Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->n:Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->a:Landroid/content/Context;

    .line 25
    .line 26
    new-instance v0, Lns1;

    .line 27
    .line 28
    invoke-direct {v0, p1, p2}, Lns1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->b:Lns1;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic a(Lcom/opay/face/phoneface/ui/camera/CameraManager;[B)[B
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->h:[B

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public declared-synchronized b()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->o:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "closeDriver..."

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->c:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->c:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :catch_0
    :try_start_2
    iput-object v1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->c:Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    .line 24
    :cond_0
    :goto_0
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    throw v0
.end method

.method public c()V
    .locals 2

    .line 1
    sget-object v0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "destroy..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public declared-synchronized i()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->c:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    monitor-exit p0

    .line 10
    return v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method public declared-synchronized j(Landroid/view/SurfaceHolder;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->c:Landroid/hardware/Camera;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_b

    .line 7
    .line 8
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    sget-object v4, Lcom/opay/face/phoneface/ui/camera/CameraManager;->o:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v6, "numberOfCameras: "

    .line 20
    .line 21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v4, v5}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    if-lez v3, :cond_a

    .line 35
    .line 36
    if-ne v3, v2, :cond_0

    .line 37
    .line 38
    const-string p2, "Open Camera#0"

    .line 39
    .line 40
    invoke-static {v4, p2}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput v1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->m:I

    .line 44
    .line 45
    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    move-object v0, p2

    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto/16 :goto_8

    .line 54
    .line 55
    :cond_0
    if-ltz p2, :cond_1

    .line 56
    .line 57
    add-int/lit8 v4, v3, -0x1

    .line 58
    .line 59
    if-le p2, v4, :cond_2

    .line 60
    .line 61
    :cond_1
    const/4 p2, 0x0

    .line 62
    :cond_2
    const/4 v4, 0x0

    .line 63
    :goto_0
    if-ge v4, v3, :cond_5

    .line 64
    .line 65
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    .line 66
    .line 67
    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {v4, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 71
    .line 72
    .line 73
    sget-object v6, Lcom/opay/face/phoneface/ui/camera/CameraManager;->o:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v8, "Camera#"

    .line 81
    .line 82
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v8, " facing:"

    .line 89
    .line 90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget v8, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 94
    .line 95
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-static {v6, v7}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    if-nez p2, :cond_3

    .line 106
    .line 107
    iget v7, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 108
    .line 109
    if-ne v7, v2, :cond_3

    .line 110
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v3, "Open Camera#"

    .line 117
    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v3, " Front."

    .line 125
    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v6, v0}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iput v4, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->m:I

    .line 137
    .line 138
    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget v3, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 143
    .line 144
    iput v3, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->l:I

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    if-ne p2, v2, :cond_4

    .line 148
    .line 149
    iget v7, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 150
    .line 151
    if-nez v7, :cond_4

    .line 152
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v3, "Open Camera#"

    .line 159
    .line 160
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v3, " Back."

    .line 167
    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v6, v0}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iput v4, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->m:I

    .line 179
    .line 180
    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget v3, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 185
    .line 186
    iput v3, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->l:I

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_5
    :goto_1
    if-nez v0, :cond_8

    .line 194
    .line 195
    sget-object v0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->o:Ljava/lang/String;

    .line 196
    .line 197
    const-string v3, "Not found Front Camera."

    .line 198
    .line 199
    invoke-static {v0, v3}, Lcom/opay/face/util/Logs;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    if-nez p2, :cond_6

    .line 203
    .line 204
    iput v2, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->m:I

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_6
    if-ne p2, v2, :cond_7

    .line 208
    .line 209
    iput v1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->m:I

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_7
    iput p2, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->m:I

    .line 213
    .line 214
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v3, "Open Camera#"

    .line 220
    .line 221
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget v3, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->m:I

    .line 225
    .line 226
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    invoke-static {v0, p2}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    new-instance p2, Landroid/hardware/Camera$CameraInfo;

    .line 237
    .line 238
    invoke-direct {p2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 239
    .line 240
    .line 241
    iget v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->m:I

    .line 242
    .line 243
    invoke-static {v0, p2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 244
    .line 245
    .line 246
    iget v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->m:I

    .line 247
    .line 248
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iget p2, p2, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 253
    .line 254
    iput p2, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->l:I

    .line 255
    .line 256
    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    .line 257
    .line 258
    iput-object v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->c:Landroid/hardware/Camera;

    .line 259
    .line 260
    iget p2, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->m:I

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 264
    .line 265
    const-string p2, "Unable to open camera"

    .line 266
    .line 267
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw p1

    .line 271
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 272
    .line 273
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 274
    .line 275
    .line 276
    throw p1

    .line 277
    :cond_b
    :goto_4
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 278
    .line 279
    .line 280
    iget-boolean p1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->d:Z

    .line 281
    .line 282
    if-nez p1, :cond_c

    .line 283
    .line 284
    iput-boolean v2, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->d:Z

    .line 285
    .line 286
    iget-object p1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->b:Lns1;

    .line 287
    .line 288
    invoke-virtual {p1, v0}, Lns1;->e(Landroid/hardware/Camera;)V

    .line 289
    .line 290
    .line 291
    :cond_c
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    if-nez p1, :cond_d

    .line 296
    .line 297
    const/4 p1, 0x0

    .line 298
    goto :goto_5

    .line 299
    :cond_d
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :goto_5
    :try_start_1
    sget-object v3, Lcom/opay/face/phoneface/ui/camera/CameraManager;->o:Ljava/lang/String;

    .line 304
    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    const-string v5, "setDesiredCameraParameters cameraId:"

    .line 311
    .line 312
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    invoke-static {v3, v4}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget-object v3, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->a:Landroid/content/Context;

    .line 326
    .line 327
    invoke-virtual {p0, v3, p2, v0}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->l(Landroid/content/Context;ILandroid/hardware/Camera;)V

    .line 328
    .line 329
    .line 330
    iget-object v3, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->b:Lns1;

    .line 331
    .line 332
    invoke-virtual {v3, v0, v1, p2}, Lns1;->g(Landroid/hardware/Camera;ZI)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    .line 334
    .line 335
    goto :goto_6

    .line 336
    :catch_0
    move-exception v1

    .line 337
    :try_start_2
    sget-object v3, Lcom/opay/face/phoneface/ui/camera/CameraManager;->o:Ljava/lang/String;

    .line 338
    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    const-string v5, "setDesiredCameraParameters:"

    .line 345
    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-static {v3, v1}, Lcom/opay/face/util/Logs;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    if-eqz p1, :cond_e

    .line 364
    .line 365
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    .line 371
    .line 372
    :try_start_3
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 373
    .line 374
    .line 375
    iget-object p1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->b:Lns1;

    .line 376
    .line 377
    invoke-virtual {p1, v0, v2, p2}, Lns1;->g(Landroid/hardware/Camera;ZI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    .line 379
    .line 380
    goto :goto_6

    .line 381
    :catch_1
    move-exception p1

    .line 382
    :try_start_4
    sget-object p2, Lcom/opay/face/phoneface/ui/camera/CameraManager;->o:Ljava/lang/String;

    .line 383
    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    const-string v2, "safe-mode setDesiredCameraParameters"

    .line 390
    .line 391
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-static {p2, p1}, Lcom/opay/face/util/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 406
    .line 407
    .line 408
    :cond_e
    :goto_6
    :try_start_5
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    iget p2, p1, Landroid/hardware/Camera$Size;->width:I

    .line 417
    .line 418
    iput p2, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->j:I

    .line 419
    .line 420
    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    .line 421
    .line 422
    iput p1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->k:I

    .line 423
    .line 424
    sget-object p1, Lcom/opay/face/phoneface/ui/camera/CameraManager;->o:Ljava/lang/String;

    .line 425
    .line 426
    new-instance p2, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    const-string v0, "Use preview size: ["

    .line 432
    .line 433
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    iget v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->j:I

    .line 437
    .line 438
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string v0, ", "

    .line 442
    .line 443
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    iget v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->k:I

    .line 447
    .line 448
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    const-string v0, "]"

    .line 452
    .line 453
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object p2

    .line 460
    invoke-static {p1, p2}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 461
    .line 462
    .line 463
    goto :goto_7

    .line 464
    :catch_2
    move-exception p1

    .line 465
    :try_start_6
    sget-object p2, Lcom/opay/face/phoneface/ui/camera/CameraManager;->o:Ljava/lang/String;

    .line 466
    .line 467
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    invoke-static {p2, p1}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 472
    .line 473
    .line 474
    :goto_7
    monitor-exit p0

    .line 475
    return-void

    .line 476
    :goto_8
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 477
    throw p1
.end method

.method public declared-synchronized k(Landroid/os/Handler;I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->c:Landroid/hardware/Camera;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->e:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->i:[B

    .line 11
    .line 12
    iget-object v1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->h:[B

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    move-object v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    iput-object v1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->i:[B

    .line 20
    .line 21
    new-instance v1, Lcom/opay/face/phoneface/ui/camera/FrameData;

    .line 22
    .line 23
    iget v2, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->j:I

    .line 24
    .line 25
    iget v3, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->k:I

    .line 26
    .line 27
    iget-object v4, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->n:Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 28
    .line 29
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/opay/face/phoneface/ui/camera/FrameData;-><init>([BIILcom/opay/face/phoneface/ui/config/FlashColor;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput p2, p1, Landroid/os/Message;->what:I

    .line 37
    .line 38
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    :goto_1
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1
.end method

.method public l(Landroid/content/Context;ILandroid/hardware/Camera;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 7
    .line 8
    .line 9
    const-string p2, "window"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/view/WindowManager;

    .line 16
    .line 17
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 p2, 0x1

    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    if-eq p1, p2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    if-eq p1, v2, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    if-eq p1, v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/16 v1, 0x10e

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/16 v1, 0xb4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/16 v1, 0x5a

    .line 45
    .line 46
    :cond_3
    :goto_0
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 47
    .line 48
    if-ne p1, p2, :cond_4

    .line 49
    .line 50
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 51
    .line 52
    add-int/2addr p1, v1

    .line 53
    rem-int/lit16 p1, p1, 0x168

    .line 54
    .line 55
    rsub-int p1, p1, 0x168

    .line 56
    .line 57
    rem-int/lit16 p1, p1, 0x168

    .line 58
    .line 59
    rsub-int p2, p1, 0x168

    .line 60
    .line 61
    rem-int/lit16 p2, p2, 0x168

    .line 62
    .line 63
    iput p2, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->g:I

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 67
    .line 68
    sub-int/2addr p1, v1

    .line 69
    add-int/lit16 p1, p1, 0x168

    .line 70
    .line 71
    rem-int/lit16 p1, p1, 0x168

    .line 72
    .line 73
    iput p1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->g:I

    .line 74
    .line 75
    :goto_1
    invoke-virtual {p3, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 76
    .line 77
    .line 78
    iput p1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->f:I

    .line 79
    .line 80
    sget-object p2, Lcom/opay/face/phoneface/ui/camera/CameraManager;->o:Ljava/lang/String;

    .line 81
    .line 82
    new-instance p3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v1, "setDisplayOrientation:"

    .line 88
    .line 89
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p2, p1}, Lcom/opay/face/util/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string p3, "CameraInfo.orientation:"

    .line 108
    .line 109
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget p3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 113
    .line 114
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p2, p1}, Lcom/opay/face/util/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string p3, "mRotate:"

    .line 130
    .line 131
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget p3, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->g:I

    .line 135
    .line 136
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p2, p1}, Lcom/opay/face/util/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string p3, "MODEL:"

    .line 152
    .line 153
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p2, p1}, Lcom/opay/face/util/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public m(Lcom/opay/face/phoneface/ui/config/FlashColor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->n:Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized n()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->c:Landroid/hardware/Camera;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->e:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/opay/face/phoneface/ui/camera/CameraManager$b;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/opay/face/phoneface/ui/camera/CameraManager$b;-><init>(Lcom/opay/face/phoneface/ui/camera/CameraManager;Lcom/opay/face/phoneface/ui/camera/CameraManager$a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->c:Landroid/hardware/Camera;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw v0
.end method

.method public declared-synchronized o()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->o:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "stopPreview..."

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->c:Landroid/hardware/Camera;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->c:Landroid/hardware/Camera;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :catch_0
    :goto_0
    const/4 v0, 0x0

    .line 30
    :try_start_2
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    .line 32
    :cond_0
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    throw v0
.end method
