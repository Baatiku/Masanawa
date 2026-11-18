.class final Lcashier/model/CashierViewModel$getOrderStatus$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CashierViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/model/CashierViewModel;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcashier/model/CashierViewModel$getOrderStatus$1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcashier/net/ResultData<",
        "+",
        "Lcashier/data/OrderResponse;",
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
        "Lcashier/data/OrderResponse;",
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
    iput-object p1, p0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

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

    invoke-virtual {p0, p1}, Lcashier/model/CashierViewModel$getOrderStatus$1;->invoke(Lcashier/net/ResultData;)V

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
            "Lcashier/data/OrderResponse;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    iget-object v4, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v4}, Lcashier/model/CashierViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 3
    sget-object v6, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 4
    const-string v4, "query_type"

    const-string v7, "new"

    invoke-static {v4, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v7

    const-string v12, ""

    if-nez v7, :cond_0

    move-object v7, v12

    :cond_0
    const-string v8, "errorcode"

    invoke-static {v8, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->c()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    move-object v8, v12

    :cond_1
    const-string v9, "errormessage"

    invoke-static {v9, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Lkotlin/Pair;

    aput-object v4, v9, v3

    aput-object v7, v9, v2

    aput-object v8, v9, v1

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 7
    const-string v7, "COMMON_payment_status_query"

    const/4 v4, 0x0

    move-object v8, v9

    move-object v9, v4

    invoke-static/range {v6 .. v11}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 8
    iget-object v4, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    new-instance v6, Lcashier/data/FailedInfo;

    .line 9
    sget v7, Lteam/opay/pay/cashier/R$string;->pay_failed_header:I

    invoke-static {v7}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    move-result-object v14

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcashier/data/OrderResponse;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcashier/data/OrderResponse;->f()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move-object v15, v8

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->c()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    .line 11
    sget v8, Lteam/opay/pay/cashier/R$string;->pay_failed_description:I

    invoke-static {v8}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 12
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcashier/data/OrderResponse;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcashier/data/OrderResponse;->d()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v16, v8

    goto :goto_5

    :cond_5
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 13
    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcashier/data/OrderResponse;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcashier/data/OrderResponse;->g()Ljava/lang/Boolean;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    move/from16 v19, v8

    goto :goto_6

    :cond_6
    const/16 v19, 0x0

    :goto_6
    const/16 v20, 0x10

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object v13, v6

    .line 15
    invoke-direct/range {v13 .. v21}, Lcashier/data/FailedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4, v6}, Lcashier/model/CashierViewModel;->A0(Lcashier/data/FailedInfo;)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->d()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SUCCESS"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 17
    iget-object v4, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcashier/data/OrderResponse;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcashier/data/OrderResponse;->a()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_7
    move-object v6, v7

    :goto_7
    if-nez v6, :cond_8

    move-object v6, v12

    :cond_8
    invoke-virtual {v4, v6}, Lcashier/model/CashierViewModel;->v0(Ljava/lang/String;)V

    .line 18
    iget-object v4, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcashier/data/OrderResponse;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcashier/data/OrderResponse;->h()Lcashier/data/State;

    move-result-object v6

    goto :goto_8

    :cond_9
    move-object v6, v7

    :goto_8
    sget-object v8, Lcashier/data/State;->CardPending:Lcashier/data/State;

    if-ne v6, v8, :cond_b

    :cond_a
    const/4 v6, 0x0

    goto :goto_9

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcashier/data/OrderResponse;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcashier/data/OrderResponse;->e()Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 20
    :goto_9
    invoke-static {v4, v6}, Lcashier/model/CashierViewModel;->C(Lcashier/model/CashierViewModel;Z)V

    .line 21
    iget-object v4, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v4}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcashier/data/OrderResponse;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcashier/data/OrderResponse;->g()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :cond_c
    xor-int/2addr v3, v2

    invoke-virtual {v4, v3}, Lcashier/data/FailedInfo;->f(Z)V

    .line 22
    iget-object v3, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v3}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v3

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcashier/data/OrderResponse;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcashier/data/OrderResponse;->f()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    :cond_d
    sget v4, Lteam/opay/pay/cashier/R$string;->pay_failed_description:I

    invoke-static {v4}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 24
    :cond_e
    invoke-virtual {v3, v4}, Lcashier/data/FailedInfo;->h(Ljava/lang/String;)V

    .line 25
    iget-object v3, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v3}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcashier/data/OrderResponse;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcashier/data/OrderResponse;->d()Ljava/lang/String;

    move-result-object v7

    :cond_f
    if-nez v7, :cond_10

    goto :goto_a

    :cond_10
    move-object v12, v7

    :goto_a
    invoke-virtual {v3, v12}, Lcashier/data/FailedInfo;->g(Ljava/lang/String;)V

    .line 26
    iget-object v3, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v3}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcashier/data/OrderResponse;

    invoke-static {v4}, Li52;->h(Lcashier/data/OrderResponse;)Lcashier/data/CashierStatus;

    move-result-object v6

    iget-object v4, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    .line 27
    invoke-virtual {v4}, Lcashier/model/CashierViewModel;->b0()Lcashier/util/PayOrderStatusPolling;

    move-result-object v4

    invoke-virtual {v4}, Lcashier/util/PayOrderStatusPolling;->f()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 28
    sget-object v4, Lcashier/model/CashierViewModel$getOrderStatus$1$a;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_12

    if-eq v4, v1, :cond_11

    .line 29
    new-instance v1, Lcashier/data/CashierOrderResult;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    .line 30
    :cond_11
    new-instance v1, Lcashier/data/CashierOrderResult;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    .line 31
    :cond_12
    new-instance v1, Lcashier/data/CashierOrderResult;

    sget-object v12, Lcashier/data/CashierStatus;->PENDING:Lcashier/data/CashierStatus;

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    .line 32
    :cond_13
    sget-object v1, Lcashier/data/CashierStatus;->CARD_PENDING:Lcashier/data/CashierStatus;

    if-ne v6, v1, :cond_14

    .line 33
    new-instance v1, Lcashier/data/CashierOrderResult;

    sget-object v8, Lcashier/data/CashierStatus;->POLL_STATUS:Lcashier/data/CashierStatus;

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    .line 34
    :cond_14
    new-instance v1, Lcashier/data/CashierOrderResult;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    :goto_b
    invoke-virtual {v3, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 36
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v1

    .line 37
    const-string v4, "neterror"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_c

    :cond_16
    const-string v2, "timeout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_c
    if-eqz v2, :cond_17

    .line 38
    iget-object v1, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v1

    sget v2, Lteam/opay/pay/cashier/R$string;->pay_query_error_tip:I

    invoke-static {v2}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcashier/data/FailedInfo;->h(Ljava/lang/String;)V

    .line 39
    iget-object v1, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v1

    sget v2, Lteam/opay/pay/cashier/R$string;->pay_net_error_label:I

    invoke-static {v2}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcashier/data/FailedInfo;->i(Ljava/lang/String;)V

    .line 40
    iget-object v1, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcashier/data/FailedInfo;->f(Z)V

    .line 41
    iget-object v1, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    .line 42
    new-instance v2, Lcashier/data/CashierOrderResult;

    .line 43
    sget-object v3, Lcashier/data/CashierStatus;->FAILED:Lcashier/data/CashierStatus;

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v4

    .line 45
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    invoke-direct {v2, v3, v4, v5}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 47
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 48
    :cond_17
    iget-object v1, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_d

    :cond_18
    move-object v12, v2

    :goto_d
    invoke-virtual {v1, v12}, Lcashier/data/FailedInfo;->h(Ljava/lang/String;)V

    .line 49
    iget-object v1, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v1

    invoke-static {v7}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcashier/data/FailedInfo;->i(Ljava/lang/String;)V

    .line 50
    iget-object v1, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcashier/data/FailedInfo;->f(Z)V

    .line 51
    iget-object v1, v0, Lcashier/model/CashierViewModel$getOrderStatus$1;->this$0:Lcashier/model/CashierViewModel;

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    .line 52
    new-instance v2, Lcashier/data/CashierOrderResult;

    .line 53
    sget-object v3, Lcashier/data/CashierStatus;->FAILED:Lcashier/data/CashierStatus;

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v4

    .line 55
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 56
    invoke-direct {v2, v3, v4, v5}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 57
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
