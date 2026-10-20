.class public final Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;
.super Lteam/opay/swarmfoundation/frame/ApplicationDelegate;
.source "AppLockInterceptorDelegate.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/frame/ApplicationDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0008\u0010\u000f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0016\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u001aH\u0002R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001d"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;",
        "Lteam/opay/swarmfoundation/frame/ApplicationDelegate;",
        "<init>",
        "()V",
        "appLock",
        "Lteam/opay/pay/android/AppLock;",
        "getAppLock",
        "()Lteam/opay/pay/android/AppLock;",
        "setAppLock",
        "(Lteam/opay/pay/android/AppLock;)V",
        "onCreate",
        "",
        "application",
        "Landroid/app/Application;",
        "registerActivityLifecycleCallbacks",
        "initAppStatusListener",
        "canShowAppLockInner",
        "",
        "activity",
        "Landroid/app/Activity;",
        "canShowActivity",
        "showAppLockOnActivityResume",
        "printLogger",
        "data",
        "",
        "queryNotRememberLogoutTimeout",
        "",
        "queryRememberLogoutTimeout",
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
.field public static final Companion:Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_NOT_REMEMBER_LOGOUT_TIMEOUT:Ljava/lang/String; = "osdk_min_no_remeber_logout"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_REMEMBER_LOGOUT_TIMEOUT:Ljava/lang/String; = "osdk_min_remeber_logout"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NOT_REMEMBER_LOGOUT_DEFAULT_TIMEOUT:Ljava/lang/String; = "5"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REMEMBER_LOGOUT_DEFAULT_TIMEOUT:Ljava/lang/String; = "0"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "AppLockTracker"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private appLock:Lteam/opay/pay/android/AppLock;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->Companion:Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/frame/ApplicationDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$canShowAppLockInner(Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->canShowAppLockInner(Landroid/app/Activity;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$printLogger(Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->printLogger(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final canShowActivity(Landroid/app/Activity;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/zhihu/matisse/ui/MatisseActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    instance-of v0, p1, Lteam/opay/pay/android/BaseActivity;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p1, Lteam/opay/pay/android/BaseActivity;

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/pay/android/BaseActivity;->getSkipAppLock()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    :cond_1
    const/4 v1, 0x1

    .line 21
    :cond_2
    return v1
.end method

.method private final canShowAppLockInner(Landroid/app/Activity;)Z
    .locals 3

    .line 1
    sget-object v0, Ltj8;->a:Ltj8;

    .line 2
    .line 3
    invoke-virtual {v0}, Ltj8;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ltj8;->b(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->r()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->canShowActivity(Landroid/app/Activity;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    :cond_1
    return v2
.end method

.method private final initAppStatusListener()V
    .locals 2

    .line 1
    sget-object v0, Ld00;->a:Ld00;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate$a;-><init>(Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ld00;->i(Ld00$a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final printLogger(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final queryNotRememberLogoutTimeout()J
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/oconfig/a;->a:Lteam/opay/oconfig/a;

    .line 2
    .line 3
    const-string v1, "osdk_min_no_remeber_logout"

    .line 4
    .line 5
    const-string v2, "5"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lteam/opay/oconfig/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    const-wide/16 v1, 0xf

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    :goto_0
    return-wide v0
.end method

.method private final queryRememberLogoutTimeout()J
    .locals 7

    .line 1
    sget-object v0, Lteam/opay/oconfig/a;->a:Lteam/opay/oconfig/a;

    .line 2
    .line 3
    const-string v1, "osdk_min_remeber_logout"

    .line 4
    .line 5
    const-string v2, "0"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lteam/opay/oconfig/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    const-wide/16 v3, 0x7

    .line 14
    .line 15
    :try_start_0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 40
    .line 41
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    :goto_0
    return-wide v0
.end method

.method private final registerActivityLifecycleCallbacks(Landroid/app/Application;)V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate$b;-><init>(Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;Landroid/app/Application;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getAppLock()Lteam/opay/pay/android/AppLock;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->appLock:Lteam/opay/pay/android/AppLock;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lteam/opay/swarmfoundation/frame/ApplicationDelegate;->onCreate(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->registerActivityLifecycleCallbacks(Landroid/app/Application;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->initAppStatusListener()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setAppLock(Lteam/opay/pay/android/AppLock;)V
    .locals 0
    .param p1    # Lteam/opay/pay/android/AppLock;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->appLock:Lteam/opay/pay/android/AppLock;

    .line 2
    .line 3
    return-void
.end method

.method public final showAppLockOnActivityResume(Lteam/opay/pay/android/AppLock;Landroid/app/Activity;)V
    .locals 7
    .param p1    # Lteam/opay/pay/android/AppLock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appLock"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "activity"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "class "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->printLogger(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lql8;->a:Lql8;

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Lql8;->h(Landroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    new-instance v1, Lteam/opay/core/settings/NoClearStorage;

    .line 49
    .line 50
    invoke-direct {v1, p2}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lteam/opay/core/settings/NoClearStorage;->w0()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-direct {p0}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->queryRememberLogoutTimeout()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v1}, Lteam/opay/core/settings/NoClearStorage;->v0()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v2, 0x3

    .line 69
    if-ne v1, v2, :cond_2

    .line 70
    .line 71
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 72
    .line 73
    const-wide/16 v0, 0x7

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    invoke-direct {p0}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->queryNotRememberLogoutTimeout()J

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 84
    .line 85
    .line 86
    move-result-wide v3

    .line 87
    invoke-virtual {p1}, Lteam/opay/pay/android/AppLock;->d()J

    .line 88
    .line 89
    .line 90
    move-result-wide v5

    .line 91
    sub-long/2addr v3, v5

    .line 92
    sub-long/2addr v3, v1

    .line 93
    const-wide/16 v1, 0x0

    .line 94
    .line 95
    cmp-long v5, v3, v1

    .line 96
    .line 97
    if-lez v5, :cond_3

    .line 98
    .line 99
    const/4 v1, 0x1

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    const/4 v1, 0x0

    .line 102
    :goto_1
    new-instance v2, Lteam/opay/pay/home/AppLockStorage;

    .line 103
    .line 104
    invoke-direct {v2}, Lteam/opay/pay/home/AppLockStorage;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Lteam/opay/pay/home/AppLockStorage;->d()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-direct {p0, p2}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->canShowAppLockInner(Landroid/app/Activity;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-virtual {v0, p2}, Lql8;->h(Landroid/content/Context;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v5, "showAppLockOnActivityResume canShowAppLock="

    .line 125
    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v5, "  isShowAppLock="

    .line 133
    .line 134
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v5, " canShowApplockInner="

    .line 141
    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v5, " isGuestUser="

    .line 149
    .line 150
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-direct {p0, v4}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->printLogger(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    if-eqz v2, :cond_4

    .line 164
    .line 165
    if-eqz v3, :cond_4

    .line 166
    .line 167
    const-string/jumbo v0, "\u8fdb\u5165\u9501\u5c4f\u9875\u9762\u4e86"

    .line 168
    .line 169
    .line 170
    invoke-direct {p0, v0}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->printLogger(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const/4 v5, 0x6

    .line 174
    const/4 v6, 0x0

    .line 175
    const/4 v3, 0x0

    .line 176
    const/4 v4, 0x0

    .line 177
    move-object v1, p1

    .line 178
    move-object v2, p2

    .line 179
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/android/AppLock;->l(Lteam/opay/pay/android/AppLock;Landroid/content/Context;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_4
    if-eqz v1, :cond_5

    .line 184
    .line 185
    if-eqz v3, :cond_5

    .line 186
    .line 187
    if-nez v0, :cond_5

    .line 188
    .line 189
    const-string/jumbo v0, "\u8fdb\u5165\u9501\u5c4f\u9875\u9762\u4e86 \u975e\u6e38\u5ba2"

    .line 190
    .line 191
    .line 192
    invoke-direct {p0, v0}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->printLogger(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const/4 v5, 0x6

    .line 196
    const/4 v6, 0x0

    .line 197
    const/4 v3, 0x0

    .line 198
    const/4 v4, 0x0

    .line 199
    move-object v1, p1

    .line 200
    move-object v2, p2

    .line 201
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/android/AppLock;->l(Lteam/opay/pay/android/AppLock;Landroid/content/Context;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_5
    return-void
.end method
