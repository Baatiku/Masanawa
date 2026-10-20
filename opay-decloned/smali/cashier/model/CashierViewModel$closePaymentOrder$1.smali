.class final Lcashier/model/CashierViewModel$closePaymentOrder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CashierViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/model/CashierViewModel;->F(Lag8;Ljava/lang/String;)V
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
        "Lcashier/data/ClosePaymentResponse;",
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
        "Lcashier/data/ClosePaymentResponse;",
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
.field final synthetic $reason:Ljava/lang/String;

.field final synthetic this$0:Lcashier/model/CashierViewModel;


# direct methods
.method public constructor <init>(Lcashier/model/CashierViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/model/CashierViewModel$closePaymentOrder$1;->this$0:Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcashier/model/CashierViewModel$closePaymentOrder$1;->$reason:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcashier/net/ResultData;

    invoke-virtual {p0, p1}, Lcashier/model/CashierViewModel$closePaymentOrder$1;->invoke(Lcashier/net/ResultData;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcashier/net/ResultData;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/net/ResultData<",
            "+",
            "Lcashier/data/ClosePaymentResponse;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcashier/model/CashierViewModel$closePaymentOrder$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcashier/net/ResultData;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    const-string v3, "SUCCESS"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    const-string v4, "C10305"

    if-eqz v2, :cond_c

    .line 4
    invoke-virtual {p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcashier/data/ClosePaymentResponse;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcashier/data/ClosePaymentResponse;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 5
    :goto_1
    const-string v5, "success"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    iget-object p1, p0, Lcashier/model/CashierViewModel$closePaymentOrder$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v6, Lcashier/data/CashierOrderResult;

    sget-object v1, Lcashier/data/CashierStatus;->SUCCEEDED:Lcashier/data/CashierStatus;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 7
    :cond_2
    const-string v5, "pending"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    iget-object p1, p0, Lcashier/model/CashierViewModel$closePaymentOrder$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v6, Lcashier/data/CashierOrderResult;

    sget-object v1, Lcashier/data/CashierStatus;->PENDING:Lcashier/data/CashierStatus;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 9
    :cond_3
    iget-object v2, p0, Lcashier/model/CashierViewModel$closePaymentOrder$1;->$reason:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 10
    iget-object v2, p0, Lcashier/model/CashierViewModel$closePaymentOrder$1;->this$0:Lcashier/model/CashierViewModel;

    .line 11
    sget v4, Lteam/opay/pay/cashier/R$string;->pay_failed_header:I

    invoke-static {v4}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-virtual {p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcashier/data/ClosePaymentResponse;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcashier/data/ClosePaymentResponse;->b()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v0

    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, v4

    :goto_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_6

    .line 13
    sget v3, Lteam/opay/pay/cashier/R$string;->pay_failed_description:I

    invoke-static {v3}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    move-result-object v3

    :cond_6
    move-object v7, v3

    .line 14
    invoke-virtual {p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcashier/data/ClosePaymentResponse;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcashier/data/ClosePaymentResponse;->a()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto :goto_4

    :cond_7
    move-object v8, v0

    .line 15
    :goto_4
    iget-object v3, p0, Lcashier/model/CashierViewModel$closePaymentOrder$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v3}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    move-result-object v3

    invoke-virtual {v3}, Lcashier/data/ConfirmPayReq;->a()Ljava/lang/String;

    move-result-object v10

    .line 16
    invoke-virtual {p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcashier/data/ClosePaymentResponse;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcashier/data/ClosePaymentResponse;->c()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move v11, v3

    goto :goto_5

    :cond_8
    const/4 v11, 0x0

    .line 17
    :goto_5
    new-instance v3, Lcashier/data/FailedInfo;

    const/4 v9, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcashier/data/FailedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v3}, Lcashier/model/CashierViewModel;->A0(Lcashier/data/FailedInfo;)V

    .line 18
    iget-object v2, p0, Lcashier/model/CashierViewModel$closePaymentOrder$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v3, Lcashier/data/CashierOrderResult;

    .line 19
    sget-object v5, Lcashier/data/CashierStatus;->FAILED:Lcashier/data/CashierStatus;

    .line 20
    invoke-virtual {p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcashier/data/ClosePaymentResponse;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcashier/data/ClosePaymentResponse;->a()Ljava/lang/String;

    move-result-object v0

    .line 21
    :cond_9
    invoke-virtual {p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcashier/data/ClosePaymentResponse;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcashier/data/ClosePaymentResponse;->c()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :cond_a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 22
    invoke-direct {v3, v5, v0, p1}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 23
    :cond_b
    iget-object p1, p0, Lcashier/model/CashierViewModel$closePaymentOrder$1;->this$0:Lcashier/model/CashierViewModel;

    sget-object v0, Lcashier/data/PayStatus;->NORMAL:Lcashier/data/PayStatus;

    invoke-virtual {p1, v0}, Lcashier/model/CashierViewModel;->D0(Lcashier/data/PayStatus;)V

    goto/16 :goto_8

    .line 24
    :cond_c
    iget-object v0, p0, Lcashier/model/CashierViewModel$closePaymentOrder$1;->$reason:Ljava/lang/String;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 25
    iget-object p1, p0, Lcashier/model/CashierViewModel$closePaymentOrder$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v6, Lcashier/data/CashierOrderResult;

    sget-object v1, Lcashier/data/CashierStatus;->PENDING:Lcashier/data/CashierStatus;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_8

    .line 26
    :cond_d
    iget-object v0, p0, Lcashier/model/CashierViewModel$closePaymentOrder$1;->this$0:Lcashier/model/CashierViewModel;

    .line 27
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_failed_header:I

    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-virtual {p1}, Lcashier/net/ResultData;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_6

    :cond_e
    move-object v3, v1

    :goto_6
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 29
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_failed_description:I

    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_7

    :cond_f
    move-object v6, v3

    .line 30
    :goto_7
    invoke-virtual {p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v7

    .line 31
    iget-object v1, p0, Lcashier/model/CashierViewModel$closePaymentOrder$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/data/ConfirmPayReq;->a()Ljava/lang/String;

    move-result-object v9

    .line 32
    new-instance v1, Lcashier/data/FailedInfo;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x28

    const/4 v12, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lcashier/data/FailedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcashier/model/CashierViewModel;->A0(Lcashier/data/FailedInfo;)V

    .line 33
    iget-object v0, p0, Lcashier/model/CashierViewModel$closePaymentOrder$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    .line 34
    new-instance v1, Lcashier/data/CashierOrderResult;

    .line 35
    sget-object v2, Lcashier/data/CashierStatus;->FAILED:Lcashier/data/CashierStatus;

    .line 36
    invoke-virtual {p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object p1

    .line 37
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    invoke-direct {v1, v2, p1, v3}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 39
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_8
    return-void
.end method
