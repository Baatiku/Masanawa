.class public final Lteam/opay/pay/cashier/BaseCashierManager$e;
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
    iput-object p1, p0, Lteam/opay/pay/cashier/BaseCashierManager$e;->a:Lteam/opay/pay/cashier/BaseCashierManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/home/security/paypin/PayPinEvent;Ljr2;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/security/paypin/PayPinEvent;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/home/security/paypin/PayPinEvent;->a()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lteam/opay/pay/cashier/BaseCashierManager$e;->a:Lteam/opay/pay/cashier/BaseCashierManager;

    .line 8
    .line 9
    invoke-static {p1}, Lteam/opay/pay/cashier/BaseCashierManager;->access$getVerifyCallback$p(Lteam/opay/pay/cashier/BaseCashierManager;)Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    new-instance p2, Lcashier/VerifyResult;

    .line 16
    .line 17
    sget-object v1, Lcashier/PoolType;->SET_PAYMENT_PIN:Lcashier/PoolType;

    .line 18
    .line 19
    const/16 v9, 0xe0

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    const-string v3, ""

    .line 24
    .line 25
    const-string v4, ""

    .line 26
    .line 27
    const-string v5, ""

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    move-object v0, p2

    .line 33
    invoke-direct/range {v0 .. v10}, Lcashier/VerifyResult;-><init>(Lcashier/PoolType;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/cashier/BaseCashierManager$e;->a:Lteam/opay/pay/cashier/BaseCashierManager;

    .line 41
    .line 42
    invoke-static {p1}, Lteam/opay/pay/cashier/BaseCashierManager;->access$getVerifyCallback$p(Lteam/opay/pay/cashier/BaseCashierManager;)Lkotlin/jvm/functions/Function1;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    new-instance p2, Lcashier/VerifyResult;

    .line 49
    .line 50
    sget-object v1, Lcashier/PoolType;->FORGET_PAYMENT_PIN:Lcashier/PoolType;

    .line 51
    .line 52
    const/16 v9, 0xe0

    .line 53
    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v2, 0x1

    .line 56
    const-string v3, ""

    .line 57
    .line 58
    const-string v4, ""

    .line 59
    .line 60
    const-string v5, ""

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v8, 0x0

    .line 65
    move-object v0, p2

    .line 66
    invoke-direct/range {v0 .. v10}, Lcashier/VerifyResult;-><init>(Lcashier/PoolType;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/cashier/BaseCashierManager$e;->a:Lteam/opay/pay/cashier/BaseCashierManager;

    .line 73
    .line 74
    const/4 p2, 0x0

    .line 75
    invoke-static {p1, p2}, Lteam/opay/pay/cashier/BaseCashierManager;->access$setVerifyCallback$p(Lteam/opay/pay/cashier/BaseCashierManager;Lkotlin/jvm/functions/Function1;)V

    .line 76
    .line 77
    .line 78
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/home/security/paypin/PayPinEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/BaseCashierManager$e;->c(Lteam/opay/pay/home/security/paypin/PayPinEvent;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
