.class public Lcom/opay/face/common/view/dialog/UpgradeDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "UpgradeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/face/common/view/dialog/UpgradeDialog$b;,
        Lcom/opay/face/common/view/dialog/UpgradeDialog$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/opay/face/common/view/dialog/UpgradeDialog$a;

.field public d:Lcom/opay/face/common/view/dialog/UpgradeDialog$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic A(Lcom/opay/face/common/view/dialog/UpgradeDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/dialog/UpgradeDialog;->D(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lcom/opay/face/common/view/dialog/UpgradeDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/dialog/UpgradeDialog;->E(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/dialog/UpgradeDialog;->c:Lcom/opay/face/common/view/dialog/UpgradeDialog$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/opay/face/common/view/dialog/UpgradeDialog$a;->a(Landroidx/fragment/app/DialogFragment;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic D(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/opay/face/common/view/dialog/UpgradeDialog;->C()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic E(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/common/view/dialog/UpgradeDialog;->I()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final F()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    sget v1, Lcom/opay/face/R$drawable;->live_face_upgrade_dialog_bg:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 25
    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    const/4 v2, -0x2

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 30
    .line 31
    .line 32
    const/16 v1, 0x50

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public G(Lcom/opay/face/common/view/dialog/UpgradeDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/view/dialog/UpgradeDialog;->c:Lcom/opay/face/common/view/dialog/UpgradeDialog$a;

    .line 2
    .line 3
    return-void
.end method

.method public H(Lcom/opay/face/common/view/dialog/UpgradeDialog$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/view/dialog/UpgradeDialog;->d:Lcom/opay/face/common/view/dialog/UpgradeDialog$b;

    .line 2
    .line 3
    return-void
.end method

.method public final I()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/dialog/UpgradeDialog;->d:Lcom/opay/face/common/view/dialog/UpgradeDialog$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/opay/face/common/view/dialog/UpgradeDialog$b;->a(Landroidx/fragment/app/DialogFragment;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p1, Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/opay/face/R$style;->MyDialogTheme:I

    .line 8
    .line 9
    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget p3, Lcom/opay/face/R$layout;->fragment_upgrade_dialog:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/opay/face/common/view/dialog/UpgradeDialog;->F()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {p2}, Lcom/opay/face/common/util/ScreenTools;->b(Landroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iput p2, p0, Lcom/opay/face/common/view/dialog/UpgradeDialog;->a:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Lcom/opay/face/common/util/ScreenTools;->a(Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iput p2, p0, Lcom/opay/face/common/view/dialog/UpgradeDialog;->b:I

    .line 23
    .line 24
    sget p2, Lcom/opay/face/R$id;->closeIv:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    new-instance v0, Lxif;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lxif;-><init>(Lcom/opay/face/common/view/dialog/UpgradeDialog;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    sget p2, Lcom/opay/face/R$id;->upgradeBtn:I

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Lyif;

    .line 45
    .line 46
    invoke-direct {p2, p0}, Lyif;-><init>(Lcom/opay/face/common/view/dialog/UpgradeDialog;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
