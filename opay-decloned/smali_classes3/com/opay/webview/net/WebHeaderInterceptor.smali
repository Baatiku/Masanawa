.class public final Lcom/opay/webview/net/WebHeaderInterceptor;
.super Ljava/lang/Object;
.source "WebHeaderInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/webview/net/WebHeaderInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00112\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/opay/webview/net/WebHeaderInterceptor;",
        "Lokhttp3/Interceptor;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lokhttp3/Request$Builder;",
        "builder",
        "",
        "a",
        "(Lokhttp3/Request$Builder;)V",
        "Lokhttp3/Interceptor$Chain;",
        "chain",
        "Lokhttp3/Response;",
        "intercept",
        "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;",
        "Landroid/content/Context;",
        "b",
        "Companion",
        "webview_lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lcom/opay/webview/net/WebHeaderInterceptor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/webview/net/WebHeaderInterceptor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/webview/net/WebHeaderInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/webview/net/WebHeaderInterceptor;->b:Lcom/opay/webview/net/WebHeaderInterceptor$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/opay/webview/net/WebHeaderInterceptor;->a:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method

.method private final a(Lokhttp3/Request$Builder;)V
    .locals 2

    .line 1
    const-string v0, "Accept"

    .line 2
    .line 3
    const-string v1, "application/json"

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 6
    .line 7
    .line 8
    const-string v0, "Content-Type"

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 9
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dma"

    .line 2
    .line 3
    const-string v1, "chain"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "requestBuilder"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v1}, Lcom/opay/webview/net/WebHeaderInterceptor;->a(Lokhttp3/Request$Builder;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/opay/webview/net/WebHeaderInterceptor;->a:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "package_name"

    .line 31
    .line 32
    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 33
    .line 34
    .line 35
    const-string v2, "brand"

    .line 36
    .line 37
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 40
    .line 41
    .line 42
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 43
    .line 44
    const-string v3, "system_model"

    .line 45
    .line 46
    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 47
    .line 48
    .line 49
    const-string v3, "device"

    .line 50
    .line 51
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 54
    .line 55
    .line 56
    const-string v3, "code_name"

    .line 57
    .line 58
    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 61
    .line 62
    .line 63
    sget-object v3, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 64
    .line 65
    const-class v4, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 72
    .line 73
    const-string v4, ""

    .line 74
    .line 75
    if-eqz v3, :cond_0

    .line 76
    .line 77
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IAdvertisingDataGenerator;->advId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    if-nez v5, :cond_1

    .line 82
    .line 83
    :cond_0
    move-object v5, v4

    .line 84
    :cond_1
    const-string v6, "gaid"

    .line 85
    .line 86
    invoke-virtual {v1, v6, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 87
    .line 88
    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-nez v5, :cond_3

    .line 96
    .line 97
    :cond_2
    move-object v5, v4

    .line 98
    :cond_3
    const-string v6, "version_name"

    .line 99
    .line 100
    invoke-virtual {v1, v6, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 101
    .line 102
    .line 103
    if-eqz v3, :cond_4

    .line 104
    .line 105
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IBuildDataGenerator;->mcc()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    if-nez v5, :cond_5

    .line 110
    .line 111
    :cond_4
    move-object v5, v4

    .line 112
    :cond_5
    const-string v7, "mcc"

    .line 113
    .line 114
    invoke-virtual {v1, v7, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 115
    .line 116
    .line 117
    if-eqz v3, :cond_6

    .line 118
    .line 119
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    if-nez v5, :cond_7

    .line 124
    .line 125
    :cond_6
    move-object v5, v4

    .line 126
    :cond_7
    const-string v7, "UserId"

    .line 127
    .line 128
    invoke-virtual {v1, v7, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 129
    .line 130
    .line 131
    if-eqz v3, :cond_8

    .line 132
    .line 133
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IAdvertisingDataGenerator;->mediaSource()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    if-nez v5, :cond_9

    .line 138
    .line 139
    :cond_8
    move-object v5, v4

    .line 140
    :cond_9
    const-string v7, "mediaSource"

    .line 141
    .line 142
    invoke-virtual {v1, v7, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 143
    .line 144
    .line 145
    if-eqz v3, :cond_a

    .line 146
    .line 147
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->token()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    if-nez v5, :cond_b

    .line 152
    .line 153
    :cond_a
    move-object v5, v4

    .line 154
    :cond_b
    const-string v7, "Authorization"

    .line 155
    .line 156
    invoke-virtual {v1, v7, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 157
    .line 158
    .line 159
    sget-object v5, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 160
    .line 161
    iget-object v7, p0, Lcom/opay/webview/net/WebHeaderInterceptor;->a:Landroid/content/Context;

    .line 162
    .line 163
    invoke-virtual {v5, v7}, Lteam/opay/swarmfoundation/device/AuthUtil;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    const-string v8, "device_id"

    .line 168
    .line 169
    invoke-virtual {v1, v8, v7}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 170
    .line 171
    .line 172
    iget-object v7, p0, Lcom/opay/webview/net/WebHeaderInterceptor;->a:Landroid/content/Context;

    .line 173
    .line 174
    invoke-virtual {v5, v7}, Lteam/opay/swarmfoundation/device/AuthUtil;->C(Landroid/content/Context;)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    const-string v8, "version_code"

    .line 183
    .line 184
    invoke-virtual {v1, v8, v7}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 185
    .line 186
    .line 187
    const/4 v7, 0x0

    .line 188
    if-eqz v3, :cond_c

    .line 189
    .line 190
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    goto :goto_0

    .line 195
    :cond_c
    move-object v8, v7

    .line 196
    :goto_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    invoke-virtual {v1, v6, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 201
    .line 202
    .line 203
    sget-object v6, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->a:Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;

    .line 204
    .line 205
    iget-object v8, p0, Lcom/opay/webview/net/WebHeaderInterceptor;->a:Landroid/content/Context;

    .line 206
    .line 207
    invoke-virtual {v6, v8}, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    const-string v8, "network_ip"

    .line 212
    .line 213
    invoke-virtual {v1, v8, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 214
    .line 215
    .line 216
    const-string v6, "trace_id"

    .line 217
    .line 218
    invoke-virtual {v5}, Lteam/opay/swarmfoundation/device/AuthUtil;->A()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-virtual {v1, v6, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 223
    .line 224
    .line 225
    const-string v5, "model"

    .line 226
    .line 227
    invoke-virtual {v1, v5, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 228
    .line 229
    .line 230
    :try_start_0
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v1, v0, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :catch_0
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 237
    .line 238
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {v1, v0, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 243
    .line 244
    .line 245
    :goto_1
    if-eqz v3, :cond_d

    .line 246
    .line 247
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->appId()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    goto :goto_2

    .line 252
    :cond_d
    move-object v0, v7

    .line 253
    :goto_2
    if-nez v0, :cond_e

    .line 254
    .line 255
    move-object v0, v4

    .line 256
    :cond_e
    const-string v2, "app"

    .line 257
    .line 258
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 259
    .line 260
    .line 261
    if-eqz v3, :cond_f

    .line 262
    .line 263
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->platform()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    goto :goto_3

    .line 268
    :cond_f
    move-object v0, v7

    .line 269
    :goto_3
    if-nez v0, :cond_10

    .line 270
    .line 271
    move-object v0, v4

    .line 272
    :cond_10
    const-string v2, "platform"

    .line 273
    .line 274
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 275
    .line 276
    .line 277
    if-eqz v3, :cond_11

    .line 278
    .line 279
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->isVirtualDevice()Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    goto :goto_4

    .line 288
    :cond_11
    move-object v0, v7

    .line 289
    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    const-string v2, "isVirtualDevice"

    .line 294
    .line 295
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 296
    .line 297
    .line 298
    if-eqz v3, :cond_12

    .line 299
    .line 300
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->getBlackbox()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    if-nez v0, :cond_13

    .line 305
    .line 306
    :cond_12
    move-object v0, v4

    .line 307
    :cond_13
    const-string v2, "blackbox"

    .line 308
    .line 309
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 310
    .line 311
    .line 312
    if-eqz v3, :cond_14

    .line 313
    .line 314
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->smBlackbox()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    if-nez v0, :cond_15

    .line 319
    .line 320
    :cond_14
    move-object v0, v4

    .line 321
    :cond_15
    const-string v2, "ishumeiId"

    .line 322
    .line 323
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 324
    .line 325
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    if-eqz v3, :cond_16

    .line 332
    .line 333
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IUserLocationGenerator;->longitude()D

    .line 334
    .line 335
    .line 336
    move-result-wide v5

    .line 337
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    goto :goto_5

    .line 342
    :cond_16
    move-object v2, v7

    .line 343
    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const/16 v2, 0x7c

    .line 347
    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    if-eqz v3, :cond_17

    .line 352
    .line 353
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IUserLocationGenerator;->latitude()D

    .line 354
    .line 355
    .line 356
    move-result-wide v5

    .line 357
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 358
    .line 359
    .line 360
    move-result-object v7

    .line 361
    :cond_17
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    const-string v2, "location"

    .line 369
    .line 370
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 371
    .line 372
    .line 373
    if-eqz v3, :cond_18

    .line 374
    .line 375
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->role()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    if-nez v0, :cond_19

    .line 380
    .line 381
    :cond_18
    const-string v0, "customer"

    .line 382
    .line 383
    :cond_19
    const-string v2, "role"

    .line 384
    .line 385
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 386
    .line 387
    .line 388
    if-eqz v3, :cond_1b

    .line 389
    .line 390
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IAdvertisingDataGenerator;->campaign()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    if-nez v0, :cond_1a

    .line 395
    .line 396
    goto :goto_6

    .line 397
    :cond_1a
    move-object v4, v0

    .line 398
    :cond_1b
    :goto_6
    const-string v0, "campaign"

    .line 399
    .line 400
    invoke-virtual {v1, v0, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    const-string v0, "chain.proceed(requestBuilder.build())"

    .line 412
    .line 413
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    return-object p1
.end method
