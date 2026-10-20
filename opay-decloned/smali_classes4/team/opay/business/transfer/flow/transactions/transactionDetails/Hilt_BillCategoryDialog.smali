.class abstract Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;
.super Lteam/opay/core/common/base/BaseSheetFragment;
.source "Hilt_BillCategoryDialog.java"

# interfaces
.implements Lfo6;


# instance fields
.field public p:Landroid/content/ContextWrapper;

.field public q:Z

.field public volatile r:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

.field public final s:Ljava/lang/Object;

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/core/common/base/BaseSheetFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->s:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->t:Z

    .line 13
    .line 14
    return-void
.end method

.method private initializeComponentContext()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->p:Landroid/content/ContextWrapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->b(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->p:Landroid/content/ContextWrapper;

    .line 14
    .line 15
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lvd6;->a(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput-boolean v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->q:Z

    .line 24
    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->r:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->s:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->r:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->createComponentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->r:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->r:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    .line 26
    .line 27
    return-object v0
.end method

.method public createComponentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;
    .locals 1

    .line 1
    new-instance v0, Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->componentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->generatedComponent()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->q:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->initializeComponentContext()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->p:Landroid/content/ContextWrapper;

    .line 17
    .line 18
    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$a;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lu53;->b(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$a;)Landroidx/lifecycle/ViewModelProvider$a;

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
    iget-boolean v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->t:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->t:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->generatedComponent()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lk41;

    .line 13
    .line 14
    invoke-static {p0}, Lphf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Lk41;->i(Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 5
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->p:Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "onAttach called multiple times with different Context! Hilt Fragments should not be retained."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lwwb;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->initializeComponentContext()V

    .line 7
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->inject()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->initializeComponentContext()V

    .line 3
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/Hilt_BillCategoryDialog;->inject()V

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->c(Landroid/view/LayoutInflater;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
