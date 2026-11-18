.class public final Lteam/opay/pay/cashier/BaseCashierManager$c;
.super Ljava/lang/Object;
.source "BaseCashierManager.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/cashier/BaseCashierManager;-><init>(Landroidx/fragment/app/FragmentActivity;)V
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
.field public final synthetic a:Lteam/opay/pay/cashier/BaseCashierManager;


# direct methods
.method public constructor <init>(Lteam/opay/pay/cashier/BaseCashierManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/BaseCashierManager$c;->a:Lteam/opay/pay/cashier/BaseCashierManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotify;Ljr2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotify;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lteam/opay/pay/cashier/BaseCashierManager$c;->a:Lteam/opay/pay/cashier/BaseCashierManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotify;->a()Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotifyFrom;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotifyFrom;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    const-string p1, ""

    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p2, p1, v0}, Lteam/opay/pay/cashier/BaseCashierManager;->notifyAddMoney(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotify;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/BaseCashierManager$c;->c(Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotify;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
