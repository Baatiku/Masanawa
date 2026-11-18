.class public final Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate$a;
.super Ljava/lang/Object;
.source "AppLockInterceptorDelegate.kt"

# interfaces
.implements Ld00$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->initAppStatusListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "team/opay/pay/onboarding/delegate/AppLockInterceptorDelegate$a",
        "Ld00$a;",
        "",
        "b",
        "()V",
        "a",
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
.field public final synthetic a:Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;


# direct methods
.method public constructor <init>(Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate$a;->a:Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate$a;->d(Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final d(Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;)V
    .locals 7

    .line 1
    sget-object v0, Ld00;->a:Ld00;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld00;->e()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->getAppLock()Lteam/opay/pay/android/AppLock;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 16
    .line 17
    invoke-direct {v0, v2}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->v0()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v3, 0x3

    .line 25
    if-ne v0, v3, :cond_0

    .line 26
    .line 27
    invoke-static {p0, v2}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->access$canShowAppLockInner(Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;Landroid/app/Activity;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    sget-object v0, Lql8;->a:Lql8;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lql8;->h(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Lteam/opay/pay/android/AppLock;->e()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    const-string/jumbo v0, "\u524d\u540e\u53f0\u8fdb\u5165\u9501\u5c4f\u4e86"

    .line 48
    .line 49
    .line 50
    invoke-static {p0, v0}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->access$printLogger(Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v5, 0x6

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/android/AppLock;->l(Lteam/opay/pay/android/AppLock;Landroid/content/Context;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, v1, v2}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->showAppLockOnActivityResume(Lteam/opay/pay/android/AppLock;Landroid/app/Activity;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate$a;->a:Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;

    .line 11
    .line 12
    new-instance v2, Lj10;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Lj10;-><init>(Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate$a;->a:Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;->getAppLock()Lteam/opay/pay/android/AppLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/pay/android/AppLock;->f()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
