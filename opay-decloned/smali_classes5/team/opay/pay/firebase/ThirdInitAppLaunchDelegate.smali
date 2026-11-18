.class public final Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;
.super Lteam/opay/pay/home/AppLaunchDelegate;
.source "ThirdInitAppLaunchDelegate.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/pay/home/AppLaunchDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;",
        "Lteam/opay/pay/home/AppLaunchDelegate;",
        "<init>",
        "()V",
        "onAppLaunch",
        "",
        "launchActivity",
        "Landroid/app/Activity;",
        "checkInitSdk",
        "initSdk",
        "initFacebook",
        "initFirebase",
        "asyncAdvId",
        "Landroidx/lifecycle/LiveData;",
        "",
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
.field public static final Companion:Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static hasInitSdk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;->Companion:Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/AppLaunchDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;->asyncAdvId$lambda$1(Landroid/app/Activity;Landroidx/lifecycle/MutableLiveData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getHasInitSdk$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;->hasInitSdk:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$setHasInitSdk$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;->hasInitSdk:Z

    .line 2
    .line 3
    return-void
.end method

.method private final asyncAdvId(Landroid/app/Activity;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    .line 21
    .line 22
    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Lije;

    .line 30
    .line 31
    invoke-direct {v2, p1, v0}, Lije;-><init>(Landroid/app/Activity;Landroidx/lifecycle/MutableLiveData;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string p1, ""

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-object v0
.end method

.method private static final asyncAdvId$lambda$1(Landroid/app/Activity;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const-string p0, ""

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public static synthetic b(Landroid/app/Activity;Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;->checkInitSdk$lambda$0(Landroid/app/Activity;Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final checkInitSdk(Landroid/app/Activity;)V
    .locals 5

    .line 1
    sget-boolean v0, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;->hasInitSdk:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    new-instance v0, Lcom/opay/team/home/HomeSettingsStorage;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/opay/team/home/HomeSettingsStorage;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/opay/team/home/HomeSettingsStorage;->b()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    new-instance v2, Lteam/opay/core/settings/NoClearStorage;

    .line 32
    .line 33
    invoke-direct {v2, p1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lteam/opay/core/settings/NoClearStorage;->g0()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    sub-long/2addr v0, v2

    .line 41
    const-wide/32 v2, 0x240c8400

    .line 42
    .line 43
    .line 44
    cmp-long v4, v0, v2

    .line 45
    .line 46
    if-lez v4, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-direct {p0, p1}, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;->initSdk(Landroid/app/Activity;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;->asyncAdvId(Landroid/app/Activity;)Landroidx/lifecycle/LiveData;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Ljje;

    .line 58
    .line 59
    invoke-direct {v1, p1, p0}, Ljje;-><init>(Landroid/app/Activity;Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate$a;

    .line 63
    .line 64
    invoke-direct {p1, v1}, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->observeForever(Lvfa;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void
.end method

.method private static final checkInitSdk$lambda$0(Landroid/app/Activity;Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-boolean v0, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;->hasInitSdk:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/opay/team/home/HomeSettingsStorage;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/opay/team/home/HomeSettingsStorage;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Lcom/opay/team/home/HomeSettingsStorage;->s(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Lteam/opay/core/settings/NoClearStorage;

    .line 18
    .line 19
    invoke-direct {p2, p0}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-virtual {p2, v0, v1}, Lteam/opay/core/settings/NoClearStorage;->M1(J)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p0}, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;->initSdk(Landroid/app/Activity;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method private final initFacebook(Landroid/app/Activity;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->setIsDebugEnabled(Z)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->setAutoInitEnabled(Z)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/facebook/FacebookSdk;->fullyInitialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method private final initFirebase(Landroid/app/Activity;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setAnalyticsCollectionEnabled(Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method private final initSdk(Landroid/app/Activity;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "getInstance(...)"

    .line 7
    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;->initFirebase(Landroid/app/Activity;)V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lb60;->a:Lb60;

    .line 25
    .line 26
    invoke-static {p1}, Lloa;->b(Landroid/app/Activity;)Lteam/opay/pay/android/OpayApplication;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {p1}, Lloa;->b(Landroid/app/Activity;)Lteam/opay/pay/android/OpayApplication;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4}, Lteam/opay/pay/android/OpayApplication;->getAnalytics()Lteam/opay/pay/analytics/AnalyticsBackend;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v4}, Lteam/opay/pay/analytics/AnalyticsBackend;->c()Lcom/appsflyer/AppsFlyerConversionListener;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v2, v3, v4}, Lb60;->k(Landroid/app/Application;Lcom/appsflyer/AppsFlyerConversionListener;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1}, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;->initFacebook(Landroid/app/Activity;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    sget-object v2, Lteam/opay/pay/account/verify/b;->a:Lteam/opay/pay/account/verify/b;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v3, "getApplicationContext(...)"

    .line 55
    .line 56
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1}, Lteam/opay/pay/account/verify/b;->c(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lx7b;->a:Lx7b;

    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "status_code"

    .line 69
    .line 70
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-array v2, v0, [Lkotlin/Pair;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    aput-object v1, v2, v3

    .line 78
    .line 79
    const-string v1, "gp_api_service_status"

    .line 80
    .line 81
    invoke-virtual {p1, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 82
    .line 83
    .line 84
    sput-boolean v0, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;->hasInitSdk:Z

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public onAppLaunch(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "launchActivity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lteam/opay/pay/home/AppLaunchDelegate;->onAppLaunch(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;->checkInitSdk(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
