.class public abstract Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;
.super Lteam/opay/core/common/base/HiltActivity;
.source "Hilt_PrintProviderActivity.java"

# interfaces
.implements Lfo6;


# instance fields
.field public volatile l:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

.field public final m:Ljava/lang/Object;

.field public n:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/core/common/base/HiltActivity;-><init>(I)V

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
    iput-object p1, p0, Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;->m:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;->n:Z

    .line 13
    .line 14
    invoke-direct {p0}, Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;->_initHiltInternal()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private _initHiltInternal()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity$a;-><init>(Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Loka;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;->l:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;->m:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;->l:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;->createComponentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;->l:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

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
    iget-object v0, p0, Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;->l:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

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
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;->componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

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
    iget-boolean v0, p0, Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;->n:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;->generatedComponent()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Liyb;

    .line 13
    .line 14
    invoke-static {p0}, Lphf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lteam/opay/spos/printer/function/PrintProviderActivity;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Liyb;->T0(Lteam/opay/spos/printer/function/PrintProviderActivity;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
