.class public final synthetic Lcom/opay/team/newhome/reward/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lhm6;


# instance fields
.field public final synthetic a:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

.field public final synthetic b:Lteam/opay/odialog/net/AdDataItem;


# direct methods
.method public synthetic constructor <init>(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lteam/opay/odialog/net/AdDataItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/opay/team/newhome/reward/c;->a:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/opay/team/newhome/reward/c;->b:Lteam/opay/odialog/net/AdDataItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/c;->a:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/reward/c;->b:Lteam/opay/odialog/net/AdDataItem;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    check-cast p3, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    invoke-static {v0, v1, p1, p2, p3}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->f(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;II)Lkotlin/Unit;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
