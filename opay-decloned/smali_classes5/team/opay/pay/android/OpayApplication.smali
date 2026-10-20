.class public Lteam/opay/pay/android/OpayApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "OpayApplication.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/android/OpayApplication$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 &2\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000fH\u0002J\u0012\u0010\u0015\u001a\u00020\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0010\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001c\u001a\u00020\u000bH\u0002J\u001a\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u000f2\u0006\u0010!\u001a\u00020\u0011H\u0016J\u0010\u0010\"\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u0017H\u0002J\u0008\u0010$\u001a\u00020\u000bH\u0002J\u0010\u0010%\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u0017H\u0014R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\u001b\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/pay/android/OpayApplication;",
        "Landroidx/multidex/MultiDexApplication;",
        "<init>",
        "()V",
        "analytics",
        "Lteam/opay/pay/analytics/AnalyticsBackend;",
        "getAnalytics",
        "()Lteam/opay/pay/analytics/AnalyticsBackend;",
        "setAnalytics",
        "(Lteam/opay/pay/analytics/AnalyticsBackend;)V",
        "onCreate",
        "",
        "addCrashKey",
        "onLowMemory",
        "getCurrentProcessName",
        "",
        "pid",
        "",
        "isMainProcess",
        "",
        "processName",
        "attachBaseContext",
        "base",
        "Landroid/content/Context;",
        "initApplicationDelegate",
        "application",
        "Landroid/app/Application;",
        "initErrorMsg",
        "initMMKV",
        "hasLog",
        "getSharedPreferences",
        "Landroid/content/SharedPreferences;",
        "name",
        "mode",
        "initOpayApi",
        "context",
        "addUserProperty",
        "getVersionName",
        "Companion",
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


# static fields
.field public static final Companion:Lteam/opay/pay/android/OpayApplication$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile useMMKV:Z


# instance fields
.field public analytics:Lteam/opay/pay/analytics/AnalyticsBackend;

.field private hasLog:Z

