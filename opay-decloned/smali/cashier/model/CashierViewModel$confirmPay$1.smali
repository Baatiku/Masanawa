.class final Lcashier/model/CashierViewModel$confirmPay$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CashierViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/model/CashierViewModel;->G(Lag8;)Landroidx/lifecycle/MutableLiveData;
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
        "Lcashier/data/OrderInfo;",
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
        "Lcashier/data/OrderInfo;",
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
.field final synthetic this$0:Lcashier/model/CashierViewModel;


# direct methods
.method public constructor <init>(Lcashier/model/CashierViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

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
    check-cast p1, Lcashier/net/ResultData;

    invoke-virtual {p0, p1}, Lcashier/model/CashierViewModel$confirmPay$1;->invoke(Lcashier/net/ResultData;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcashier/net/ResultData;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/net/ResultData<",
            "+",
            "Lcashier/data/OrderInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->d()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    const-string v5, "SUCCESS"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "BankAccount"

    const-string v6, "BankCard"

    const-string v7, "0"

    const-string v8, "1"

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_9

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcashier/data/OrderInfo;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcashier/data/OrderInfo;->c()Lcashier/PoolResponse;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_3

    .line 5
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-static {v2, v10, v8, v1}, Lcashier/model/CashierViewModel;->B(Lcashier/model/CashierViewModel;ZLjava/lang/String;Lcashier/net/ResultData;)V

    .line 6
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    sget-object v3, Lcashier/PoolType;->TRADE:Lcashier/PoolType;

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcashier/data/OrderInfo;

    invoke-virtual {v1}, Lcashier/data/OrderInfo;->c()Lcashier/PoolResponse;

    move-result-object v1

    .line 9
    new-instance v4, Lcashier/model/CashierViewModel$confirmPay$1$1;

    iget-object v5, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-direct {v4, v5}, Lcashier/model/CashierViewModel$confirmPay$1$1;-><init>(Lcashier/model/CashierViewModel;)V

    invoke-interface {v2, v3, v1, v4}, Lcashier/CashierDelegate;->openVerifyPool(Lcashier/PoolType;Lcashier/PoolResponse;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    return-void

    .line 10
    :cond_3
    iget-object v3, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-static {v3, v10, v7, v1}, Lcashier/model/CashierViewModel;->B(Lcashier/model/CashierViewModel;ZLjava/lang/String;Lcashier/net/ResultData;)V

    .line 11
    iget-object v3, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    .line 12
    invoke-virtual {v3}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    move-result-object v4

    invoke-virtual {v4}, Lcashier/data/ConfirmPayReq;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v4}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    move-result-object v4

    invoke-virtual {v4}, Lcashier/data/ConfirmPayReq;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    .line 13
    :cond_5
    :goto_2
    invoke-static {v3, v9}, Lcashier/model/CashierViewModel;->C(Lcashier/model/CashierViewModel;Z)V

    .line 14
    iget-object v3, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcashier/data/OrderInfo;

    invoke-virtual {v3, v1}, Lcashier/model/CashierViewModel;->C0(Lcashier/data/OrderInfo;)V

    .line 15
    iget-object v1, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    .line 16
    iget-object v3, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v3}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcashier/data/OrderInfo;->a()Ljava/lang/String;

    move-result-object v2

    :cond_6
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    new-instance v2, Lcashier/data/CashierOrderResult;

    .line 17
    sget-object v4, Lcashier/data/CashierStatus;->SUBMITTED:Lcashier/data/CashierStatus;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    .line 18
    invoke-direct/range {v3 .. v8}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_8
    :goto_3
    new-instance v2, Lcashier/data/CashierOrderResult;

    sget-object v10, Lcashier/data/CashierStatus;->FAILED:Lcashier/data/CashierStatus;

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    :goto_4
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 20
    :cond_9
    iget-object v4, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v4}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    move-result-object v11

    invoke-virtual {v11}, Lcashier/data/ConfirmPayReq;->e()Ljava/lang/Boolean;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    move-object v7, v8

    :cond_a
    invoke-static {v4, v9, v7, v1}, Lcashier/model/CashierViewModel;->B(Lcashier/model/CashierViewModel;ZLjava/lang/String;Lcashier/net/ResultData;)V

    .line 21
    iget-object v4, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    .line 22
    sget v7, Lteam/opay/pay/cashier/R$string;->pay_failed_header:I

    invoke-static {v7}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    move-result-object v14

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v16

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->c()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    sget v7, Lteam/opay/pay/cashier/R$string;->pay_failed_description:I

    invoke-static {v7}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    move-result-object v7

    :cond_b
    move-object v15, v7

    .line 25
    new-instance v7, Lcashier/data/FailedInfo;

    .line 26
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v20, 0x10

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v7

    .line 27
    invoke-direct/range {v13 .. v21}, Lcashier/data/FailedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4, v7}, Lcashier/model/CashierViewModel;->A0(Lcashier/data/FailedInfo;)V

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    const-string v5, "neterror"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_6

    .line 29
    :cond_c
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v2

    sget v4, Lteam/opay/pay/cashier/R$string;->pay_net_error_tip:I

    invoke-static {v4}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcashier/data/FailedInfo;->h(Ljava/lang/String;)V

    .line 30
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcashier/data/FailedInfo;->f(Z)V

    .line 31
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    .line 32
    new-instance v4, Lcashier/data/CashierOrderResult;

    .line 33
    sget-object v5, Lcashier/data/CashierStatus;->FAILED:Lcashier/data/CashierStatus;

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-direct {v4, v5, v1, v3}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 36
    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 37
    :sswitch_1
    const-string v5, "30003"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_6

    .line 38
    :cond_d
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v2

    sget v4, Lteam/opay/pay/cashier/R$string;->pay_has_pending_label:I

    invoke-static {v4}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcashier/data/FailedInfo;->i(Ljava/lang/String;)V

    .line 39
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    .line 40
    new-instance v4, Lcashier/data/CashierOrderResult;

    .line 41
    sget-object v5, Lcashier/data/CashierStatus;->FAILED:Lcashier/data/CashierStatus;

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-direct {v4, v5, v1, v3}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 44
    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 45
    :sswitch_2
    const-string v3, "30002"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_6

    .line 46
    :cond_e
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v2

    sget v3, Lteam/opay/pay/cashier/R$string;->pay_has_success_label:I

    invoke-static {v3}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcashier/data/FailedInfo;->i(Ljava/lang/String;)V

    .line 47
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcashier/data/FailedInfo;->f(Z)V

    .line 48
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    .line 49
    new-instance v3, Lcashier/data/CashierOrderResult;

    .line 50
    sget-object v4, Lcashier/data/CashierStatus;->FAILED:Lcashier/data/CashierStatus;

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-direct {v3, v4, v1, v12}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 53
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 54
    :sswitch_3
    const-string v5, "30001"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_6

    .line 55
    :cond_f
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v2

    sget v4, Lteam/opay/pay/cashier/R$string;->pay_net_error_tip:I

    invoke-static {v4}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcashier/data/FailedInfo;->i(Ljava/lang/String;)V

    .line 56
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcashier/data/FailedInfo;->f(Z)V

    .line 57
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    .line 58
    new-instance v4, Lcashier/data/CashierOrderResult;

    .line 59
    sget-object v5, Lcashier/data/CashierStatus;->FAILED:Lcashier/data/CashierStatus;

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-direct {v4, v5, v1, v3}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 62
    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 63
    :sswitch_4
    const-string v3, "20204"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_6

    .line 64
    :cond_10
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v9, Lcashier/data/CashierOrderResult;

    .line 65
    sget-object v4, Lcashier/data/CashierStatus;->FINGER_ERROR:Lcashier/data/CashierStatus;

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    .line 67
    invoke-direct/range {v3 .. v8}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v9}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 68
    :sswitch_5
    const-string v3, "20013"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_6

    :sswitch_6
    const-string v3, "20012"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_6

    :sswitch_7
    const-string v3, "20003"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_6

    :sswitch_8
    const-string v3, "20002"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_6

    .line 69
    :cond_11
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v9, Lcashier/data/CashierOrderResult;

    .line 70
    sget-object v4, Lcashier/data/CashierStatus;->PASS_WORD_ERROR:Lcashier/data/CashierStatus;

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    .line 72
    invoke-direct/range {v3 .. v8}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v9}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 73
    :sswitch_9
    const-string v3, "20001"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_6

    .line 74
    :cond_12
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    .line 75
    new-instance v9, Lcashier/data/CashierOrderResult;

    .line 76
    sget-object v4, Lcashier/data/CashierStatus;->NO_PASSWORD:Lcashier/data/CashierStatus;

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    .line 78
    invoke-direct/range {v3 .. v8}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 79
    invoke-virtual {v2, v9}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 80
    :sswitch_a
    const-string v3, "05004"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_6

    .line 81
    :cond_13
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcashier/data/FailedInfo;->f(Z)V

    .line 82
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    .line 83
    new-instance v9, Lcashier/data/CashierOrderResult;

    .line 84
    sget-object v4, Lcashier/data/CashierStatus;->CARD_NOT_ENOUGH_BALANCE:Lcashier/data/CashierStatus;

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    .line 86
    invoke-direct/range {v3 .. v8}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    invoke-virtual {v2, v9}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 88
    :sswitch_b
    const-string v3, "05001"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_6

    .line 89
    :cond_14
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    .line 90
    new-instance v9, Lcashier/data/CashierOrderResult;

    .line 91
    sget-object v4, Lcashier/data/CashierStatus;->KYC_RECEIVER_EXCEEDED:Lcashier/data/CashierStatus;

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    .line 93
    invoke-direct/range {v3 .. v8}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    invoke-virtual {v2, v9}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 95
    :sswitch_c
    const-string v3, "timeout"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_6

    .line 96
    :cond_15
    iget-object v1, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    .line 97
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    move-result-object v2

    invoke-virtual {v2}, Lcashier/data/ConfirmPayReq;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    move-result-object v2

    invoke-virtual {v2}, Lcashier/data/ConfirmPayReq;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_5

    :cond_16
    const/4 v9, 0x0

    .line 98
    :cond_17
    :goto_5
    invoke-static {v1, v9}, Lcashier/model/CashierViewModel;->C(Lcashier/model/CashierViewModel;Z)V

    .line 99
    iget-object v1, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    new-instance v10, Lcashier/data/OrderInfo;

    .line 100
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    move-result-object v2

    invoke-virtual {v2}, Lcashier/data/ConfirmPayReq;->b()Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    .line 101
    invoke-direct/range {v2 .. v9}, Lcashier/data/OrderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcashier/PoolResponse;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v10}, Lcashier/model/CashierViewModel;->C0(Lcashier/data/OrderInfo;)V

    .line 102
    iget-object v1, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v8, Lcashier/data/CashierOrderResult;

    sget-object v3, Lcashier/data/CashierStatus;->SUBMITTED:Lcashier/data/CashierStatus;

    const/4 v6, 0x6

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v8}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 103
    :sswitch_d
    const-string v3, "daily_limit_exceeded"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_6

    .line 104
    :cond_18
    iget-object v2, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    .line 105
    new-instance v9, Lcashier/data/CashierOrderResult;

    sget-object v4, Lcashier/data/CashierStatus;->KYC_UPGRADE:Lcashier/data/CashierStatus;

    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 106
    invoke-virtual {v2, v9}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 107
    :cond_19
    :goto_6
    invoke-static {}, Lcashier/model/CashierViewModel;->z()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/collections/a;->G([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v9

    .line 108
    iget-object v4, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v4}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcashier/data/FailedInfo;->f(Z)V

    .line 109
    iget-object v4, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v4}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    .line 110
    new-instance v5, Lcashier/data/CashierOrderResult;

    .line 111
    sget-object v6, Lcashier/data/CashierStatus;->FAILED:Lcashier/data/CashierStatus;

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 114
    invoke-direct {v5, v6, v7, v3}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 115
    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "05027"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 117
    iget-object v1, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v1, v10}, Lcashier/model/CashierViewModel;->B0(I)V

    .line 118
    sget-object v3, Lcashier/util/CashierBus;->a:Lcashier/util/CashierBus;

    .line 119
    new-instance v5, Lcashier/util/CountDownEvent;

    iget-object v1, v0, Lcashier/model/CashierViewModel$confirmPay$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    move-result-object v2

    :cond_1a
    if-nez v2, :cond_1b

    const-string v2, ""

    :cond_1b
    const-string v1, "00m"

    const-string v4, "00s"

    invoke-direct {v5, v1, v4, v2}, Lcashier/util/CountDownEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 120
    const-string v4, "count_down_time_key"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcashier/util/CashierBus;->f(Lcashier/util/CashierBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_1c
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x567ea9c3 -> :sswitch_d
        -0x4e50b29f -> :sswitch_c
        0x2bd3a0c -> :sswitch_b
        0x2bd3a0f -> :sswitch_a
        0x2d72333 -> :sswitch_9
        0x2d72334 -> :sswitch_8
        0x2d72335 -> :sswitch_7
        0x2d72353 -> :sswitch_6
        0x2d72354 -> :sswitch_5
        0x2d72ab8 -> :sswitch_4
        0x2e53ab4 -> :sswitch_3
        0x2e53ab5 -> :sswitch_2
        0x2e53ab6 -> :sswitch_1
        0x4d4da28b -> :sswitch_0
    .end sparse-switch
.end method
