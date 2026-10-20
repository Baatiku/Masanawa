.class public final Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion;
.super Ljava/lang/Object;
.source "MainLockInterceptorDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\"\u0010\u000c\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion;",
        "",
        "<init>",
        "()V",
        "Landroidx/lifecycle/LifecycleCoroutineScope;",
        "coroutineScope",
        "Lteam/opay/pay/android/BaseActivity;",
        "activity",
        "",
        "a",
        "(Landroidx/lifecycle/LifecycleCoroutineScope;Lteam/opay/pay/android/BaseActivity;)V",
        "",
        "isFirstLauncher",
        "Z",
        "b",
        "()Z",
        "c",
        "(Z)V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/LifecycleCoroutineScope;Lteam/opay/pay/android/BaseActivity;)V
    .locals 7
    .param p1    # Landroidx/lifecycle/LifecycleCoroutineScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/android/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "coroutineScope"

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
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v4, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {v4, p2, v0}, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;-><init>(Lteam/opay/pay/android/BaseActivity;Ljr2;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    move-object v1, p1

    .line 25
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate;->access$isFirstLauncher$cp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate;->access$setFirstLauncher$cp(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
