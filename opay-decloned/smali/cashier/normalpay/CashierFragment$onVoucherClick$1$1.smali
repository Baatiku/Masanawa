.class final Lcashier/normalpay/CashierFragment$onVoucherClick$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CashierFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/normalpay/CashierFragment;->c0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcashier/data/Voucher;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "selectVoucher",
        "Lcashier/data/Voucher;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcashier/normalpay/CashierFragment;


# direct methods
.method public constructor <init>(Lcashier/normalpay/CashierFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/normalpay/CashierFragment$onVoucherClick$1$1;->this$0:Lcashier/normalpay/CashierFragment;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcashier/data/Voucher;

    invoke-virtual {p0, p1}, Lcashier/normalpay/CashierFragment$onVoucherClick$1$1;->invoke(Lcashier/data/Voucher;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcashier/data/Voucher;)V
    .locals 10
    .param p1    # Lcashier/data/Voucher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcashier/data/Voucher;->getVoucherId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcashier/normalpay/CashierFragment$onVoucherClick$1$1;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {v2}, Lcashier/normalpay/CashierFragment;->E(Lcashier/normalpay/CashierFragment;)Lcashier/model/PaymentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcashier/model/PaymentManager;->y()Lcashier/data/Voucher;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcashier/data/Voucher;->getVoucherId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    iget-object v2, p0, Lcashier/normalpay/CashierFragment$onVoucherClick$1$1;->this$0:Lcashier/normalpay/CashierFragment;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcashier/data/Voucher;->getVoucherId()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v3, v0

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcashier/normalpay/CashierFragment;->e0(Lcashier/normalpay/CashierFragment;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_3
    return-void
.end method
