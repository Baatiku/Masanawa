.class public final Lcom/opay/team/newhome/home/NewPayFragmentV2$j;
.super Ljava/lang/Object;
.source "NewPayFragmentV2.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/home/NewPayFragmentV2;->flowBusEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/opay/team/newhome/home/NewPayFragmentV2;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/home/NewPayFragmentV2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$j;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lcom/opay/team/newhome/home/kbox/RefreshBoxEvent;Ljr2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/home/kbox/RefreshBoxEvent;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/kbox/RefreshBoxEvent;->b()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x3

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p2, v0, :cond_1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$j;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getViewModel(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->z0()Lcom/opay/team/newhome/reward/HomeKBoxRsp;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/HomeKBoxRsp;->j()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-ne p2, v1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$j;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getViewModel(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->g1(Lcom/opay/team/newhome/reward/HomeKBoxRsp;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$j;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getViewModel(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->y0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object p2, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$j;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 60
    .line 61
    invoke-static {p2}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getHomeAdapter(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/newhome/home/HomeAdapter;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object v0, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$j;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getBinding(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Ltia;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v0, v0, Ltia;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    const-string v2, "newHomeContainerRecycler"

    .line 74
    .line 75
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/kbox/RefreshBoxEvent;->a()Lcom/opay/team/newhome/reward/WidgetModule;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p2, v0, p1}, Lcom/opay/team/newhome/home/HomeAdapter;->L(Landroidx/recyclerview/widget/RecyclerView;Lcom/opay/team/newhome/reward/WidgetModule;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$j;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getViewModel(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->x0()Landroidx/lifecycle/MutableLiveData;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    new-instance p2, Lcom/opay/team/newhome/reward/HomeRewardsReq;

    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    invoke-direct {p2, v1, v0}, Lcom/opay/team/newhome/reward/HomeRewardsReq;-><init>(ZZ)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/opay/team/newhome/home/kbox/RefreshBoxEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/NewPayFragmentV2$j;->c(Lcom/opay/team/newhome/home/kbox/RefreshBoxEvent;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
