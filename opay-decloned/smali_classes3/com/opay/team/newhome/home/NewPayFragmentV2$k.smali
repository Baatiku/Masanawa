.class public final Lcom/opay/team/newhome/home/NewPayFragmentV2$k;
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
    iput-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$k;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/home/event/OPayPageRefreshEvent;Ljr2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/event/OPayPageRefreshEvent;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$k;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v1, p2, v0}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->loadData$default(Lcom/opay/team/newhome/home/NewPayFragmentV2;ZILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/home/event/OPayPageRefreshEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/NewPayFragmentV2$k;->c(Lteam/opay/pay/home/event/OPayPageRefreshEvent;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
