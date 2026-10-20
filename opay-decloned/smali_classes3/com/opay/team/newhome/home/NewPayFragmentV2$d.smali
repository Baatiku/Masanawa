.class public final Lcom/opay/team/newhome/home/NewPayFragmentV2$d;
.super Ljava/lang/Object;
.source "NewPayFragmentV2.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/home/NewPayFragmentV2;->addObserver()V
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
    iput-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$d;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/home/websocket/WsEmpty;Ljr2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/websocket/WsEmpty;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$d;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getHomeSetting(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/home/HomeSettingsStorage;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/opay/team/home/HomeSettingsStorage;->h()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$d;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-static {p2}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1, v0}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$setShouldLookupLatestTransactions$p(Lcom/opay/team/newhome/home/NewPayFragmentV2;Ljava/lang/Boolean;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$d;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {p1, v0, p2, v1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->lookupLatestTransactions$default(Lcom/opay/team/newhome/home/NewPayFragmentV2;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$d;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getViewModel(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$d;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 37
    .line 38
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const-string v0, "getViewLifecycleOwner(...)"

    .line 43
    .line 44
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->U(Lag8;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/home/websocket/WsEmpty;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/NewPayFragmentV2$d;->c(Lteam/opay/pay/home/websocket/WsEmpty;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
