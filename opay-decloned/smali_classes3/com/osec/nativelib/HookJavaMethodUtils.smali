.class public Lcom/osec/nativelib/HookJavaMethodUtils;
.super Ljava/lang/Object;
.source "HookJavaMethodUtils.java"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# static fields
.field private static final TAG:Ljava/lang/String; = "HookJavaMethodUtils"

.field private static iAccessFlagsOffset:I

.field private static iMethodSize:I

.field private static instance:Lcom/osec/nativelib/HookJavaMethodUtils;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private mACMUtil:Lcom/osec/nativelib/ACMUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/osec/nativelib/HookJavaMethodUtils;->lock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/osec/nativelib/HookJavaMethodUtils;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/osec/nativelib/ACMUtil;->newInstance(Landroid/content/Context;)Lcom/osec/nativelib/ACMUtil;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/osec/nativelib/HookJavaMethodUtils;->mACMUtil:Lcom/osec/nativelib/ACMUtil;

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    sput p1, Lcom/osec/nativelib/HookJavaMethodUtils;->iMethodSize:I

    .line 27
    .line 28
    return-void
.end method

.method private declared-synchronized IsNativeJava(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    .line 16
    .line 17
    .line 18
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    monitor-exit p0

    .line 20
    return p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    :try_start_3
    const-string p1, "HookJavaMethodUtils"

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "methodName "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, " "

    .line 39
    .line 40
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p2, " is not exits"

    .line 47
    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {p1, p2}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return v0

    .line 60
    :catch_1
    :try_start_4
    const-string p2, "HookJavaMethodUtils"

    .line 61
    .line 62
    new-instance p3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v1, "className "

    .line 68
    .line 69
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, "is not exits"

    .line 76
    .line 77
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p2, p1}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    .line 86
    .line 87
    monitor-exit p0

    .line 88
    return v0

    .line 89
    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 90
    throw p1
.end method

