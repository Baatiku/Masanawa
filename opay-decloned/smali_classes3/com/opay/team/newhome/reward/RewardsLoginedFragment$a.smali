.class public final Lcom/opay/team/newhome/reward/RewardsLoginedFragment$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RewardsLoginedFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/reward/RewardsLoginedFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "com/opay/team/newhome/reward/RewardsLoginedFragment$a",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "dx",
        "dy",
        "",
        "onScrolled",
        "(Landroidx/recyclerview/widget/RecyclerView;II)V",
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


# instance fields
.field public final synthetic a:Lcom/opay/team/newhome/reward/RewardsLoginedFragment;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/reward/RewardsLoginedFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsLoginedFragment$a;->a:Lcom/opay/team/newhome/reward/RewardsLoginedFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    const-string p2, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/opay/team/newhome/reward/RewardsLoginedFragment$a;->a:Lcom/opay/team/newhome/reward/RewardsLoginedFragment;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/opay/team/newhome/reward/RewardsLoginedFragment$a;->a:Lcom/opay/team/newhome/reward/RewardsLoginedFragment;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/opay/team/newhome/reward/RewardsLoginedFragment$a;->a:Lcom/opay/team/newhome/reward/RewardsLoginedFragment;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/opay/team/newhome/reward/RewardsLoginedFragment$a;->a:Lcom/opay/team/newhome/reward/RewardsLoginedFragment;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/opay/team/newhome/reward/RewardsLoginedFragment;->T0(Lcom/opay/team/newhome/reward/RewardsLoginedFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 p2, 0x0

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p1, 0x0

    .line 47
    :goto_0
    iget-object p3, p0, Lcom/opay/team/newhome/reward/RewardsLoginedFragment$a;->a:Lcom/opay/team/newhome/reward/RewardsLoginedFragment;

    .line 48
    .line 49
    invoke-virtual {p3}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    check-cast p3, Lvia;

    .line 54
    .line 55
    iget-object p3, p3, Lvia;->j:Lteam/opay/pay/android/views/OPaySwipeRefreshLayout;

    .line 56
    .line 57
    invoke-virtual {p3, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 58
    .line 59
    .line 60
    iget-object p3, p0, Lcom/opay/team/newhome/reward/RewardsLoginedFragment$a;->a:Lcom/opay/team/newhome/reward/RewardsLoginedFragment;

    .line 61
    .line 62
    invoke-virtual {p3}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Lvia;

    .line 67
    .line 68
    iget-object p3, p3, Lvia;->j:Lteam/opay/pay/android/views/OPaySwipeRefreshLayout;

    .line 69
    .line 70
    invoke-virtual {p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->i()Z

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    if-eqz p3, :cond_2

    .line 75
    .line 76
    if-nez p1, :cond_2

    .line 77
    .line 78
    iget-object p1, p0, Lcom/opay/team/newhome/reward/RewardsLoginedFragment$a;->a:Lcom/opay/team/newhome/reward/RewardsLoginedFragment;

    .line 79
    .line 80
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lvia;

    .line 85
    .line 86
    iget-object p1, p1, Lvia;->j:Lteam/opay/pay/android/views/OPaySwipeRefreshLayout;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_1
    return-void
.end method
