.class public final Lteam/opay/pay/kyc/PosLevelRespository;
.super Lteam/opay/core/android/arch/BaseRepository;
.source "PosLevelRespository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J1\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J5\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/pay/kyc/PosLevelRespository;",
        "Lteam/opay/core/android/arch/BaseRepository;",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Lfv;",
        "apiService",
        "<init>",
        "(Lteam/opay/core/android/arch/AppExecutors;Lfv;)V",
        "Lteam/opay/pay/kyc/DownloadPosLevelRequest;",
        "request",
        "",
        "destFileDir",
        "destFileName",
        "Lyi3;",
        "downloadListener",
        "",
        "k",
        "(Lteam/opay/pay/kyc/DownloadPosLevelRequest;Ljava/lang/String;Ljava/lang/String;Lyi3;)V",
        "Lokhttp3/ResponseBody;",
        "response",
        "l",
        "(Lokhttp3/ResponseBody;Ljava/lang/String;Ljava/lang/String;Lyi3;)V",
        "d",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "e",
        "Lfv;",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final d:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lfv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/android/arch/AppExecutors;Lfv;)V
    .locals 1
    .param p1    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lfv;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appExecutors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "apiService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/core/android/arch/BaseRepository;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/kyc/PosLevelRespository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/kyc/PosLevelRespository;->e:Lfv;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic e(Lyi3;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/PosLevelRespository;->p(Lyi3;Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lyi3;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/PosLevelRespository;->m(Lyi3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lyi3;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/PosLevelRespository;->q(Lyi3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lyi3;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/PosLevelRespository;->n(Lyi3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lyi3;JJ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/kyc/PosLevelRespository;->o(Lyi3;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Lteam/opay/pay/kyc/PosLevelRespository;Lokhttp3/ResponseBody;Ljava/lang/String;Ljava/lang/String;Lyi3;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/kyc/PosLevelRespository;->l(Lokhttp3/ResponseBody;Ljava/lang/String;Ljava/lang/String;Lyi3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final m(Lyi3;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lyi3;->a()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final n(Lyi3;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lyi3;->onStart()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final o(Lyi3;JJ)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    long-to-float p1, p1

    .line 4
    const/high16 p2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    mul-float p1, p1, p2

    .line 7
    .line 8
    long-to-float p2, p3

    .line 9
    div-float/2addr p1, p2

    .line 10
    invoke-interface {p0, p1, p3, p4}, Lyi3;->b(FJ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static final p(Lyi3;Ljava/io/File;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "getAbsolutePath(...)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, p1}, Lyi3;->c(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static final q(Lyi3;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lyi3;->a()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method


# virtual methods
.method public final k(Lteam/opay/pay/kyc/DownloadPosLevelRequest;Ljava/lang/String;Ljava/lang/String;Lyi3;)V
    .locals 1
    .param p1    # Lteam/opay/pay/kyc/DownloadPosLevelRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lyi3;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "destFileDir"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "destFileName"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/kyc/PosLevelRespository;->e:Lfv;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lfv;->m(Lteam/opay/pay/kyc/DownloadPosLevelRequest;)Lretrofit2/Call;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lteam/opay/pay/kyc/PosLevelRespository$a;

    .line 23
    .line 24
    invoke-direct {v0, p0, p2, p3, p4}, Lteam/opay/pay/kyc/PosLevelRespository$a;-><init>(Lteam/opay/pay/kyc/PosLevelRespository;Ljava/lang/String;Ljava/lang/String;Lyi3;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final l(Lokhttp3/ResponseBody;Ljava/lang/String;Ljava/lang/String;Lyi3;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p4

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object v2, v1, Lteam/opay/pay/kyc/PosLevelRespository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 8
    .line 9
    invoke-virtual {v2}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Lovb;

    .line 14
    .line 15
    invoke-direct {v3, v0}, Lovb;-><init>(Lyi3;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v2, v1, Lteam/opay/pay/kyc/PosLevelRespository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 23
    .line 24
    invoke-virtual {v2}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Lpvb;

    .line 29
    .line 30
    invoke-direct {v3, v0}, Lpvb;-><init>(Lyi3;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    const/16 v2, 0x800

    .line 37
    .line 38
    new-array v8, v2, [B

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 42
    .line 43
    .line 44
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 45
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lokhttp3/ResponseBody;->contentLength()J

    .line 46
    .line 47
    .line 48
    move-result-wide v10

    .line 49
    new-instance v3, Ljava/io/File;

    .line 50
    .line 51
    move-object/from16 v4, p2

    .line 52
    .line 53
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    move-object v13, v2

    .line 68
    :goto_0
    move-object v2, v9

    .line 69
    goto/16 :goto_7

    .line 70
    .line 71
    :catch_0
    move-object v13, v2

    .line 72
    :catch_1
    move-object v2, v9

    .line 73
    goto :goto_4

    .line 74
    :cond_1
    :goto_1
    new-instance v12, Ljava/io/File;

    .line 75
    .line 76
    move-object/from16 v4, p3

    .line 77
    .line 78
    invoke-direct {v12, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v13, Ljava/io/FileOutputStream;

    .line 82
    .line 83
    invoke-direct {v13, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    const-wide/16 v2, 0x0

    .line 87
    .line 88
    :goto_2
    :try_start_2
    invoke-virtual {v9, v8}, Ljava/io/InputStream;->read([B)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    const/4 v5, -0x1

    .line 93
    if-eq v4, v5, :cond_2

    .line 94
    .line 95
    int-to-long v5, v4

    .line 96
    add-long v14, v2, v5

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    invoke-virtual {v13, v8, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 100
    .line 101
    .line 102
    iget-object v2, v1, Lteam/opay/pay/kyc/PosLevelRespository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 103
    .line 104
    invoke-virtual {v2}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    new-instance v7, Lqvb;

    .line 109
    .line 110
    move-object v2, v7

    .line 111
    move-object/from16 v3, p4

    .line 112
    .line 113
    move-wide v4, v14

    .line 114
    move-object/from16 v16, v8

    .line 115
    .line 116
    move-wide/from16 p2, v14

    .line 117
    .line 118
    move-object v8, v6

    .line 119
    move-object v14, v7

    .line 120
    move-wide v6, v10

    .line 121
    invoke-direct/range {v2 .. v7}, Lqvb;-><init>(Lyi3;JJ)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v8, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 125
    .line 126
    .line 127
    move-wide/from16 v2, p2

    .line 128
    .line 129
    move-object/from16 v8, v16

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :catchall_1
    move-exception v0

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 135
    .line 136
    .line 137
    iget-object v2, v1, Lteam/opay/pay/kyc/PosLevelRespository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 138
    .line 139
    invoke-virtual {v2}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    new-instance v3, Lrvb;

    .line 144
    .line 145
    invoke-direct {v3, v0, v12}, Lrvb;-><init>(Lyi3;Ljava/io/File;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    .line 150
    .line 151
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lokhttp3/ResponseBody;->close()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 155
    .line 156
    .line 157
    :catch_2
    :goto_3
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 158
    .line 159
    .line 160
    goto :goto_6

    .line 161
    :catchall_2
    move-exception v0

    .line 162
    move-object v13, v2

    .line 163
    goto :goto_7

    .line 164
    :catch_3
    move-object v13, v2

    .line 165
    :goto_4
    :try_start_5
    iget-object v3, v1, Lteam/opay/pay/kyc/PosLevelRespository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 166
    .line 167
    invoke-virtual {v3}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    new-instance v4, Lsvb;

    .line 172
    .line 173
    invoke-direct {v4, v0}, Lsvb;-><init>(Lyi3;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 177
    .line 178
    .line 179
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lokhttp3/ResponseBody;->close()V

    .line 180
    .line 181
    .line 182
    if-eqz v2, :cond_3

    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 185
    .line 186
    .line 187
    goto :goto_5

    .line 188
    :catch_4
    nop

    .line 189
    :cond_3
    :goto_5
    if-eqz v13, :cond_4

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :catch_5
    :cond_4
    :goto_6
    return-void

    .line 193
    :catchall_3
    move-exception v0

    .line 194
    :goto_7
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lokhttp3/ResponseBody;->close()V

    .line 195
    .line 196
    .line 197
    if-eqz v2, :cond_5

    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 200
    .line 201
    .line 202
    goto :goto_8

    .line 203
    :catch_6
    nop

    .line 204
    :cond_5
    :goto_8
    if-eqz v13, :cond_6

    .line 205
    .line 206
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 207
    .line 208
    .line 209
    :catch_7
    :cond_6
    throw v0
.end method
