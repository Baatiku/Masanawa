.class public final Lteam/opay/sme/store/branch/BranchListFragment$c;
.super Ljava/lang/Object;
.source "BranchListFragment.kt"

# interfaces
.implements Lfa3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/BranchListFragment;->K0(Lteam/opay/core/http/BusinessInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "team/opay/sme/store/branch/BranchListFragment$c",
        "Lfa3;",
        "",
        "b",
        "()Z",
        "business-sme-store_release"
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
.field public final synthetic b:Lteam/opay/sme/store/branch/BranchListFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/BranchListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$c;->b:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lfa3$b;->c(Lfa3;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$c;->b:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method public c(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lfa3$b;->a(Lfa3;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
