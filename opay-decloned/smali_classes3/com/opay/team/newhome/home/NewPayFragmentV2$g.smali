.class public final Lcom/opay/team/newhome/home/NewPayFragmentV2$g;
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
    iput-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$g;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$g;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getMainViewModel(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lteam/opay/pay/home/MainViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/home/MainViewModel;->n0()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$g;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-static {p1, p2}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$setShowAnnouncement$p(Lcom/opay/team/newhome/home/NewPayFragmentV2;Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$g;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getHomeAdapter(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/newhome/home/HomeAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$g;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getBinding(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Ltia;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object p2, p2, Ltia;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    const-string v0, "newHomeContainerRecycler"

    .line 35
    .line 36
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/home/HomeAdapter;->e0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p1
.end method
