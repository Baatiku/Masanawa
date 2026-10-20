.class final Lcashier/normalpay/CashierFragment$refreshPaymentInfo$3;
.super Lkotlin/jvm/internal/Lambda;
.source "CashierFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/normalpay/CashierFragment;->d0(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcashier/net/ResultData<",
        "+",
        "Lcashier/data/CashierInfoRsp;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001e\u0010\u0002\u001a\u001a\u0012\u0006\u0008\u0001\u0012\u00020\u0004 \u0005*\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcashier/net/ResultData;",
        "Lcashier/data/CashierInfoRsp;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic $cardId:Ljava/lang/String;

.field final synthetic $from:Ljava/lang/String;

.field final synthetic $useCashback:Z

.field final synthetic this$0:Lcashier/normalpay/CashierFragment;


# direct methods
.method public constructor <init>(Lcashier/normalpay/CashierFragment;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/normalpay/CashierFragment$refreshPaymentInfo$3;->this$0:Lcashier/normalpay/CashierFragment;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcashier/normalpay/CashierFragment$refreshPaymentInfo$3;->$useCashback:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcashier/normalpay/CashierFragment$refreshPaymentInfo$3;->$cardId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcashier/normalpay/CashierFragment$refreshPaymentInfo$3;->$from:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcashier/net/ResultData;

    invoke-virtual {p0, p1}, Lcashier/normalpay/CashierFragment$refreshPaymentInfo$3;->invoke(Lcashier/net/ResultData;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcashier/net/ResultData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/net/ResultData<",
            "+",
            "Lcashier/data/CashierInfoRsp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcashier/data/CashierInfoRsp;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcashier/data/CashierInfoRsp;->v(Ljava/lang/Long;)V

    :goto_1
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcashier/net/ResultData;->d()Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_2
    const-string v1, "SUCCESS"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcashier/normalpay/CashierFragment$refreshPaymentInfo$3;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {v0}, Lcashier/normalpay/CashierFragment;->H(Lcashier/normalpay/CashierFragment;)V

    .line 6
    iget-object v0, p0, Lcashier/normalpay/CashierFragment$refreshPaymentInfo$3;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-virtual {p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcashier/data/CashierInfoRsp;

    iget-boolean v1, p0, Lcashier/normalpay/CashierFragment$refreshPaymentInfo$3;->$useCashback:Z

    iget-object v2, p0, Lcashier/normalpay/CashierFragment$refreshPaymentInfo$3;->$cardId:Ljava/lang/String;

    iget-object v3, p0, Lcashier/normalpay/CashierFragment$refreshPaymentInfo$3;->$from:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, v3}, Lcashier/normalpay/CashierFragment;->J(Lcashier/normalpay/CashierFragment;Lcashier/data/CashierInfoRsp;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_3
    iget-object v0, p0, Lcashier/normalpay/CashierFragment$refreshPaymentInfo$3;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {v0}, Lcashier/normalpay/CashierFragment;->H(Lcashier/normalpay/CashierFragment;)V

    .line 8
    invoke-virtual {p1}, Lcashier/net/ResultData;->c()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    invoke-static {p1}, Lcashier/util/UtilsKt;->p(Ljava/lang/String;)V

    .line 9
    iget-boolean p1, p0, Lcashier/normalpay/CashierFragment$refreshPaymentInfo$3;->$useCashback:Z

    iget-object v0, p0, Lcashier/normalpay/CashierFragment$refreshPaymentInfo$3;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {v0}, Lcashier/normalpay/CashierFragment;->E(Lcashier/normalpay/CashierFragment;)Lcashier/model/PaymentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/PaymentManager;->u()Z

    move-result v0

    if-eq p1, v0, :cond_5

    .line 10
    iget-object p1, p0, Lcashier/normalpay/CashierFragment$refreshPaymentInfo$3;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {p1}, Lcashier/normalpay/CashierFragment;->D(Lcashier/normalpay/CashierFragment;)Lcashier/adapter/CashierInfoAdapter;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcashier/normalpay/CashierFragment$refreshPaymentInfo$3;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {v0}, Lcashier/normalpay/CashierFragment;->E(Lcashier/normalpay/CashierFragment;)Lcashier/model/PaymentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/PaymentManager;->u()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcashier/adapter/CashierInfoAdapter;->s(Z)V

    :cond_5
    :goto_2
    return-void
.end method
