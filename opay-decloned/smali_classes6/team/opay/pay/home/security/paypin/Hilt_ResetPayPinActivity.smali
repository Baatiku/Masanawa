.class public abstract Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;
.super Lteam/opay/pay/android/NoBindingActivity;
.source "Hilt_ResetPayPinActivity.java"

# interfaces
.implements Lfo6;


# instance fields
.field public c:Lm3d;

.field public volatile d:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

.field public final e:Ljava/lang/Object;

.field public f:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/android/NoBindingActivity;-><init>(I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->e:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->f:Z

    .line 13
    .line 14
    invoke-direct {p0}, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->_initHiltInternal()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private _initHiltInternal()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity$a;-><init>(Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Loka;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private initSavedStateHandleHolder()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Leo6;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->b()Lm3d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->c:Lm3d;

    .line 18
    .line 19
    invoke-virtual {v0}, Lm3d;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->c:Lm3d;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lm3d;->c(Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->d:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->e:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->d:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->createComponentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->d:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit v0

    .line 22
    goto :goto_2

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v1

    .line 25
    :cond_1
    :goto_2
    iget-object v0, p0, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->d:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    .line 26
    .line 27
    return-object v0
.end method

.method public createComponentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;
    .locals 1

    .line 1
    new-instance v0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;-><init>(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->generatedComponent()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$a;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lu53;->a(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/ViewModelProvider$a;)Landroidx/lifecycle/ViewModelProvider$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public inject()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->f:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->generatedComponent()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lhqc;

    .line 13
    .line 14
    invoke-static {p0}, Lphf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Lhqc;->o0(Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/android/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->initSavedStateHandleHolder()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/pay/android/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/home/security/paypin/Hilt_ResetPayPinActivity;->c:Lm3d;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lm3d;->a()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
