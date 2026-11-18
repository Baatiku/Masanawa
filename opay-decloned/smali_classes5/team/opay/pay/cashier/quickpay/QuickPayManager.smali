.class public final Lteam/opay/pay/cashier/quickpay/QuickPayManager;
.super Lteam/opay/pay/cashier/BaseCashierManager;
.source "QuickPayManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/pay/cashier/quickpay/QuickPayManager;",
        "Lteam/opay/pay/cashier/BaseCashierManager;",
        "paymentActivity",
        "Landroidx/fragment/app/FragmentActivity;",
        "delegate",
        "Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;",
        "<init>",
        "(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;)V",
        "notifyAddMoney",
        "",
        "orderNo",
        "",
        "fromOWealth",
        "",
        "afterPayment",
        "payResult",
        "Lcashier/PayResult;",
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
.field private final delegate:Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paymentActivity:Landroidx/fragment/app/FragmentActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "paymentActivity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "delegate"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lteam/opay/pay/cashier/BaseCashierManager;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/cashier/quickpay/QuickPayManager;->paymentActivity:Landroidx/fragment/app/FragmentActivity;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/cashier/quickpay/QuickPayManager;->delegate:Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public afterPayment(Lcashier/PayResult;)V
    .locals 1
    .param p1    # Lcashier/PayResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "payResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public notifyAddMoney(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "orderNo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/pay/cashier/quickpay/QuickPayManager;->delegate:Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcashier/AbstractQuickPayDelegate;->backToChannelList()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getAddMoneyCallback()Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    new-instance p2, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/BaseCashierManager;->setAddMoneyCallback(Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
