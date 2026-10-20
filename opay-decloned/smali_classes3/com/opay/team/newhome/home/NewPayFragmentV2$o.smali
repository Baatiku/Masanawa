.class public final Lcom/opay/team/newhome/home/NewPayFragmentV2$o;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "NewPayFragmentV2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/home/NewPayFragmentV2;->initView()V
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
        "com/opay/team/newhome/home/NewPayFragmentV2$o",
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
.field public final synthetic a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

.field public final synthetic b:Lcom/opay/team/newhome/SafeLinearLayoutManager;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/home/NewPayFragmentV2;Lcom/opay/team/newhome/SafeLinearLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$o;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$o;->b:Lcom/opay/team/newhome/SafeLinearLayoutManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$o;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$o;->b:Lcom/opay/team/newhome/SafeLinearLayoutManager;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 p2, 0x0

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    :goto_0
    iget-object p3, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$o;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 28
    .line 29
    invoke-static {p3}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getBinding(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Ltia;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    iget-object p3, p3, Ltia;->k:Lteam/opay/pay/android/views/OPaySwipeRefreshLayout;

    .line 34
    .line 35
    invoke-virtual {p3, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p3, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$o;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 39
    .line 40
    invoke-static {p3}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getBinding(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Ltia;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iget-object p3, p3, Ltia;->k:Lteam/opay/pay/android/views/OPaySwipeRefreshLayout;

    .line 45
    .line 46
    invoke-virtual {p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->i()Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-eqz p3, :cond_2

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$o;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getBinding(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Ltia;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p1, p1, Ltia;->k:Lteam/opay/pay/android/views/OPaySwipeRefreshLayout;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method
