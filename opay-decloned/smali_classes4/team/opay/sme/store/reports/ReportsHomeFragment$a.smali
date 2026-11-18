.class public final Lteam/opay/sme/store/reports/ReportsHomeFragment$a;
.super Ljava/lang/Object;
.source "ReportsHomeFragment.kt"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/reports/ReportsHomeFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/sme/store/reports/ReportsHomeFragment$a",
        "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
        "tab",
        "",
        "onTabReselected",
        "(Lcom/google/android/material/tabs/TabLayout$Tab;)V",
        "onTabUnselected",
        "onTabSelected",
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
.field public final synthetic a:Lteam/opay/sme/store/reports/ReportsHomeFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/reports/ReportsHomeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/reports/ReportsHomeFragment$a;->a:Lteam/opay/sme/store/reports/ReportsHomeFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lteam/opay/sme/store/reports/ReportsHomeFragment$a;->a:Lteam/opay/sme/store/reports/ReportsHomeFragment;

    .line 10
    .line 11
    invoke-static {v1}, Lteam/opay/sme/store/reports/ReportsHomeFragment;->L(Lteam/opay/sme/store/reports/ReportsHomeFragment;)Lteam/opay/core/common/android/vp2/TabsAdapter2;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lteam/opay/core/common/android/vp2/TabsAdapter2;->getItemCount()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v1, p0, Lteam/opay/sme/store/reports/ReportsHomeFragment$a;->a:Lteam/opay/sme/store/reports/ReportsHomeFragment;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const/4 p1, 0x0

    .line 32
    :goto_1
    const/4 v2, 0x1

    .line 33
    invoke-static {v1, p1, v0, v2}, Lteam/opay/sme/store/reports/ReportsHomeFragment;->M(Lteam/opay/sme/store/reports/ReportsHomeFragment;Landroid/view/View;IZ)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lteam/opay/sme/store/reports/ReportsHomeFragment$a;->a:Lteam/opay/sme/store/reports/ReportsHomeFragment;

    .line 11
    .line 12
    invoke-static {v2}, Lteam/opay/sme/store/reports/ReportsHomeFragment;->L(Lteam/opay/sme/store/reports/ReportsHomeFragment;)Lteam/opay/core/common/android/vp2/TabsAdapter2;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lteam/opay/core/common/android/vp2/TabsAdapter2;->getItemCount()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-lt v1, v2, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v2, p0, Lteam/opay/sme/store/reports/ReportsHomeFragment$a;->a:Lteam/opay/sme/store/reports/ReportsHomeFragment;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const/4 p1, 0x0

    .line 33
    :goto_1
    invoke-static {v2, p1, v1, v0}, Lteam/opay/sme/store/reports/ReportsHomeFragment;->M(Lteam/opay/sme/store/reports/ReportsHomeFragment;Landroid/view/View;IZ)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
