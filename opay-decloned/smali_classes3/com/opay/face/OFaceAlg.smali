.class public Lcom/opay/face/OFaceAlg;
.super Ljava/lang/Object;
.source "OFaceAlg.java"

# interfaces
.implements Lteam/opay/KeepNoProguard;
.implements Lcom/opay/relinker/a$d;


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "Dynamic_living_face_alg"

.field private static final LIB_NAME:Ljava/lang/String; = "libOFaceAlg.so"

.field private static final TAG:Ljava/lang/String; = "OFaceAlg"

.field private static loaded:Z

.field private static volatile sInstance:Lcom/opay/face/OFaceAlg;


# instance fields
.field private initCode:I

.field private lock:Ljava/lang/Object;

.field private mLog:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/opay/face/OFaceAlg;->initCode:I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuffer;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/opay/face/OFaceAlg;->mLog:Ljava/lang/StringBuffer;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/opay/face/OFaceAlg;->lock:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method public static getInstance()Lcom/opay/face/OFaceAlg;
    .locals 2

    .line 1
    sget-object v0, Lcom/opay/face/OFaceAlg;->sInstance:Lcom/opay/face/OFaceAlg;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/opay/face/OFaceAlg;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/opay/face/OFaceAlg;->sInstance:Lcom/opay/face/OFaceAlg;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/opay/face/OFaceAlg;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/opay/face/OFaceAlg;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/opay/face/OFaceAlg;->sInstance:Lcom/opay/face/OFaceAlg;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/opay/face/OFaceAlg;->sInstance:Lcom/opay/face/OFaceAlg;

    .line 27
    .line 28
    return-object v0
.end method

.method private native init(Landroid/content/Context;)I
.end method


# virtual methods
.method public native buildCat([B[B[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/opay/face/Cat;
.end method

.method public native catWithK()[B
.end method

.method public native create([JIII[I)I
.end method

.method public native detectClarity([BIII[F[FJ)I
.end method

.method public native detectSec(Landroid/content/Context;Ljava/lang/String;[B)I
.end method

.method public native getAttribute(I[IIJ)I
.end method

.method public getCat([B[B[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/opay/face/Cat;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/opay/face/OFaceAlg;->loaded:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual/range {p0 .. p7}, Lcom/opay/face/OFaceAlg;->buildCat([B[B[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/opay/face/Cat;

    .line 7
    .line 8
    .line 9
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    sget-object p2, Lcom/opay/face/OFaceAlg;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p2, p1}, Lcom/opay/face/util/Logs;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getInitCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/OFaceAlg;->initCode:I

    .line 2
    .line 3
    return v0
.end method

.method public getPK()[B
    .locals 1

    .line 1
    sget-boolean v0, Lcom/opay/face/OFaceAlg;->loaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/opay/face/OFaceAlg;->catWithK()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getSec(Landroid/content/Context;Ljava/lang/String;[B)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/face/OFaceAlg;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/opay/face/OFaceAlg;->loaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/face/OFaceAlg;->detectSec(Landroid/content/Context;Ljava/lang/String;[B)I

    .line 10
    .line 11
    .line 12
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    :try_start_2
    sget-object p2, Lcom/opay/face/OFaceAlg;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p2, p1}, Lcom/opay/face/util/Logs;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    monitor-exit v0

    .line 25
    return v2

    .line 26
    :catchall_1
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    return v2

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    throw p1
.end method

.method public native getVersion(I)Ljava/lang/String;
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/face/OFaceAlg;->load(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/opay/face/OFaceAlg;->initCode:I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-boolean v0, Lcom/opay/face/OFaceAlg;->loaded:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/opay/face/OFaceAlg;->init(Landroid/content/Context;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/opay/face/OFaceAlg;->initCode:I

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public declared-synchronized load(Landroid/content/Context;)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/opay/face/OFaceAlg;->loaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/opay/face/OFaceAlg;->mLog:Ljava/lang/StringBuffer;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_2
    invoke-static {p0}, Lcom/opay/relinker/a;->a(Lcom/opay/relinker/a$d;)Lcom/opay/relinker/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/opay/relinker/b;->c()Lcom/opay/relinker/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v3, "OFaceAlg"

    .line 24
    .line 25
    invoke-virtual {v0, p1, v3}, Lcom/opay/relinker/b;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sput-boolean v1, Lcom/opay/face/OFaceAlg;->loaded:Z

    .line 29
    .line 30
    sget-object p1, Lcom/opay/face/OFaceAlg;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "load OFaceAlg success"

    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_3

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :goto_0
    :try_start_3
    sput-boolean v2, Lcom/opay/face/OFaceAlg;->loaded:Z

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "Exception:"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "Dynamic_living_face_alg"

    .line 68
    .line 69
    const-string v1, "-1"

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v3, "\n"

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lcom/opay/face/OFaceAlg;->mLog:Ljava/lang/StringBuffer;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v0, v1, v2}, Lcom/opay/face/common/util/TraceUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lcom/opay/face/OFaceAlg;->TAG:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v0, p1}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :goto_1
    sput-boolean v2, Lcom/opay/face/OFaceAlg;->loaded:Z

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v1, "LinkError:"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const-string v0, "Dynamic_living_face_alg"

    .line 130
    .line 131
    const-string v1, "-1"

    .line 132
    .line 133
    invoke-static {v0, v1, p1}, Lcom/opay/face/common/util/TraceUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    sget-object v0, Lcom/opay/face/OFaceAlg;->TAG:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v0, p1}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :goto_2
    sget-boolean p1, Lcom/opay/face/OFaceAlg;->loaded:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    .line 143
    monitor-exit p0

    .line 144
    return p1

    .line 145
    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    throw p1
.end method

.method public log(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/face/OFaceAlg;->mLog:Ljava/lang/StringBuffer;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, "\n"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/opay/face/OFaceAlg;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public native nv21ToJpg([BIIIIF)[B
.end method

.method public native pushFrameNV21([BIIIIJ)I
.end method

.method public native pushFrameRGB([BIIIJ)I
.end method

.method public native release(J)I
.end method

.method public native setDatFile(Landroid/content/res/AssetManager;Ljava/lang/String;)I
.end method
