.class public abstract Lteam/opay/pay/home/tabs/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0008\u0010\u000f\u001a\u00020\rH\u0016R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0004X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/BaseFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "value",
        "",
        "fragmentVisible",
        "getFragmentVisible",
        "()Z",
        "setFragmentVisible",
        "(Z)V",
        "isForeground",
        "setForeground",
        "onFragmentVisibilityChange",
        "",
        "onStart",
        "onStop",
        "swarmfoundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private fragmentVisible:Z

.field private isForeground:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getFragmentVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/tabs/BaseFragment;->fragmentVisible:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isForeground()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/tabs/BaseFragment;->isForeground:Z

    .line 2
    .line 3
    return v0
.end method

.method public onFragmentVisibilityChange()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/home/tabs/BaseFragment;->isForeground:Z

    .line 8
    .line 9
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/home/tabs/BaseFragment;->isForeground:Z

    .line 8
    .line 9
    return-void
.end method

.method public final setForeground(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/tabs/BaseFragment;->isForeground:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setFragmentVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/tabs/BaseFragment;->fragmentVisible:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/BaseFragment;->onFragmentVisibilityChange()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
