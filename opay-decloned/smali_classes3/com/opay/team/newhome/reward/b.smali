.class public final synthetic Lcom/opay/team/newhome/reward/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lvfa;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/opay/team/newhome/reward/RewardsNewViewModel;


# direct methods
.method public synthetic constructor <init>(ILcom/opay/team/newhome/reward/RewardsNewViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/opay/team/newhome/reward/b;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/opay/team/newhome/reward/b;->b:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/reward/b;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/reward/b;->b:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 4
    .line 5
    check-cast p1, Lteam/opay/core/android/arch/Resource;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->c(ILcom/opay/team/newhome/reward/RewardsNewViewModel;Lteam/opay/core/android/arch/Resource;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
