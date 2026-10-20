.class public final Lteam/opay/swarmfoundation/payment/IPaymentCashier$a;
.super Ljava/lang/Object;
.source "IPayment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/swarmfoundation/payment/IPaymentCashier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic a(Lteam/opay/swarmfoundation/payment/IPaymentCashier;Landroidx/fragment/app/FragmentActivity;Lteam/opay/swarmfoundation/payment/PayInput;Ljava/lang/String;ZZLa66;ILjava/lang/Object;)V
    .locals 9

    .line 1
    if-nez p8, :cond_2

    .line 2
    .line 3
    and-int/lit8 v0, p7, 0x8

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v6, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v6, p4

    .line 11
    :goto_0
    and-int/lit8 v0, p7, 0x10

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v7, p5

    .line 18
    :goto_1
    move-object v2, p0

    .line 19
    move-object v3, p1

    .line 20
    move-object v4, p2

    .line 21
    move-object v5, p3

    .line 22
    move-object v8, p6

    .line 23
    invoke-interface/range {v2 .. v8}, Lteam/opay/swarmfoundation/payment/IPaymentCashier;->startPay(Landroidx/fragment/app/FragmentActivity;Lteam/opay/swarmfoundation/payment/PayInput;Ljava/lang/String;ZZLa66;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 28
    .line 29
    const-string v1, "Super calls with default arguments not supported in this target, function: startPay"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method
