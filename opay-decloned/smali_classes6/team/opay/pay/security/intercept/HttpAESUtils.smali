.class public final Lteam/opay/pay/security/intercept/HttpAESUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0012\n\u0002\u0008\n\n\u0002\u0010\u0019\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u0000B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0001\u0010\u0002J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ%\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\'\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u0019\u0010#\u001a\u00020\n2\u0008\u0010\"\u001a\u0004\u0018\u00010\u001eH\u0002\u00a2\u0006\u0004\u0008#\u0010!R\u0014\u0010$\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0014\u0010&\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008&\u0010%R\u0014\u0010\'\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\'\u0010%R\u0014\u0010(\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008(\u0010%R\u0014\u0010*\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u0010,\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008,\u0010%R\u0014\u0010-\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008-\u0010%R\u0014\u0010.\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008.\u0010%R\u0014\u0010/\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008/\u0010%R\u0014\u00100\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u00080\u0010%R\u0014\u00101\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u00081\u0010%R\u0014\u00102\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u00082\u0010%R\u0014\u00103\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u00083\u0010%R\u001d\u00109\u001a\u0004\u0018\u0001048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108\u00a8\u0006:"
    }
    d2 = {
        "Lteam/opay/pay/security/intercept/HttpAESUtils;",
        "<init>",
        "()V",
        "Ljava/lang/StringBuffer;",
        "sb",
        "",
        "b",
        "",
        "appendHex",
        "(Ljava/lang/StringBuffer;B)V",
        "",
        "key",
        "Lokhttp3/Response;",
        "response",
        "path",
        "decryptBody",
        "(Ljava/lang/String;Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Response;",
        "Lokhttp3/Request$Builder;",
        "builder",
        "Lokhttp3/RequestBody;",
        "body",
        "Lokhttp3/Request;",
        "request",
        "encryptBody",
        "(Lokhttp3/Request$Builder;Lokhttp3/RequestBody;Lokhttp3/Request;)Ljava/lang/String;",
        "generateKey",
        "()Ljava/lang/String;",
        "input",
        "md5",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "",
        "data",
        "printHexBinary",
        "([B)Ljava/lang/String;",
        "buf",
        "toHex",
        "ACCEPT_VALUE",
        "Ljava/lang/String;",
        "ENCRYPT_DATA",
        "ENCRYPT_KEY",
        "HEX",
        "",
        "HEX_CHARS",
        "[C",
        "KEY_APP",
        "KEY_DEVICE_ID",
        "KEY_PLATFORM",
        "KEY_TIMESTAMP",
        "KEY_TOKEN",
        "KEY_VERSION_NAME",
        "SHA1PRNG",
        "SIGN_KEY",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator$delegate",
        "Lid8;",
        "getGenerator",
        "()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
        "security_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final a:[C

.field public static final b:Lid8;

.field public static final c:Lteam/opay/pay/security/intercept/HttpAESUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/security/intercept/HttpAESUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/security/intercept/HttpAESUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/pay/security/intercept/HttpAESUtils;->c:Lteam/opay/pay/security/intercept/HttpAESUtils;

    .line 7
    .line 8
    const-string v0, "0123456789ABCDEF"

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "(this as java.lang.String).toCharArray()"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lteam/opay/pay/security/intercept/HttpAESUtils;->a:[C

    .line 20
    .line 21
    sget-object v0, Lteam/opay/pay/security/intercept/HttpAESUtils$generator$2;->INSTANCE:Lteam/opay/pay/security/intercept/HttpAESUtils$generator$2;

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lteam/opay/pay/security/intercept/HttpAESUtils;->b:Lid8;

    .line 28
    .line 29
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


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "0123456789ABCDEF"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "SHA1PRNG"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x10

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    .line 12
    .line 13
    .line 14
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    .line 21
    .line 22
    array-length v3, v1

    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 24
    .line 25
    .line 26
    array-length v3, v1

    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_0
    if-ge v4, v3, :cond_1

    .line 29
    .line 30
    aget-byte v5, v1, v4

    .line 31
    .line 32
    shr-int/lit8 v6, v5, 0x4

    .line 33
    .line 34
    and-int/lit8 v6, v6, 0xf

    .line 35
    .line 36
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    and-int/lit8 v5, v5, 0xf

    .line 44
    .line 45
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "result.toString()"

    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    .line 65
    .line 66
    :goto_1
    return-object v0

    .line 67
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    new-instance v1, Ljava/lang/Exception;

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v3, "addSign aes generateKey\u5931\u8d25 "

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v1
.end method

.method public final b(Lokhttp3/Request$Builder;Lokhttp3/RequestBody;Lokhttp3/Request;)Ljava/lang/String;
    .locals 24
    .param p1    # Lokhttp3/Request$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/RequestBody;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "builder"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "request"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p3 .. p3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual/range {p2 .. p2}, Lokhttp3/RequestBody;->contentLength()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    const-wide/16 v6, 0x0

    .line 32
    .line 33
    cmp-long v8, v4, v6

    .line 34
    .line 35
    if-lez v8, :cond_1

    .line 36
    .line 37
    invoke-virtual/range {p2 .. p2}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 53
    .line 54
    :goto_0
    new-instance v5, Lokio/Buffer;

    .line 55
    .line 56
    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v5}, Lokhttp3/RequestBody;->writeTo(Lrk1;)V

    .line 60
    .line 61
    .line 62
    const-string v1, "charset"

    .line 63
    .line 64
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v4}, Lokio/Buffer;->H0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const-string/jumbo v1, "{}"

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    const-string v6, "token"

    .line 88
    .line 89
    invoke-virtual {v2, v6}, Lokhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const/4 v6, 0x0

    .line 94
    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Ljava/lang/String;

    .line 99
    .line 100
    const-string v7, ""

    .line 101
    .line 102
    if-eqz v2, :cond_2

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    move-object v2, v7

    .line 106
    :goto_2
    const-string v8, "app"

    .line 107
    .line 108
    invoke-virtual {v0, v8}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/security/intercept/HttpAESUtils;->d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    const/4 v11, 0x0

    .line 117
    if-eqz v10, :cond_3

    .line 118
    .line 119
    invoke-interface {v10}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->appId()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    goto :goto_3

    .line 124
    :cond_3
    move-object v10, v11

    .line 125
    :goto_3
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    invoke-virtual {v9, v8, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 130
    .line 131
    .line 132
    const-string v8, "platform"

    .line 133
    .line 134
    invoke-virtual {v0, v8}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/security/intercept/HttpAESUtils;->d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    if-eqz v10, :cond_4

    .line 143
    .line 144
    invoke-interface {v10}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->platform()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    goto :goto_4

    .line 149
    :cond_4
    move-object v10, v11

    .line 150
    :goto_4
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    invoke-virtual {v9, v8, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 155
    .line 156
    .line 157
    const-string v8, "version_name"

    .line 158
    .line 159
    invoke-virtual {v0, v8}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/security/intercept/HttpAESUtils;->d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    if-eqz v10, :cond_5

    .line 168
    .line 169
    invoke-interface {v10}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    goto :goto_5

    .line 174
    :cond_5
    move-object v10, v11

    .line 175
    :goto_5
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    invoke-virtual {v9, v8, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 180
    .line 181
    .line 182
    const-string v8, "device_id"

    .line 183
    .line 184
    invoke-virtual {v0, v8}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/security/intercept/HttpAESUtils;->d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    if-eqz v10, :cond_6

    .line 193
    .line 194
    invoke-interface {v10}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->deviceId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    goto :goto_6

    .line 199
    :cond_6
    move-object v10, v11

    .line 200
    :goto_6
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    invoke-virtual {v9, v8, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 205
    .line 206
    .line 207
    new-instance v8, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    new-instance v9, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v10, "raw_data="

    .line 218
    .line 219
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    new-instance v9, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v10, "&app="

    .line 238
    .line 239
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/security/intercept/HttpAESUtils;->d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    if-eqz v10, :cond_7

    .line 247
    .line 248
    invoke-interface {v10}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->appId()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    goto :goto_7

    .line 253
    :cond_7
    move-object v10, v11

    .line 254
    :goto_7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    new-instance v9, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    const-string v10, "&platform="

    .line 270
    .line 271
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/security/intercept/HttpAESUtils;->d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    if-eqz v10, :cond_8

    .line 279
    .line 280
    invoke-interface {v10}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->platform()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    goto :goto_8

    .line 285
    :cond_8
    move-object v10, v11

    .line 286
    :goto_8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    new-instance v9, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    const-string v10, "&version_name="

    .line 302
    .line 303
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/security/intercept/HttpAESUtils;->d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 307
    .line 308
    .line 309
    move-result-object v10

    .line 310
    if-eqz v10, :cond_9

    .line 311
    .line 312
    invoke-interface {v10}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionName()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v10

    .line 316
    goto :goto_9

    .line 317
    :cond_9
    move-object v10, v11

    .line 318
    :goto_9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    new-instance v9, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    const-string v10, "&device_id="

    .line 334
    .line 335
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/security/intercept/HttpAESUtils;->d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    if-eqz v10, :cond_a

    .line 343
    .line 344
    invoke-interface {v10}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->deviceId()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v10

    .line 348
    goto :goto_a

    .line 349
    :cond_a
    move-object v10, v11

    .line 350
    :goto_a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    new-instance v9, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .line 364
    .line 365
    const-string v10, "&timestamp="

    .line 366
    .line 367
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    new-instance v9, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .line 384
    .line 385
    const-string v10, "&token="

    .line 386
    .line 387
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    const-string v8, "sb.toString()"

    .line 405
    .line 406
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const-string v8, "input"

    .line 410
    .line 411
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    const-string v8, "MD5"

    .line 415
    .line 416
    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 417
    .line 418
    .line 419
    move-result-object v8

    .line 420
    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 421
    .line 422
    invoke-virtual {v2, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    const-string v9, "(this as java.lang.String).getBytes(charset)"

    .line 427
    .line 428
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v8, v2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    const-string v8, "bytes"

    .line 436
    .line 437
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    new-instance v8, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    array-length v9, v2

    .line 443
    mul-int/lit8 v9, v9, 0x2

    .line 444
    .line 445
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 446
    .line 447
    .line 448
    array-length v9, v2

    .line 449
    :goto_b
    if-ge v6, v9, :cond_b

    .line 450
    .line 451
    aget-byte v10, v2, v6

    .line 452
    .line 453
    sget-object v12, Lteam/opay/pay/security/intercept/HttpAESUtils;->a:[C

    .line 454
    .line 455
    shr-int/lit8 v13, v10, 0x4

    .line 456
    .line 457
    and-int/lit8 v13, v13, 0xf

    .line 458
    .line 459
    aget-char v13, v12, v13

    .line 460
    .line 461
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    and-int/lit8 v10, v10, 0xf

    .line 465
    .line 466
    aget-char v10, v12, v10

    .line 467
    .line 468
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    add-int/lit8 v6, v6, 0x1

    .line 472
    .line 473
    goto :goto_b

    .line 474
    :cond_b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    const-string v6, "r.toString()"

    .line 479
    .line 480
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 484
    .line 485
    const-string v8, "Locale.ENGLISH"

    .line 486
    .line 487
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    if-eqz v2, :cond_10

    .line 491
    .line 492
    invoke-virtual {v2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    const-string v6, "(this as java.lang.String).toLowerCase(locale)"

    .line 497
    .line 498
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    const-string v6, "signV3"

    .line 502
    .line 503
    invoke-virtual {v0, v6, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 504
    .line 505
    .line 506
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    const-string v4, "timestamp"

    .line 511
    .line 512
    invoke-virtual {v0, v4, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 513
    .line 514
    .line 515
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/security/intercept/HttpAESUtils;->a()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    sget-object v4, Lteam/opay/pay/security/SecurityUtils;->a:Lteam/opay/pay/security/SecurityUtils;

    .line 520
    .line 521
    invoke-virtual {v4, v1, v2}, Lteam/opay/pay/security/SecurityUtils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v12

    .line 525
    if-eqz v12, :cond_c

    .line 526
    .line 527
    const/16 v16, 0x4

    .line 528
    .line 529
    const/16 v17, 0x0

    .line 530
    .line 531
    const-string v13, "\n"

    .line 532
    .line 533
    const-string v14, ""

    .line 534
    .line 535
    const/4 v15, 0x0

    .line 536
    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v18

    .line 540
    if-eqz v18, :cond_c

    .line 541
    .line 542
    const/16 v22, 0x4

    .line 543
    .line 544
    const/16 v23, 0x0

    .line 545
    .line 546
    const-string v19, "\\"

    .line 547
    .line 548
    const-string v20, ""

    .line 549
    .line 550
    const/16 v21, 0x0

    .line 551
    .line 552
    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    goto :goto_c

    .line 557
    :cond_c
    move-object v1, v11

    .line 558
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/security/intercept/HttpAESUtils;->d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    if-eqz v5, :cond_d

    .line 563
    .line 564
    invoke-interface {v5}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->appId()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v5

    .line 568
    goto :goto_d

    .line 569
    :cond_d
    move-object v5, v11

    .line 570
    :goto_d
    if-eqz v5, :cond_e

    .line 571
    .line 572
    move-object v7, v5

    .line 573
    :cond_e
    invoke-virtual {v4, v7, v2}, Lteam/opay/pay/security/SecurityUtils;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v12

    .line 577
    if-eqz v12, :cond_f

    .line 578
    .line 579
    const/16 v16, 0x4

    .line 580
    .line 581
    const/16 v17, 0x0

    .line 582
    .line 583
    const-string v13, "\n"

    .line 584
    .line 585
    const-string v14, ""

    .line 586
    .line 587
    const/4 v15, 0x0

    .line 588
    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    if-eqz v4, :cond_f

    .line 593
    .line 594
    const/4 v8, 0x4

    .line 595
    const/4 v9, 0x0

    .line 596
    const-string v5, "\\"

    .line 597
    .line 598
    const-string v6, ""

    .line 599
    .line 600
    const/4 v7, 0x0

    .line 601
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v11

    .line 605
    :cond_f
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    .line 606
    .line 607
    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 608
    .line 609
    .line 610
    const-string v5, "encrypt_data"

    .line 611
    .line 612
    invoke-virtual {v4, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    const-string v1, "encrypt_aes_key"

    .line 616
    .line 617
    invoke-virtual {v4, v1, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 621
    .line 622
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    const-string v5, "json.toString()"

    .line 627
    .line 628
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    sget-object v5, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 632
    .line 633
    const-string v6, "application/json"

    .line 634
    .line 635
    invoke-virtual {v5, v6}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 636
    .line 637
    .line 638
    move-result-object v5

    .line 639
    invoke-virtual {v1, v4, v5}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    new-instance v4, Ljava/lang/StringBuilder;

    .line 644
    .line 645
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    .line 647
    .line 648
    const-string v5, "aes encryptBody ==> path="

    .line 649
    .line 650
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    const-string v3, " key="

    .line 657
    .line 658
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v3

    .line 668
    const-string v4, "data"

    .line 669
    .line 670
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    sget-object v3, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 674
    .line 675
    invoke-virtual {v3}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 676
    .line 677
    .line 678
    move-result-object v3

    .line 679
    invoke-virtual {v3}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 680
    .line 681
    .line 682
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 683
    .line 684
    .line 685
    return-object v2

    .line 686
    :cond_10
    new-instance v0, Lkotlin/TypeCastException;

    .line 687
    .line 688
    const-string v1, "null cannot be cast to non-null type java.lang.String"

    .line 689
    .line 690
    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    throw v0
.end method

.method public final c(Ljava/lang/String;Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Response;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "data"

    .line 3
    .line 4
    const-string v2, " key="

    .line 5
    .line 6
    const-string v3, "application/json"

    .line 7
    .line 8
    const-string v4, "key"

    .line 9
    .line 10
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v4, "response"

    .line 14
    .line 15
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v4, "path"

    .line 19
    .line 20
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_a

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-nez v6, :cond_0

    .line 34
    .line 35
    return-object p2

    .line 36
    :cond_0
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    :try_start_0
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->source()Lsk1;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    const-wide v8, 0x7fffffffffffffffL

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    invoke-interface {v7, v8, v9}, Lsk1;->j0(J)Z

    .line 50
    .line 51
    .line 52
    invoke-interface {v7}, Lsk1;->K()Lokio/Buffer;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {v7}, Lokio/Buffer;->t()Lokio/Buffer;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 61
    .line 62
    const-string v9, "StandardCharsets.UTF_8"

    .line 63
    .line 64
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7, v8}, Lokio/Buffer;->H0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V

    .line 72
    .line 73
    .line 74
    :try_start_1
    sget-object v5, Lteam/opay/pay/security/SecurityUtils;->a:Lteam/opay/pay/security/SecurityUtils;

    .line 75
    .line 76
    invoke-virtual {v5, v7, p1}, Lteam/opay/pay/security/SecurityUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    sget-object v8, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 83
    .line 84
    invoke-virtual {v8}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-virtual {v9}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-eqz v9, :cond_1

    .line 93
    .line 94
    new-instance v9, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v10, "aes decryptBody successfuly path="

    .line 100
    .line 101
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v10, " body="

    .line 114
    .line 115
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    invoke-virtual {v8}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catch_0
    move-exception v5

    .line 137
    goto :goto_2

    .line 138
    :cond_1
    :goto_0
    sget-object v8, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    .line 139
    .line 140
    if-eqz v6, :cond_2

    .line 141
    .line 142
    move-object v9, v6

    .line 143
    goto :goto_1

    .line 144
    :cond_2
    sget-object v9, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 145
    .line 146
    invoke-virtual {v9, v3}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    :goto_1
    invoke-virtual {v8, v5, v9}, Lokhttp3/ResponseBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {p2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-virtual {v8, v5}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v5}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    goto/16 :goto_7

    .line 167
    .line 168
    :cond_3
    new-instance v5, Ljava/lang/Exception;

    .line 169
    .line 170
    const-string v8, "Decryption returned null"

    .line 171
    .line 172
    invoke-direct {v5, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    :goto_2
    if-eqz v6, :cond_4

    .line 177
    .line 178
    invoke-virtual {v6}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    if-eqz v8, :cond_4

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_4
    const-string v8, ""

    .line 186
    .line 187
    :goto_3
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    if-nez v9, :cond_5

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_5
    invoke-static {v8, v3, v0}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-eqz v8, :cond_6

    .line 199
    .line 200
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v9, "aes decryptBody exception path="

    .line 206
    .line 207
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string p1, " ==> "

    .line 220
    .line 221
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    sget-object p1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 239
    .line 240
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 245
    .line 246
    .line 247
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/security/intercept/HttpAESUtils;->d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    if-eqz p1, :cond_8

    .line 252
    .line 253
    invoke-static {v4, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 254
    .line 255
    .line 256
    move-result-object p3

    .line 257
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    if-eqz v1, :cond_7

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_7
    const-string v1, "unknown"

    .line 265
    .line 266
    :goto_5
    const-string v2, "msg"

    .line 267
    .line 268
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    int-to-long v4, v2

    .line 277
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    const-string v4, "size"

    .line 282
    .line 283
    invoke-static {v4, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    const/4 v4, 0x3

    .line 288
    new-array v4, v4, [Lkotlin/Pair;

    .line 289
    .line 290
    const/4 v5, 0x0

    .line 291
    aput-object p3, v4, v5

    .line 292
    .line 293
    aput-object v1, v4, v0

    .line 294
    .line 295
    const/4 p3, 0x2

    .line 296
    aput-object v2, v4, p3

    .line 297
    .line 298
    const-string p3, "ng_response_decrypt_error"

    .line 299
    .line 300
    invoke-interface {p1, p3, v4}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 301
    .line 302
    .line 303
    :cond_8
    sget-object p1, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    .line 304
    .line 305
    if-eqz v6, :cond_9

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_9
    sget-object p3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 309
    .line 310
    invoke-virtual {p3, v3}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    :goto_6
    invoke-virtual {p1, v7, v6}, Lokhttp3/ResponseBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-virtual {p2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 319
    .line 320
    .line 321
    move-result-object p2

    .line 322
    invoke-virtual {p2, p1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    :goto_7
    return-object p1

    .line 331
    :catch_1
    move-exception p1

    .line 332
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 333
    .line 334
    .line 335
    :cond_a
    return-object p2
.end method

.method public final d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/security/intercept/HttpAESUtils;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 8
    .line 9
    return-object v0
.end method
