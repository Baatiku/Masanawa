.class public abstract Lteam/opay/pay/android/Hilt_NewOpayApplication;
.super Lteam/opay/pay/android/OpayApplication;
.source "Hilt_NewOpayApplication.java"

# interfaces
.implements Lfo6;


# instance fields
.field private final componentManager:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

.field private injected:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/android/OpayApplication;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lteam/opay/pay/android/Hilt_NewOpayApplication;->injected:Z

    .line 6
    .line 7
    new-instance v0, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    .line 8
    .line 9
    new-instance v1, Lteam/opay/pay/android/Hilt_NewOpayApplication$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lteam/opay/pay/android/Hilt_NewOpayApplication$a;-><init>(Lteam/opay/pay/android/Hilt_NewOpayApplication;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;-><init>(Lxk2;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lteam/opay/pay/android/Hilt_NewOpayApplication;->componentManager:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;
    .locals 1

    .line 2
    iget-object v0, p0, Lteam/opay/pay/android/Hilt_NewOpayApplication;->componentManager:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    return-object v0
.end method

.method public bridge synthetic componentManager()Leo6;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/Hilt_NewOpayApplication;->componentManager()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    move-result-object v0

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/Hilt_NewOpayApplication;->componentManager()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;->generatedComponent()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public hiltInternalInject()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/android/Hilt_NewOpayApplication;->injected:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lteam/opay/pay/android/Hilt_NewOpayApplication;->injected:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/android/Hilt_NewOpayApplication;->generatedComponent()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lsq9;

    .line 13
    .line 14
    invoke-static {p0}, Lphf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lteam/opay/pay/android/NewOpayApplication;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Lsq9;->g(Lteam/opay/pay/android/NewOpayApplication;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/Hilt_NewOpayApplication;->hiltInternalInject()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lteam/opay/pay/android/OpayApplication;->onCreate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
