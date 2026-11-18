.class public Lcom/osec/nativelib/utils/HttpHandler;
.super Ljava/lang/Object;
.source "HttpHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setTrustManager(Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/osec/nativelib/utils/HttpHandler$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/osec/nativelib/utils/HttpHandler$1;-><init>(Lcom/osec/nativelib/utils/HttpHandler;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    new-array p1, p1, [Ljavax/net/ssl/TrustManager;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-object v0, p1, v1

    .line 11
    .line 12
    const-string v0, "TLS"

    .line 13
    .line 14
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/security/SecureRandom;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v2, p1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 25
    .line 26
    .line 27
    move-object p1, p2

    .line 28
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 35
    .line 36
    .line 37
    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    .line 38
    .line 39
    new-instance p1, Lcom/osec/nativelib/utils/HttpHandler$2;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Lcom/osec/nativelib/utils/HttpHandler$2;-><init>(Lcom/osec/nativelib/utils/HttpHandler;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception p1

    .line 49
    goto :goto_0

    .line 50
    :catch_1
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :goto_2
    return-void
.end method


# virtual methods
.method public sendHttpGetRequest(Ljava/lang/String;)Lcom/osec/nativelib/utils/OpayResultMessage;
    .locals 7

    .line 1
    const-string v0, "HttpHandler"

    .line 2
    .line 3
    const-string v1, "22046"

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "00000"

    .line 11
    .line 12
    :try_start_0
    new-instance v4, Ljava/net/URL;

    .line 13
    .line 14
    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/net/URLConnection;

    .line 26
    .line 27
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 28
    .line 29
    const-string v4, "GET"

    .line 30
    .line 31
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v4, "Accept-Charset"

    .line 35
    .line 36
    const-string v5, "UTF-8"

    .line 37
    .line 38
    invoke-virtual {p1, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-virtual {p1, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 43
    .line 44
    .line 45
    const/16 v5, 0x2710

    .line 46
    .line 47
    invoke-virtual {p1, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 51
    .line 52
    .line 53
    const-string v4, "connection"

    .line 54
    .line 55
    const-string v5, "close"

    .line 56
    .line 57
    invoke-virtual {p1, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v4, "http.keepAlive"

    .line 61
    .line 62
    const-string v5, "false"

    .line 63
    .line 64
    invoke-static {v4, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    const/16 v5, 0xc8

    .line 72
    .line 73
    if-ne v4, v5, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    new-instance v5, Ljava/io/BufferedReader;

    .line 80
    .line 81
    new-instance v6, Ljava/io/InputStreamReader;

    .line 82
    .line 83
    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    if-eqz v6, :cond_0

    .line 94
    .line 95
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception p1

    .line 100
    goto :goto_1

    .line 101
    :catch_1
    move-exception p1

    .line 102
    goto :goto_2

    .line 103
    :catch_2
    move-exception p1

    .line 104
    goto :goto_3

    .line 105
    :catch_3
    move-exception p1

    .line 106
    goto :goto_4

    .line 107
    :catch_4
    move-exception p1

    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 117
    .line 118
    .line 119
    move-object v1, v3

    .line 120
    goto/16 :goto_6

    .line 121
    .line 122
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v5, "http status code:"

    .line 128
    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-static {v0, v4}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    goto :goto_6

    .line 150
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    .line 152
    .line 153
    goto :goto_6

    .line 154
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v5, "sendHttpRequest IOException:"

    .line 160
    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-static {v0, v4}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 179
    .line 180
    .line 181
    goto :goto_6

    .line 182
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v5, "sendHttpRequest MalformedURLException:"

    .line 188
    .line 189
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-static {v0, v4}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    .line 208
    .line 209
    goto :goto_6

    .line 210
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v5, "sendHttpRequest ProtocolException:"

    .line 216
    .line 217
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-static {v0, v4}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v5, "sendHttpRequest UnsupportedEncodingException:"

    .line 244
    .line 245
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-static {v0, v4}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 263
    .line 264
    .line 265
    :goto_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-eqz p1, :cond_2

    .line 270
    .line 271
    new-instance p1, Lcom/osec/nativelib/utils/OpayResultMessage;

    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-direct {p1, v0, v1}, Lcom/osec/nativelib/utils/OpayResultMessage;-><init>([BLjava/lang/String;)V

    .line 282
    .line 283
    .line 284
    return-object p1

    .line 285
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    const-string v0, ""

    .line 290
    .line 291
    if-nez p1, :cond_3

    .line 292
    .line 293
    if-ne v1, v3, :cond_3

    .line 294
    .line 295
    new-instance p1, Lcom/osec/nativelib/utils/OpayResultMessage;

    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    const-string v1, "22001"

    .line 302
    .line 303
    invoke-direct {p1, v0, v1}, Lcom/osec/nativelib/utils/OpayResultMessage;-><init>([BLjava/lang/String;)V

    .line 304
    .line 305
    .line 306
    return-object p1

    .line 307
    :cond_3
    new-instance p1, Lcom/osec/nativelib/utils/OpayResultMessage;

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-direct {p1, v0, v1}, Lcom/osec/nativelib/utils/OpayResultMessage;-><init>([BLjava/lang/String;)V

    .line 314
    .line 315
    .line 316
    return-object p1
.end method

.method public sendHttpRequest(Ljava/lang/String;Ljava/lang/String;I)Lcom/osec/nativelib/utils/OpayResultMessage;
    .locals 8

    .line 1
    const-string v0, "22046"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "sendPostHttp: reqData="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "HttpHandler"

    .line 21
    .line 22
    invoke-static {v2, v1}, Lcom/osec/nativelib/utils/OpayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "00000"

    .line 31
    .line 32
    :try_start_0
    new-instance v4, Ljava/net/URL;

    .line 33
    .line 34
    invoke-direct {v4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/net/URLConnection;

    .line 46
    .line 47
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 48
    .line 49
    const-string v5, "POST"

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v5, "Accept-Charset"

    .line 55
    .line 56
    const-string v6, "UTF-8"

    .line 57
    .line 58
    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v5, "Content-Type"

    .line 62
    .line 63
    const-string v6, "application/json"

    .line 64
    .line 65
    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    const/4 v5, 0x1

    .line 69
    const-string v6, "ET"

    .line 70
    .line 71
    if-nez p3, :cond_0

    .line 72
    .line 73
    :try_start_1
    const-string p3, "P"

    .line 74
    .line 75
    invoke-virtual {v4, v6, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception p1

    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :catch_1
    move-exception p1

    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :catch_2
    move-exception p1

    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :catch_3
    move-exception p1

    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :catch_4
    move-exception p1

    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :cond_0
    if-ne p3, v5, :cond_1

    .line 95
    .line 96
    const-string p3, "H"

    .line 97
    .line 98
    invoke-virtual {v4, v6, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const/4 v7, 0x2

    .line 103
    if-ne p3, v7, :cond_2

    .line 104
    .line 105
    const-string p3, "SM"

    .line 106
    .line 107
    invoke-virtual {v4, v6, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    :goto_0
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 111
    .line 112
    .line 113
    const/16 p3, 0x2710

    .line 114
    .line 115
    invoke-virtual {v4, p3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 119
    .line 120
    .line 121
    const-string p3, "connection"

    .line 122
    .line 123
    const-string v5, "close"

    .line 124
    .line 125
    invoke-virtual {v4, p3, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string p3, "http.keepAlive"

    .line 129
    .line 130
    const-string v5, "false"

    .line 131
    .line 132
    invoke-static {p3, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result p3

    .line 139
    if-nez p3, :cond_3

    .line 140
    .line 141
    const-string p3, "https"

    .line 142
    .line 143
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result p3

    .line 147
    if-eqz p3, :cond_3

    .line 148
    .line 149
    invoke-direct {p0, p2, v4}, Lcom/osec/nativelib/utils/HttpHandler;->setTrustManager(Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    new-instance p2, Ljava/io/OutputStreamWriter;

    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 155
    .line 156
    .line 157
    move-result-object p3

    .line 158
    const-string v5, "utf-8"

    .line 159
    .line 160
    invoke-direct {p2, p3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->close()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    const/16 p2, 0xc8

    .line 177
    .line 178
    if-ne p1, p2, :cond_5

    .line 179
    .line 180
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    new-instance p2, Ljava/io/BufferedReader;

    .line 185
    .line 186
    new-instance p3, Ljava/io/InputStreamReader;

    .line 187
    .line 188
    invoke-direct {p3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 189
    .line 190
    .line 191
    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 192
    .line 193
    .line 194
    :goto_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    if-eqz p3, :cond_4

    .line 199
    .line 200
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 211
    .line 212
    .line 213
    move-object v0, v3

    .line 214
    goto/16 :goto_7

    .line 215
    .line 216
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string p2, "http status code:"

    .line 222
    .line 223
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-static {v2, p1}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    .line 242
    .line 243
    goto :goto_7

    .line 244
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    .line 246
    .line 247
    goto :goto_7

    .line 248
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string p3, "sendHttpRequest IOException:"

    .line 254
    .line 255
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p3

    .line 262
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    invoke-static {v2, p2}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 273
    .line 274
    .line 275
    goto :goto_7

    .line 276
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string p3, "sendHttpRequest MalformedURLException:"

    .line 282
    .line 283
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p3

    .line 290
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    invoke-static {v2, p2}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 301
    .line 302
    .line 303
    goto :goto_7

    .line 304
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    const-string p3, "sendHttpRequest ProtocolException:"

    .line 310
    .line 311
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p3

    .line 318
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    invoke-static {v2, p2}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 329
    .line 330
    .line 331
    goto :goto_7

    .line 332
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    const-string p3, "sendHttpRequest UnsupportedEncodingException:"

    .line 338
    .line 339
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p3

    .line 346
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    invoke-static {v2, p2}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 357
    .line 358
    .line 359
    :goto_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    if-eqz p1, :cond_6

    .line 364
    .line 365
    new-instance p1, Lcom/osec/nativelib/utils/OpayResultMessage;

    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p2

    .line 371
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    invoke-direct {p1, p2, v0}, Lcom/osec/nativelib/utils/OpayResultMessage;-><init>([BLjava/lang/String;)V

    .line 376
    .line 377
    .line 378
    return-object p1

    .line 379
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    const-string p2, ""

    .line 384
    .line 385
    if-nez p1, :cond_7

    .line 386
    .line 387
    if-ne v0, v3, :cond_7

    .line 388
    .line 389
    new-instance p1, Lcom/osec/nativelib/utils/OpayResultMessage;

    .line 390
    .line 391
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 392
    .line 393
    .line 394
    move-result-object p2

    .line 395
    const-string p3, "22001"

    .line 396
    .line 397
    invoke-direct {p1, p2, p3}, Lcom/osec/nativelib/utils/OpayResultMessage;-><init>([BLjava/lang/String;)V

    .line 398
    .line 399
    .line 400
    return-object p1

    .line 401
    :cond_7
    new-instance p1, Lcom/osec/nativelib/utils/OpayResultMessage;

    .line 402
    .line 403
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 404
    .line 405
    .line 406
    move-result-object p2

    .line 407
    invoke-direct {p1, p2, v0}, Lcom/osec/nativelib/utils/OpayResultMessage;-><init>([BLjava/lang/String;)V

    .line 408
    .line 409
    .line 410
    return-object p1
.end method
