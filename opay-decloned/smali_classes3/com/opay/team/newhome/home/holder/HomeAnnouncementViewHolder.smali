.class public final Lcom/opay/team/newhome/home/holder/HomeAnnouncementViewHolder;
.super Lcom/opay/team/newhome/home/holder/HomeViewHolder;
.source "HomeAnnouncementViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/holder/HomeAnnouncementViewHolder;",
        "Lcom/opay/team/newhome/home/holder/HomeViewHolder;",
        "Ldja;",
        "binding",
        "<init>",
        "(Ldja;)V",
        "",
        "position",
        "Lcom/opay/team/newhome/home/bean/HomeData;",
        "data",
        "",
        "b",
        "(ILcom/opay/team/newhome/home/bean/HomeData;)V",
        "c",
        "()V",
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


# direct methods
.method public constructor <init>(Ldja;)V
    .locals 1
    .param p1    # Ldja;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ldja;->a()Lteam/opay/pay/wallet/view/AnnouncementView;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "getRoot(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/opay/team/newhome/home/holder/HomeViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public b(ILcom/opay/team/newhome/home/bean/HomeData;)V
    .locals 0
    .param p2    # Lcom/opay/team/newhome/home/bean/HomeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "data"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type team.opay.pay.wallet.view.AnnouncementView"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Lteam/opay/pay/wallet/view/AnnouncementView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/pay/wallet/view/AnnouncementView;->j(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
