.class public final Lteam/opay/pay/cashier/BaseCashierManager$f;
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
    iput-object p1, p0, Lteam/opay/pay/cashier/BaseCashierManager$f;->a:Lteam/opay/pay/cashier/BaseCashierManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/account/verify/VerifyEvent;Ljr2;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/VerifyEvent;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getModifyType()Ljava/lang/String;

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
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Lteam/opay/pay/cashier/BaseCashierManager$f;->a:Lteam/opay/pay/cashier/BaseCashierManager;

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
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getValChainId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getSecurityId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getRefreshToken()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/16 v9, 0xe0

    .line 42
    .line 43
    const/4 v10, 0x0

    .line 44
    const/4 v2, 0x1

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v8, 0x0

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
    iget-object p1, p0, Lteam/opay/pay/cashier/BaseCashierManager$f;->a:Lteam/opay/pay/cashier/BaseCashierManager;

    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-static {p1, p2}, Lteam/opay/pay/cashier/BaseCashierManager;->access$setVerifyCallback$p(Lteam/opay/pay/cashier/BaseCashierManager;Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Lteam/opay/pay/account/verify/ModifyType;->SET_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 63
    .line 64
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    sget-object v1, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;->i:Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;

    .line 75
    .line 76
    iget-object p2, p0, Lteam/opay/pay/cashier/BaseCashierManager$f;->a:Lteam/opay/pay/cashier/BaseCashierManager;

    .line 77
    .line 78
    invoke-virtual {p2}, Lteam/opay/pay/cashier/BaseCashierManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const/16 v7, 0x10

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v4, 0x1

    .line 86
    const/4 v5, 0x1

    .line 87
    const/4 v6, 0x0

    .line 88
    move-object v3, p1

    .line 89
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;->b(Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;Landroid/content/Context;Lteam/opay/pay/account/verify/VerifyEvent;IILjava/lang/String;ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    sget-object v0, Lteam/opay/pay/account/verify/ModifyType;->FORGET_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 94
    .line 95
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_3

    .line 104
    .line 105
    sget-object v0, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;->i:Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;

    .line 106
    .line 107
    iget-object p2, p0, Lteam/opay/pay/cashier/BaseCashierManager$f;->a:Lteam/opay/pay/cashier/BaseCashierManager;

    .line 108
    .line 109
    invoke-virtual {p2}, Lteam/opay/pay/cashier/BaseCashierManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const/16 v6, 0x10

    .line 114
    .line 115
    const/4 v7, 0x0

    .line 116
    const/4 v3, 0x3

    .line 117
    const/4 v4, 0x1

    .line 118
    const/4 v5, 0x0

    .line 119
    move-object v2, p1

    .line 120
    invoke-static/range {v0 .. v7}, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;->b(Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;Landroid/content/Context;Lteam/opay/pay/account/verify/VerifyEvent;IILjava/lang/String;ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 124
    .line 125
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/account/verify/VerifyEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/BaseCashierManager$f;->c(Lteam/opay/pay/account/verify/VerifyEvent;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
