.class public final synthetic Lteam/opay/pay/payment/airtimeMobileData/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lhm6;


# instance fields
.field public final synthetic a:Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/c;->a:Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeMobileData/c;->a:Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    check-cast p2, Lteam/opay/pay/api/BundleInfo;

    .line 6
    .line 7
    check-cast p3, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, p1, p2, p3}, Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$indexSlidingTabAndShowDialog$1;->f(Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment;Ljava/lang/String;Lteam/opay/pay/api/BundleInfo;Ljava/lang/String;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