.method private declared-synchronized IsNativeOrXposed(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/osec/nativelib/HookJavaMethodUtils;->getAccessFlagsOffset()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, -0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const-string p1, "HookJavaMethodUtils"

    .line 11
    .line 12
    const-string p2, "getAccessFlagsOffset return -1"

    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return v2

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    invoke-virtual {v1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object p3
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :try_start_3
    iget-object v1, p0, Lcom/osec/nativelib/HookJavaMethodUtils;->mACMUtil:Lcom/osec/nativelib/ACMUtil;

    .line 31
    .line 32
    invoke-virtual {v1, p3, v0}, Lcom/osec/nativelib/ACMUtil;->getAccessFlags(Ljava/lang/Object;I)[B

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    const-string v0, "00000"

    .line 37
    .line 38
    new-instance v1, Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p3}, Lcom/osec/nativelib/utils/OpaySecureUtils;->getErrorCode([B)[B

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-static {p3}, Lcom/osec/nativelib/utils/OpaySecureUtils;->getRetData([B)[B

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    aget-byte v0, p3, v2

    .line 58
    .line 59
    and-int/lit16 v0, v0, 0xff

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    aget-byte v1, p3, v1

    .line 63
    .line 64
    and-int/lit16 v1, v1, 0xff

    .line 65
    .line 66
    shl-int/lit8 v1, v1, 0x8

    .line 67
    .line 68
    or-int/2addr v0, v1

    .line 69
    const/4 v1, 0x2

    .line 70
    aget-byte v3, p3, v1

    .line 71
    .line 72
    and-int/lit16 v3, v3, 0xff

    .line 73
    .line 74
    shl-int/lit8 v3, v3, 0x10

    .line 75
    .line 76
    or-int/2addr v0, v3

    .line 77
    const/4 v3, 0x3

    .line 78
    aget-byte p3, p3, v3

    .line 79
    .line 80
    and-int/lit16 p3, p3, 0xff

    .line 81
    .line 82
    shl-int/lit8 p3, p3, 0x18

    .line 83
    .line 84
    or-int/2addr p3, v0

    .line 85
    const-string v0, "HookJavaMethodUtils"

    .line 86
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v4, "getRetData iValue is:"

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v0, v3}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    and-int/lit16 v0, p3, 0x100

    .line 108
    .line 109
    if-eqz v0, :cond_1

    .line 110
    .line 111
    const-string v0, "HookJavaMethodUtils"

    .line 112
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v3, "IsNativeOrXposed:"

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v3, ":"

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v3, " is native"

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-static {v0, v2}, Lcom/osec/nativelib/utils/OpayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const/4 v2, 0x2

    .line 147
    :cond_1
    const/high16 v0, 0x10000000

    .line 148
    .line 149
    and-int/2addr v0, p3

    .line 150
    if-eqz v0, :cond_2

    .line 151
    .line 152
    or-int/lit8 v2, v2, 0x4

    .line 153
    .line 154
    const-string v0, "HookJavaMethodUtils"

    .line 155
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v3, "IsNativeOrXposed:"

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v3, ":"

    .line 170
    .line 171
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v3, " has been hooked by xposed"

    .line 178
    .line 179
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v0, v1}, Lcom/osec/nativelib/utils/OpayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :cond_2
    const/high16 v0, 0x20000000

    .line 190
    .line 191
    and-int/2addr v0, p3

    .line 192
    if-eqz v0, :cond_3

    .line 193
    .line 194
    or-int/lit8 v2, v2, 0x8

    .line 195
    .line 196
    const-string v0, "HookJavaMethodUtils"

    .line 197
    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v3, "IsNativeOrXposed:"

    .line 204
    .line 205
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v3, ":"

    .line 212
    .line 213
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v3, " is backe of a methed that has been hooked by xposed"

    .line 220
    .line 221
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-static {v0, v1}, Lcom/osec/nativelib/utils/OpayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :cond_3
    const/high16 v0, 0x4000000

    .line 232
    .line 233
    and-int/2addr v0, p3

    .line 234
    if-eqz v0, :cond_4

    .line 235
    .line 236
    or-int/lit8 v0, v2, 0x10

    .line 237
    .line 238
    const-string v1, "HookJavaMethodUtils"

    .line 239
    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v3, "IsNativeOrXposed:"

    .line 246
    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v3, ":"

    .line 254
    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v3, " is kAccIgnoreAotCode"

    .line 262
    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-static {v1, v2}, Lcom/osec/nativelib/utils/OpayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    move v2, v0

    .line 274
    :cond_4
    const-string v0, "HookJavaMethodUtils"

    .line 275
    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string v3, "IsNativeOrXposed:"

    .line 282
    .line 283
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string p1, ":"

    .line 290
    .line 291
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string p1, " Modifiers:"

    .line 298
    .line 299
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-static {v0, p1}, Lcom/osec/nativelib/utils/OpayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    goto :goto_0

    .line 313
    :cond_5
    const-string p3, "HookJavaMethodUtils"

    .line 314
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    const-string v1, "IsNativeOrXposed error. class:"

    .line 321
    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string p1, " method:"

    .line 329
    .line 330
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-static {p3, p1}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    .line 342
    .line 343
    :goto_0
    monitor-exit p0

    .line 344
    return v2

    .line 345
    :catch_0
    :try_start_4
    const-string p1, "HookJavaMethodUtils"

    .line 346
    .line 347
    new-instance p3, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string p2, " not found"

    .line 356
    .line 357
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p2

    .line 364
    invoke-static {p1, p2}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 365
    .line 366
    .line 367
    monitor-exit p0

    .line 368
    return v2

    .line 369
    :catch_1
    :try_start_5
    const-string p2, "HookJavaMethodUtils"

    .line 370
    .line 371
    new-instance p3, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string p1, " not found"

    .line 380
    .line 381
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-static {p2, p1}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 389
    .line 390
    .line 391
    monitor-exit p0

    .line 392
    return v2

    .line 393
    :goto_1
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 394
    throw p1
.end method

.method private declared-synchronized IsNativeOrXposedH(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    iget-object p2, p0, Lcom/osec/nativelib/HookJavaMethodUtils;->mACMUtil:Lcom/osec/nativelib/ACMUtil;

    .line 12
    .line 13
    const/high16 p3, 0x4000000

    .line 14
    .line 15
    invoke-virtual {p2, p1, p3}, Lcom/osec/nativelib/ACMUtil;->getMethodStatus(Ljava/lang/Object;I)I

    .line 16
    .line 17
    .line 18
    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    const/4 p2, 0x1

    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    :cond_0
    :goto_0
    monitor-exit p0

    .line 27
    return v0

    .line 28
    :catch_1
    :try_start_3
    const-string p1, "HookJavaMethodUtils"

    .line 29
    .line 30
    new-instance p3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, " not found"

    .line 39
    .line 40
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p1, p2}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return v0

    .line 52
    :catch_2
    :try_start_4
    const-string p2, "HookJavaMethodUtils"

    .line 53
    .line 54
    new-instance p3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, " not found"

    .line 63
    .line 64
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p2, p1}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return v0

    .line 76
    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 77
    throw p1
.end method

.method private getAccessFlagsOffset()I
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    const-class v4, Lcom/osec/nativelib/HookJavaMethodDummy;

    .line 7
    .line 8
    const-string v5, "HookJavaMethodUtils"

    .line 9
    .line 10
    sget v6, Lcom/osec/nativelib/HookJavaMethodUtils;->iAccessFlagsOffset:I

    .line 11
    .line 12
    if-lez v6, :cond_0

    .line 13
    .line 14
    const/16 v7, 0x64

    .line 15
    .line 16
    if-ge v6, v7, :cond_0

    .line 17
    .line 18
    return v6

    .line 19
    :cond_0
    const/4 v6, -0x1

    .line 20
    :try_start_0
    const-class v7, Lcom/osec/nativelib/NativeACMUtil;

    .line 21
    .line 22
    const-string v8, "NativeGetAccessFlags"

    .line 23
    .line 24
    new-array v9, v3, [Ljava/lang/Class;

    .line 25
    .line 26
    const-class v10, Ljava/lang/Object;

    .line 27
    .line 28
    aput-object v10, v9, v2

    .line 29
    .line 30
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    aput-object v10, v9, v0

    .line 33
    .line 34
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    const-string v8, "testOffset2"

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const-string v10, "testOffset3"

    .line 46
    .line 47
    invoke-virtual {v4, v10, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    invoke-direct/range {p0 .. p0}, Lcom/osec/nativelib/HookJavaMethodUtils;->methodSize()I

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    iget-object v11, v1, Lcom/osec/nativelib/HookJavaMethodUtils;->mACMUtil:Lcom/osec/nativelib/ACMUtil;

    .line 56
    .line 57
    const/16 v12, 0x109

    .line 58
    .line 59
    invoke-virtual {v11, v7, v10, v12, v2}, Lcom/osec/nativelib/ACMUtil;->getAccessFlagsOffset(Ljava/lang/Object;III)[B

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    new-instance v13, Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v11}, Lcom/osec/nativelib/utils/OpaySecureUtils;->getErrorCode([B)[B

    .line 66
    .line 67
    .line 68
    move-result-object v14

    .line 69
    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    .line 70
    .line 71
    .line 72
    const-string v14, "00000"

    .line 73
    .line 74
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v13

    .line 78
    if-eqz v13, :cond_a

    .line 79
    .line 80
    invoke-static {v11}, Lcom/osec/nativelib/utils/OpaySecureUtils;->getRetData([B)[B

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    aget-byte v13, v11, v2

    .line 85
    .line 86
    and-int/lit16 v13, v13, 0xff

    .line 87
    .line 88
    aget-byte v15, v11, v0

    .line 89
    .line 90
    and-int/lit16 v15, v15, 0xff

    .line 91
    .line 92
    shl-int/lit8 v15, v15, 0x8

    .line 93
    .line 94
    or-int/2addr v13, v15

    .line 95
    aget-byte v15, v11, v3

    .line 96
    .line 97
    and-int/lit16 v15, v15, 0xff

    .line 98
    .line 99
    shl-int/lit8 v15, v15, 0x10

    .line 100
    .line 101
    or-int/2addr v13, v15

    .line 102
    const/4 v15, 0x3

    .line 103
    aget-byte v11, v11, v15

    .line 104
    .line 105
    and-int/lit16 v11, v11, 0xff

    .line 106
    .line 107
    shl-int/lit8 v11, v11, 0x18

    .line 108
    .line 109
    or-int/2addr v11, v13

    .line 110
    new-instance v13, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v9, "offset1:"

    .line 116
    .line 117
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-static {v5, v9}, Lcom/osec/nativelib/utils/OpayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    if-ne v11, v6, :cond_1

    .line 131
    .line 132
    return v6

    .line 133
    :cond_1
    iget-object v9, v1, Lcom/osec/nativelib/HookJavaMethodUtils;->mACMUtil:Lcom/osec/nativelib/ACMUtil;

    .line 134
    .line 135
    const/16 v13, 0x19

    .line 136
    .line 137
    invoke-virtual {v9, v8, v10, v13, v2}, Lcom/osec/nativelib/ACMUtil;->getAccessFlagsOffset(Ljava/lang/Object;III)[B

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    new-instance v12, Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v9}, Lcom/osec/nativelib/utils/OpaySecureUtils;->getErrorCode([B)[B

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v12

    .line 154
    if-eqz v12, :cond_9

    .line 155
    .line 156
    invoke-static {v9}, Lcom/osec/nativelib/utils/OpaySecureUtils;->getRetData([B)[B

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    aget-byte v12, v9, v2

    .line 161
    .line 162
    and-int/lit16 v12, v12, 0xff

    .line 163
    .line 164
    aget-byte v13, v9, v0

    .line 165
    .line 166
    and-int/lit16 v13, v13, 0xff

    .line 167
    .line 168
    shl-int/lit8 v13, v13, 0x8

    .line 169
    .line 170
    or-int/2addr v12, v13

    .line 171
    aget-byte v13, v9, v3

    .line 172
    .line 173
    and-int/lit16 v13, v13, 0xff

    .line 174
    .line 175
    shl-int/lit8 v13, v13, 0x10

    .line 176
    .line 177
    or-int/2addr v12, v13

    .line 178
    aget-byte v9, v9, v15

    .line 179
    .line 180
    and-int/lit16 v9, v9, 0xff

    .line 181
    .line 182
    shl-int/lit8 v9, v9, 0x18

    .line 183
    .line 184
    or-int/2addr v9, v12

    .line 185
    new-instance v12, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v13, "offset2:"

    .line 191
    .line 192
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    invoke-static {v5, v12}, Lcom/osec/nativelib/utils/OpayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    if-ne v11, v6, :cond_2

    .line 206
    .line 207
    return v6

    .line 208
    :cond_2
    if-ne v11, v9, :cond_3

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_3
    if-le v11, v9, :cond_4

    .line 212
    .line 213
    move-object v7, v8

    .line 214
    const/16 v12, 0x19

    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_4
    if-ge v11, v9, :cond_5

    .line 218
    .line 219
    move v11, v9

    .line 220
    const/16 v12, 0x109

    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_5
    const/4 v7, 0x0

    .line 224
    const/4 v11, -0x1

    .line 225
    const/4 v12, -0x1

    .line 226
    :goto_0
    iget-object v8, v1, Lcom/osec/nativelib/HookJavaMethodUtils;->mACMUtil:Lcom/osec/nativelib/ACMUtil;

    .line 227
    .line 228
    invoke-virtual {v8, v7, v10, v12, v11}, Lcom/osec/nativelib/ACMUtil;->getAccessFlagsOffset(Ljava/lang/Object;III)[B

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    new-instance v8, Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {v7}, Lcom/osec/nativelib/utils/OpaySecureUtils;->getErrorCode([B)[B

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-eqz v8, :cond_6

    .line 246
    .line 247
    invoke-static {v7}, Lcom/osec/nativelib/utils/OpaySecureUtils;->getRetData([B)[B

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    aget-byte v8, v7, v2

    .line 252
    .line 253
    aget-byte v8, v7, v0

    .line 254
    .line 255
    aget-byte v8, v7, v3

    .line 256
    .line 257
    aget-byte v7, v7, v15

    .line 258
    .line 259
    new-instance v7, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v8, "offset:"

    .line 265
    .line 266
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    invoke-static {v5, v7}, Lcom/osec/nativelib/utils/OpayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    goto :goto_1

    .line 280
    :cond_6
    const-string v7, "again:getoffset error"

    .line 281
    .line 282
    invoke-static {v5, v7}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :goto_1
    iget-object v7, v1, Lcom/osec/nativelib/HookJavaMethodUtils;->mACMUtil:Lcom/osec/nativelib/ACMUtil;

    .line 286
    .line 287
    const/16 v8, 0x12

    .line 288
    .line 289
    invoke-virtual {v7, v4, v10, v8, v11}, Lcom/osec/nativelib/ACMUtil;->getAccessFlagsOffset(Ljava/lang/Object;III)[B

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    new-instance v7, Ljava/lang/String;

    .line 294
    .line 295
    invoke-static {v4}, Lcom/osec/nativelib/utils/OpaySecureUtils;->getErrorCode([B)[B

    .line 296
    .line 297
    .line 298
    move-result-object v8

    .line 299
    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    if-eqz v7, :cond_8

    .line 307
    .line 308
    invoke-static {v4}, Lcom/osec/nativelib/utils/OpaySecureUtils;->getRetData([B)[B

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    aget-byte v2, v4, v2

    .line 313
    .line 314
    and-int/lit16 v2, v2, 0xff

    .line 315
    .line 316
    aget-byte v0, v4, v0

    .line 317
    .line 318
    and-int/lit16 v0, v0, 0xff

    .line 319
    .line 320
    shl-int/lit8 v0, v0, 0x8

    .line 321
    .line 322
    or-int/2addr v0, v2

    .line 323
    aget-byte v2, v4, v3

    .line 324
    .line 325
    and-int/lit16 v2, v2, 0xff

    .line 326
    .line 327
    shl-int/lit8 v2, v2, 0x10

    .line 328
    .line 329
    or-int/2addr v0, v2

    .line 330
    aget-byte v2, v4, v15

    .line 331
    .line 332
    and-int/lit16 v2, v2, 0xff

    .line 333
    .line 334
    shl-int/lit8 v2, v2, 0x18

    .line 335
    .line 336
    or-int/2addr v0, v2

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    const-string v3, "offset4:"

    .line 343
    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-static {v5, v2}, Lcom/osec/nativelib/utils/OpayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    if-eq v0, v11, :cond_7

    .line 358
    .line 359
    return v6

    .line 360
    :cond_7
    sput v11, Lcom/osec/nativelib/HookJavaMethodUtils;->iAccessFlagsOffset:I

    .line 361
    .line 362
    return v11

    .line 363
    :cond_8
    const-string v0, "4:getoffset error"

    .line 364
    .line 365
    invoke-static {v5, v0}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    return v6

    .line 369
    :cond_9
    const-string v0, "2:getoffset error"

    .line 370
    .line 371
    invoke-static {v5, v0}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    return v6

    .line 375
    :cond_a
    const-string v0, "1:getoffset error"

    .line 376
    .line 377
    invoke-static {v5, v0}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    return v6

    .line 381
    :catch_0
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-static {v5, v0}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    return v6
.end method

.method private methodSize()I
    .locals 5

    .line 1
    sget v0, Lcom/osec/nativelib/HookJavaMethodUtils;->iMethodSize:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x64

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    const-class v0, Lcom/osec/nativelib/HookJavaMethodDummy;

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    :try_start_0
    const-string v2, "testOffset2"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v4, "testOffset3"

    .line 21
    .line 22
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    iget-object v3, p0, Lcom/osec/nativelib/HookJavaMethodUtils;->mACMUtil:Lcom/osec/nativelib/ACMUtil;

    .line 27
    .line 28
    invoke-virtual {v3, v2, v0}, Lcom/osec/nativelib/ACMUtil;->methodSize(Ljava/lang/Object;Ljava/lang/Object;)[B

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v2, Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/osec/nativelib/utils/OpaySecureUtils;->getErrorCode([B)[B

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 39
    .line 40
    .line 41
    const-string v3, "00000"

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const-string v3, "HookJavaMethodUtils"

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-static {v0}, Lcom/osec/nativelib/utils/OpaySecureUtils;->getRetData([B)[B

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x0

    .line 56
    aget-byte v1, v0, v1

    .line 57
    .line 58
    and-int/lit16 v1, v1, 0xff

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    aget-byte v2, v0, v2

    .line 62
    .line 63
    and-int/lit16 v2, v2, 0xff

    .line 64
    .line 65
    shl-int/lit8 v2, v2, 0x8

    .line 66
    .line 67
    or-int/2addr v1, v2

    .line 68
    const/4 v2, 0x2

    .line 69
    aget-byte v2, v0, v2

    .line 70
    .line 71
    and-int/lit16 v2, v2, 0xff

    .line 72
    .line 73
    shl-int/lit8 v2, v2, 0x10

    .line 74
    .line 75
    or-int/2addr v1, v2

    .line 76
    const/4 v2, 0x3

    .line 77
    aget-byte v0, v0, v2

    .line 78
    .line 79
    and-int/lit16 v0, v0, 0xff

    .line 80
    .line 81
    shl-int/lit8 v0, v0, 0x18

    .line 82
    .line 83
    or-int/2addr v1, v0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v2, "methodSize:"

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v3, v0}, Lcom/osec/nativelib/utils/OpayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "methodSize error"

    .line 106
    .line 107
    invoke-static {v3, v0}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    sput v1, Lcom/osec/nativelib/HookJavaMethodUtils;->iMethodSize:I

    .line 111
    .line 112
    :catch_0
    return v1
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/osec/nativelib/HookJavaMethodUtils;
    .locals 3

    .line 1
    const-string v0, "HookJavaMethodUtils"

    .line 2
    .line 3
    const-string v1, "newInstance"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/osec/nativelib/utils/OpayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "HookJavaMethodUtils"

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "apiLevel:"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/osec/nativelib/utils/OpayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcom/osec/nativelib/HookJavaMethodUtils;->instance:Lcom/osec/nativelib/HookJavaMethodUtils;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    sget-object v0, Lcom/osec/nativelib/HookJavaMethodUtils;->lock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/osec/nativelib/HookJavaMethodUtils;->instance:Lcom/osec/nativelib/HookJavaMethodUtils;

    .line 40
    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    new-instance v1, Lcom/osec/nativelib/HookJavaMethodUtils;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/osec/nativelib/HookJavaMethodUtils;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    sput-object v1, Lcom/osec/nativelib/HookJavaMethodUtils;->instance:Lcom/osec/nativelib/HookJavaMethodUtils;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    monitor-exit v0

    .line 54
    goto :goto_2

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0

    .line 57
    :cond_1
    :goto_2
    sget-object p0, Lcom/osec/nativelib/HookJavaMethodUtils;->instance:Lcom/osec/nativelib/HookJavaMethodUtils;

    .line 58
    .line 59
    return-object p0
.end method


# virtual methods
.method public declared-synchronized IsHooked(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/osec/nativelib/HookJavaMethodUtils;->IsNativeJava(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    const-string p2, "HookJavaMethodUtils"

    .line 7
    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "IsNativeJava is:"

    .line 14
    .line 15
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {p2, p3}, Lcom/osec/nativelib/utils/OpayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string p2, "HookJavaMethodUtils"

    .line 29
    .line 30
    new-instance p3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v0, "after IsNativeJava is:"

    .line 36
    .line 37
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-static {p2, p3}, Lcom/osec/nativelib/utils/OpayLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return p1

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p1
.end method
