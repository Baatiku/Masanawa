.class public abstract Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;
.super Lteam/opay/pay/kyc/task/FaceWrapperFragment;
.source "Hilt_KycGuardianFaceFragment.java"


# instance fields
.field public w:Landroid/content/ContextWrapper;

.field public x:Z

.field public y:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;->y:Z

    .line 6
    .line 7
    return-void
.end method

.method private initializeComponentContext()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;->w:Landroid/content/ContextWrapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lteam/opay/pay/kyc/task/Hilt_FaceWrapperFragment;->getContext()Landroid/content/Context;

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
    iput-object v0, p0, Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;->w:Landroid/content/ContextWrapper;

    .line 14
    .line 15
    invoke-super {p0}, Lteam/opay/pay/kyc/task/Hilt_FaceWrapperFragment;->getContext()Landroid/content/Context;

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
    iput-boolean v0, p0, Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;->x:Z

    .line 24
    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/pay/kyc/task/Hilt_FaceWrapperFragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;->x:Z

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;->initializeComponentContext()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;->w:Landroid/content/ContextWrapper;

    .line 17
    .line 18
    return-object v0
.end method

.method public inject()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;->y:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;->y:Z

    .line 7
    .line 8
    invoke-static {p0}, Lphf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lfo6;

    .line 13
    .line 14
    invoke-interface {v0}, Leo6;->generatedComponent()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lty7;

    .line 19
    .line 20
    invoke-static {p0}, Lphf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lty7;->t2(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 4
    invoke-super {p0, p1}, Lteam/opay/pay/kyc/task/Hilt_FaceWrapperFragment;->onAttach(Landroid/app/Activity;)V

    .line 5
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;->w:Landroid/content/ContextWrapper;

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
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;->initializeComponentContext()V

    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;->inject()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/kyc/task/Hilt_FaceWrapperFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;->initializeComponentContext()V

    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/Hilt_KycGuardianFaceFragment;->inject()V

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/kyc/task/Hilt_FaceWrapperFragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

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
