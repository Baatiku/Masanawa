.class public final Lcashier/normalpay/CashierActivity;
.super Lcashier/normalpay/Hilt_CashierActivity;
.source "CashierActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0010\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0010\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcashier/normalpay/CashierActivity;",
        "Lcashier/ui/BasePayActivity;",
        "<init>",
        "()V",
        "",
        "D",
        "Lcashier/normalpay/NormalPaymentApi;",
        "H",
        "()Lcashier/normalpay/NormalPaymentApi;",
        "G",
        "I",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcashier/normalpay/Hilt_CashierActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic E(Lcashier/normalpay/CashierActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/normalpay/CashierActivity;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic F(Lcashier/normalpay/CashierActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/normalpay/CashierActivity;->I()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public D()V
    .locals 3

    .line 1
    sget-object v0, Lcashier/util/CashierBus;->a:Lcashier/util/CashierBus;

    .line 2
    .line 3
    new-instance v1, Lcashier/normalpay/CashierActivity$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcashier/normalpay/CashierActivity$a;-><init>(Lcashier/normalpay/CashierActivity;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "cashier_pay_data"

    .line 9
    .line 10
    invoke-virtual {v0, p0, v2, v1}, Lcashier/util/CashierBus;->c(Lag8;Ljava/lang/Object;La66;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->c0()Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcashier/normalpay/CashierActivity$onPrePay$2;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcashier/normalpay/CashierActivity$onPrePay$2;-><init>(Lcashier/normalpay/CashierActivity;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcashier/normalpay/CashierActivity$b;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Lcashier/normalpay/CashierActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final G()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v11, Lcashier/data/NewPaymentInfoRequest;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v12, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v1, v12

    .line 28
    :goto_0
    const-string v13, ""

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    move-object v2, v13

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object v2, v1

    .line 35
    :goto_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getVoucherId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    move-object v5, v1

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move-object v5, v12

    .line 58
    :goto_2
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 59
    .line 60
    const/16 v9, 0x62

    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v8, 0x0

    .line 66
    move-object v1, v11

    .line 67
    move-object v6, v14

    .line 68
    invoke-direct/range {v1 .. v10}, Lcashier/data/NewPaymentInfoRequest;-><init>(Ljava/lang/String;Lcashier/util/CurrencyAmount;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v11}, Lcashier/model/CashierViewModel;->y0(Lcashier/data/NewPaymentInfoRequest;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    invoke-virtual {v0, v1, v2}, Lcashier/model/CashierViewModel;->I0(J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, v14}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getCashierLink()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    :cond_3
    if-nez v12, :cond_4

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    move-object v13, v12

    .line 122
    :goto_3
    invoke-virtual {v0, v13}, Lcashier/model/CashierViewModel;->s0(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v1, Lcashier/normalpay/CashierActivity$getCashierInfo$1;

    .line 127
    .line 128
    invoke-direct {v1, p0}, Lcashier/normalpay/CashierActivity$getCashierInfo$1;-><init>(Lcashier/normalpay/CashierActivity;)V

    .line 129
    .line 130
    .line 131
    new-instance v2, Lcashier/normalpay/CashierActivity$b;

    .line 132
    .line 133
    invoke-direct {v2, v1}, Lcashier/normalpay/CashierActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public H()Lcashier/normalpay/NormalPaymentApi;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcashier/normalpay/NormalPaymentApi;

    .line 2
    .line 3
    invoke-direct {v0}, Lcashier/normalpay/NormalPaymentApi;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final I()V
    .locals 1

    .line 1
    new-instance v0, Lcashier/normalpay/PayOwealthGuideDialogFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcashier/normalpay/PayOwealthGuideDialogFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcashier/util/UtilsKt;->n(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public bridge synthetic z()Lcashier/net/IPaymentApi;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcashier/normalpay/CashierActivity;->H()Lcashier/normalpay/NormalPaymentApi;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