.field private initErrorMsg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/android/OpayApplication$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/android/OpayApplication$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/android/OpayApplication;->Companion:Lteam/opay/pay/android/OpayApplication$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/pay/android/OpayApplication;->initErrorMsg:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/OpayApplication;->initApplicationDelegate$lambda$7(J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getUseMMKV$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lteam/opay/pay/android/OpayApplication;->useMMKV:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$setUseMMKV$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lteam/opay/pay/android/OpayApplication;->useMMKV:Z

    .line 2
    .line 3
    return-void
.end method

.method private final addCrashKey()V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 10
    .line 11
    new-instance v1, Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "device_id"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->deviceId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    goto :goto_3

    .line 28
    :cond_0
    move-object v4, v3

    .line 29
    :goto_0
    const-string v5, ""

    .line 30
    .line 31
    if-nez v4, :cond_1

    .line 32
    .line 33
    move-object v4, v5

    .line 34
    :cond_1
    :try_start_1
    invoke-virtual {v1, v2, v4}, Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;

    .line 35
    .line 36
    .line 37
    const-string v2, "trace_id"

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->traceId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object v4, v3

    .line 47
    :goto_1
    if-nez v4, :cond_3

    .line 48
    .line 49
    move-object v4, v5

    .line 50
    :cond_3
    invoke-virtual {v1, v2, v4}, Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;

    .line 51
    .line 52
    .line 53
    const-string v2, "user_id"

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    :cond_4
    if-nez v3, :cond_5

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    move-object v5, v3

    .line 65
    :goto_2
    invoke-virtual {v1, v2, v5}, Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;

    .line 66
    .line 67
    .line 68
    const-string v0, "gs_status"

    .line 69
    .line 70
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;->putInt(Ljava/lang/String;I)Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;->build()Lcom/google/firebase/crashlytics/CustomKeysAndValues;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKeys(Lcom/google/firebase/crashlytics/CustomKeysAndValues;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :goto_4
    return-void
.end method

.method private final addUserProperty()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/OpayApplication;->getAnalytics()Lteam/opay/pay/analytics/AnalyticsBackend;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "versionName"

    .line 6
    .line 7
    invoke-virtual {p0, p0}, Lteam/opay/pay/android/OpayApplication;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v0, v1, v2}, Lteam/opay/pay/analytics/AnalyticsBackend;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/android/OpayApplication;->getAnalytics()Lteam/opay/pay/analytics/AnalyticsBackend;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Lteam/opay/swarmfoundation/device/AuthUtil;->C(Landroid/content/Context;)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "versionCode"

    .line 33
    .line 34
    invoke-interface {v0, v2, v1}, Lteam/opay/pay/analytics/AnalyticsBackend;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/android/OpayApplication;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/OpayApplication;->onCreate$lambda$2$lambda$1(Lteam/opay/pay/android/OpayApplication;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lteam/opay/swarmfoundation/frame/ApplicationDelegate;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/android/OpayApplication;->initApplicationDelegate$lambda$6$lambda$5(Lteam/opay/swarmfoundation/frame/ApplicationDelegate;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getCurrentProcessName(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/app/ActivityManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 35
    .line 36
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 37
    .line 38
    if-ne v2, p1, :cond_0

    .line 39
    .line 40
    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p1, ""

    .line 44
    .line 45
    :goto_0
    return-object p1
.end method

.method private final initApplicationDelegate(Landroid/app/Application;)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 6
    .line 7
    const-class v3, Lteam/opay/swarmfoundation/frame/ApplicationDelegate;

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->a(Ljava/lang/Class;)Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const-string v4, "Application"

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lteam/opay/swarmfoundation/frame/ApplicationDelegate;

    .line 30
    .line 31
    invoke-virtual {v3, p1}, Lteam/opay/swarmfoundation/frame/ApplicationDelegate;->onCreate(Landroid/app/Application;)V

    .line 32
    .line 33
    .line 34
    sget-object v7, Lxk8;->a:Lxk8;

    .line 35
    .line 36
    new-instance v8, Ljoa;

    .line 37
    .line 38
    invoke-direct {v8, v3, v5, v6}, Ljoa;-><init>(Lteam/opay/swarmfoundation/frame/ApplicationDelegate;J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7, v4, v8}, Lxk8;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sget-object p1, Lxk8;->a:Lxk8;

    .line 46
    .line 47
    new-instance v2, Lkoa;

    .line 48
    .line 49
    invoke-direct {v2, v0, v1}, Lkoa;-><init>(J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v4, v2}, Lxk8;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private static final initApplicationDelegate$lambda$6$lambda$5(Lteam/opay/swarmfoundation/frame/ApplicationDelegate;J)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sub-long/2addr v0, p1

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string p2, "\u603b\u5171\u8017\u65f6 \u7c7b "

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, " \u65f6\u95f4:"

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method private static final initApplicationDelegate$lambda$7(J)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p0

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string p1, "\u603b\u5171\u8017\u65f6"

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private final initMMKV()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelNone:Lcom/tencent/mmkv/MMKVLogLevel;

    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->l(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    :cond_0
    iput-object v1, p0, Lteam/opay/pay/android/OpayApplication;->initErrorMsg:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    :goto_0
    sput-boolean v0, Lteam/opay/pay/android/OpayApplication;->useMMKV:Z

    .line 32
    .line 33
    return-void
.end method

.method private final initOpayApi(Landroid/content/Context;)V
    .locals 12

    .line 1
    sget-object v0, Lvk1;->a:Lvk1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lvk1;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "-internal"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, ""

    .line 13
    .line 14
    :goto_0
    sget-object v8, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/OpayApplication;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 21
    .line 22
    const-string v10, "RELEASE"

    .line 23
    .line 24
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/16 v6, 0x10

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    const-string v11, ""

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    move-object v2, v11

    .line 34
    move-object v3, v0

    .line 35
    move-object v4, v9

    .line 36
    invoke-static/range {v1 .. v7}, Lkmf;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v8, v1}, Lteam/opay/core/api/GraphQL;->q(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/OpayApplication;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "; wv"

    .line 51
    .line 52
    invoke-static {p1, v11, v0, v9, v1}, Lkmf;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v8, p1}, Lteam/opay/core/api/GraphQL;->r(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private final isMainProcess(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private static final onCreate$lambda$2$lambda$1(Lteam/opay/pay/android/OpayApplication;)V
    .locals 5

    .line 1
    invoke-direct {p0, p0}, Lteam/opay/pay/android/OpayApplication;->initOpayApi(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lmrb;->a:Lmrb;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lmrb;->a(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/pay/android/OpayApplication;->addUserProperty()V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lx7b;->a:Lx7b;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "getBaseContext(...)"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {v0, v1, v4, v2, v3}, Lx7b;->p(Lx7b;Landroid/content/Context;ZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lh81;->a:Lh81;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lh81;->a(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/android/OpayApplication;->initMMKV()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final getAnalytics()Lteam/opay/pay/analytics/AnalyticsBackend;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/OpayApplication;->analytics:Lteam/opay/pay/analytics/AnalyticsBackend;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "analytics"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-boolean v0, Lteam/opay/pay/android/OpayApplication;->useMMKV:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-static {p1}, Lloa;->a(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 13
    :try_start_0
    invoke-static {p1, v0}, Lcom/tencent/mmkv/MMKV;->p(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "mmkvWithID(...)"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lteam/opay/pay/android/MMKVProxy;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    nop

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v2, p1

    .line 32
    :goto_0
    invoke-direct {v1, v2, v0}, Lteam/opay/pay/android/MMKVProxy;-><init>(Ljava/lang/String;Lcom/tencent/mmkv/MMKV;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :goto_1
    iget-boolean v0, p0, Lteam/opay/pay/android/OpayApplication;->hasLog:Z

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lteam/opay/pay/android/OpayApplication;->hasLog:Z

    .line 42
    .line 43
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :goto_2
    return-object v1

    .line 51
    :cond_3
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string p2, "getSharedPreferences(...)"

    .line 56
    .line 57
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object p1
.end method

.method public getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/swarmfoundation/device/AuthUtil;->D(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const-string p1, ""

    .line 15
    .line 16
    :cond_0
    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->h(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 16
    .line 17
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-direct {p0, v0}, Lteam/opay/pay/android/OpayApplication;->getCurrentProcessName(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "current process is "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Lteam/opay/pay/android/OpayApplication;->isMainProcess(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->E(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lteam/opay/pay/android/OpayApplication;->addCrashKey()V

    .line 73
    .line 74
    .line 75
    :cond_1
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    .line 76
    .line 77
    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v1, Lioa;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lioa;-><init>(Lteam/opay/pay/android/OpayApplication;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p0}, Lteam/opay/pay/android/OpayApplication;->initApplicationDelegate(Landroid/app/Application;)V

    .line 93
    .line 94
    .line 95
    sget-object v0, Lteam/opay/pay/dagger/b;->a:Lteam/opay/pay/dagger/b;

    .line 96
    .line 97
    invoke-virtual {v0, p0}, Lteam/opay/pay/dagger/b;->a(Lteam/opay/pay/android/OpayApplication;)V

    .line 98
    .line 99
    .line 100
    sget-boolean v0, Lteam/opay/pay/android/OpayApplication;->useMMKV:Z

    .line 101
    .line 102
    if-nez v0, :cond_2

    .line 103
    .line 104
    sget-object v0, Lx7b;->a:Lx7b;

    .line 105
    .line 106
    const-string v1, "msg"

    .line 107
    .line 108
    iget-object v2, p0, Lteam/opay/pay/android/OpayApplication;->initErrorMsg:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const/4 v2, 0x1

    .line 115
    new-array v2, v2, [Lkotlin/Pair;

    .line 116
    .line 117
    const/4 v3, 0x0

    .line 118
    aput-object v1, v2, v3

    .line 119
    .line 120
    const-string v1, "get_sp_error"

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    sget-object v0, Lc03;->a:Lc03;

    .line 126
    .line 127
    invoke-virtual {v0}, Lc03;->b()V

    .line 128
    .line 129
    .line 130
    :goto_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/bumptech/glide/a;->c(Landroid/content/Context;)Lcom/bumptech/glide/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/bumptech/glide/a;->b()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setAnalytics(Lteam/opay/pay/analytics/AnalyticsBackend;)V
    .locals 1
    .param p1    # Lteam/opay/pay/analytics/AnalyticsBackend;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/android/OpayApplication;->analytics:Lteam/opay/pay/analytics/AnalyticsBackend;

    .line 7
    .line 8
    return-void
.end method
