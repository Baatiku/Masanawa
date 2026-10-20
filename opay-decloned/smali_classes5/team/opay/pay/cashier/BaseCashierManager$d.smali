.class public final Lteam/opay/pay/cashier/BaseCashierManager$d;
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
    iput-object p1, p0, Lteam/opay/pay/cashier/BaseCashierManager$d;->a:Lteam/opay/pay/cashier/BaseCashierManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/account/verify/VerifyExitEvent;Ljr2;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/VerifyExitEvent;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyExitEvent;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Lteam/opay/pay/account/verify/ModifyType;->TRADE:Lteam/opay/pay/account/verify/ModifyType;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lteam/opay/pay/cashier/BaseCashierManager$d;->a:Lteam/opay/pay/cashier/BaseCashierManager;

    .line 18
    .line 19
    invoke-static {p2}, Lteam/opay/pay/cashier/BaseCashierManager;->access$getVerifyCallback$p(Lteam/opay/pay/cashier/BaseCashierManager;)Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    new-instance v11, Lcashier/VerifyResult;

    .line 26
    .line 27
    sget-object v1, Lcashier/PoolType;->TRADE:Lcashier/PoolType;

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyExitEvent;->a()Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyExitEvent;->b()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyExitEvent;->d()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    const/16 v9, 0x1c

    .line 42
    .line 43
    const/4 v10, 0x0

    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    move-object v0, v11

    .line 49
    invoke-direct/range {v0 .. v10}, Lcashier/VerifyResult;-><init>(Lcashier/PoolType;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p2, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/cashier/BaseCashierManager$d;->a:Lteam/opay/pay/cashier/BaseCashierManager;

    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-static {p1, p2}, Lteam/opay/pay/cashier/BaseCashierManager;->access$setVerifyCallback$p(Lteam/opay/pay/cashier/BaseCashierManager;Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/account/verify/VerifyExitEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/BaseCashierManager$d;->c(Lteam/opay/pay/account/verify/VerifyExitEvent;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
