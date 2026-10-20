.class public final Lteam/opay/pay/wallet/TransactionActivity$a;
.super Ljava/lang/Object;
.source "TransactionActivity.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/wallet/TransactionActivity;->onCreate(Landroid/os/Bundle;)V
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
.field public final synthetic a:Lteam/opay/pay/wallet/TransactionActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/wallet/TransactionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/wallet/TransactionActivity$a;->a:Lteam/opay/pay/wallet/TransactionActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/home/websocket/WsAdData;Ljr2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/websocket/WsAdData;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/home/websocket/WsAdData;->getAd_position_code()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "ng_transaction_notice"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lteam/opay/pay/wallet/TransactionActivity$a;->a:Lteam/opay/pay/wallet/TransactionActivity;

    .line 14
    .line 15
    invoke-static {p1}, Lteam/opay/pay/wallet/TransactionActivity;->E(Lteam/opay/pay/wallet/TransactionActivity;)Lteam/opay/pay/transaction/TransactionViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lteam/opay/pay/wallet/TransactionActivity$a;->a:Lteam/opay/pay/wallet/TransactionActivity;

    .line 20
    .line 21
    invoke-virtual {p1, p2, v0}, Lteam/opay/pay/transaction/TransactionViewModel;->g0(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/home/websocket/WsAdData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/wallet/TransactionActivity$a;->c(Lteam/opay/pay/home/websocket/WsAdData;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
