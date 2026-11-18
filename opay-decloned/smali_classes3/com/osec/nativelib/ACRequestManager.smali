.class public Lcom/osec/nativelib/ACRequestManager;
.super Ljava/lang/Object;
.source "ACRequestManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ACRequestManager"

.field private static instance:Lcom/osec/nativelib/ACRequestManager;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private antiHookMgr:Lcom/osec/nativelib/AntiHookManager;

.field private concernedJavaMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/osec/nativelib/JavaMethod;",
            ">;"
        }
    .end annotation
.end field

.field private mACMUtil:Lcom/osec/nativelib/ACMUtil;

.field private mContext:Landroid/content/Context;

.field private mCustomId:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mHttpHandler:Lcom/osec/nativelib/utils/HttpHandler;

.field private mUserId:Ljava/lang/String;


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
    sput-object v0, Lcom/osec/nativelib/ACRequestManager;->lock:Ljava/lang/Object;

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
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->mACMUtil:Lcom/osec/nativelib/ACMUtil;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->mHttpHandler:Lcom/osec/nativelib/utils/HttpHandler;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->antiHookMgr:Lcom/osec/nativelib/AntiHookManager;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->concernedJavaMethods:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lcom/osec/nativelib/utils/HttpHandler;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/osec/nativelib/utils/HttpHandler;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->mHttpHandler:Lcom/osec/nativelib/utils/HttpHandler;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/osec/nativelib/AntiHookManager;->newInstance(Landroid/content/Context;)Lcom/osec/nativelib/AntiHookManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->antiHookMgr:Lcom/osec/nativelib/AntiHookManager;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/osec/nativelib/ACRequestManager;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const-string v0, ""

    .line 34
    .line 35
    iput-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->mUserId:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->mDeviceId:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->mCustomId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/osec/nativelib/ACMUtil;->newInstance(Landroid/content/Context;)Lcom/osec/nativelib/ACMUtil;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/osec/nativelib/ACRequestManager;->mACMUtil:Lcom/osec/nativelib/ACMUtil;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/osec/nativelib/ACMUtil;->InitACMsg()I

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/osec/nativelib/ACRequestManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/osec/nativelib/ACRequestManager;->instance:Lcom/osec/nativelib/ACRequestManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/osec/nativelib/ACRequestManager;->lock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/osec/nativelib/ACRequestManager;->instance:Lcom/osec/nativelib/ACRequestManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/osec/nativelib/ACRequestManager;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/osec/nativelib/ACRequestManager;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/osec/nativelib/ACRequestManager;->instance:Lcom/osec/nativelib/ACRequestManager;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

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
    throw p0

    .line 26
    :cond_1
    :goto_2
    sget-object p0, Lcom/osec/nativelib/ACRequestManager;->instance:Lcom/osec/nativelib/ACRequestManager;

    .line 27
    .line 28
    return-object p0
.end method


# virtual methods
.method public declared-synchronized ACRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->mACMUtil:Lcom/osec/nativelib/ACMUtil;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/osec/nativelib/ACRequestManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v5, p0, Lcom/osec/nativelib/ACRequestManager;->concernedJavaMethods:Ljava/util/ArrayList;

    .line 7
    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v4, p3

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/osec/nativelib/ACMUtil;->GetOSecACMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    array-length p2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-lez p2, :cond_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object p1

    .line 20
    :cond_0
    monitor-exit p0

    .line 21
    const/4 p1, 0x0

    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p1
.end method

.method public declared-synchronized ACRequestOld()[B
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->mUserId:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    const-string v0, "UserId"

    .line 16
    .line 17
    iput-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->mUserId:Ljava/lang/String;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->mDeviceId:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    :cond_2
    const-string v0, "DeviceId"

    .line 30
    .line 31
    iput-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->mDeviceId:Ljava/lang/String;

    .line 32
    .line 33
    :cond_3
    iget-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->mCustomId:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    iget-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->mDeviceId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_5

    .line 44
    .line 45
    :cond_4
    const-string v0, "CustomId"

    .line 46
    .line 47
    iput-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->mCustomId:Ljava/lang/String;

    .line 48
    .line 49
    :cond_5
    const-string v6, "sendWithPin"

    .line 50
    .line 51
    iget-object v1, p0, Lcom/osec/nativelib/ACRequestManager;->mACMUtil:Lcom/osec/nativelib/ACMUtil;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/osec/nativelib/ACRequestManager;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    const-string v3, ""

    .line 56
    .line 57
    iget-object v4, p0, Lcom/osec/nativelib/ACRequestManager;->mUserId:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v5, p0, Lcom/osec/nativelib/ACRequestManager;->mDeviceId:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v7, p0, Lcom/osec/nativelib/ACRequestManager;->mCustomId:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v8, p0, Lcom/osec/nativelib/ACRequestManager;->concernedJavaMethods:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual/range {v1 .. v8}, Lcom/osec/nativelib/ACMUtil;->GetACMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)[B

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    array-length v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    if-lez v1, :cond_6

    .line 71
    .line 72
    monitor-exit p0

    .line 73
    return-object v0

    .line 74
    :cond_6
    monitor-exit p0

    .line 75
    const/4 v0, 0x0

    .line 76
    return-object v0

    .line 77
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw v0
.end method

.method public declared-synchronized GetCInfoSec(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/osec/nativelib/ACRequestManager;->mACMUtil:Lcom/osec/nativelib/ACMUtil;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Lcom/osec/nativelib/ACMUtil;->GetCInfoSec(Landroid/content/Context;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_1

    .line 13
    :catch_0
    move-exception p1

    .line 14
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    .line 16
    .line 17
    :goto_0
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    throw p1
.end method

.method public declared-synchronized GetOSecInfoSec(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->mACMUtil:Lcom/osec/nativelib/ACMUtil;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/osec/nativelib/ACMUtil;->GetOSecInfoSec(Landroid/content/Context;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_3

    .line 18
    .line 19
    const-string v1, ","

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    array-length v1, p1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v1, :cond_2

    .line 29
    .line 30
    aget-object v4, p1, v3

    .line 31
    .line 32
    const-string v5, ":"

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    array-length v5, v4

    .line 39
    const/4 v6, 0x1

    .line 40
    if-le v5, v6, :cond_1

    .line 41
    .line 42
    aget-object v5, v4, v2

    .line 43
    .line 44
    aget-object v4, v4, v6

    .line 45
    .line 46
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-nez v6, :cond_1

    .line 51
    .line 52
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_2

    .line 73
    :catch_0
    move-exception p1

    .line 74
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    monitor-exit p0

    .line 82
    return-object p1

    .line 83
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    monitor-exit p0

    .line 91
    return-object p1

    .line 92
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    monitor-exit p0

    .line 97
    return-object p1

    .line 98
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 99
    throw p1
.end method

.method public setConcernedJavaMethods(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/osec/nativelib/JavaMethod;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->concernedJavaMethods:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/osec/nativelib/ACRequestManager;->concernedJavaMethods:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
