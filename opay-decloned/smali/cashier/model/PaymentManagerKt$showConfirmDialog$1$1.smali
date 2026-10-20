.class final Lcashier/model/PaymentManagerKt$showConfirmDialog$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/model/PaymentManagerKt;->b(Lcashier/model/CashierViewModel;Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "confirm",
        "",
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
.field final synthetic $activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $viewModel:Lcashier/model/CashierViewModel;


# direct methods
.method public constructor <init>(Lcashier/model/CashierViewModel;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/model/PaymentManagerKt$showConfirmDialog$1$1;->$viewModel:Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcashier/model/PaymentManagerKt$showConfirmDialog$1$1;->$activity:Landroidx/fragment/app/FragmentActivity;

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
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcashier/model/PaymentManagerKt$showConfirmDialog$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 21

    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "COMMON_pay_window_close_window_continue_click"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 3
    :cond_0
    sget-object v7, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    const/4 v11, 0x6

    const/4 v12, 0x0

    const-string v8, "COMMON_pay_window_close_window_cancel_click"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lcashier/model/PaymentManagerKt$showConfirmDialog$1$1;->$viewModel:Lcashier/model/CashierViewModel;

    .line 5
    new-instance v9, Lcashier/data/CloseOrderReq;

    .line 6
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    move-result-object v2

    invoke-virtual {v2}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v10

    :goto_0
    const-string v11, ""

    if-nez v2, :cond_2

    move-object v3, v11

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 7
    const-string v4, "C10001"

    const-string v5, ""

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcashier/data/CloseOrderReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    invoke-virtual {v1, v9}, Lcashier/model/CashierViewModel;->E(Lcashier/data/CloseOrderReq;)V

    .line 9
    iget-object v1, v0, Lcashier/model/PaymentManagerKt$showConfirmDialog$1$1;->$viewModel:Lcashier/model/CashierViewModel;

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 10
    new-instance v2, Lcashier/PayResult;

    .line 11
    sget-object v13, Lcashier/CashierResult;->CANCEL:Lcashier/CashierResult;

    .line 12
    iget-object v3, v0, Lcashier/model/PaymentManagerKt$showConfirmDialog$1$1;->$viewModel:Lcashier/model/CashierViewModel;

    invoke-virtual {v3}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    move-result-object v3

    invoke-virtual {v3}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v10

    :goto_2
    if-nez v3, :cond_4

    move-object v14, v11

    goto :goto_3

    :cond_4
    move-object v14, v3

    :goto_3
    const/16 v19, 0x3c

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v2

    .line 13
    invoke-direct/range {v12 .. v20}, Lcashier/PayResult;-><init>(Lcashier/CashierResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    invoke-interface {v1, v2}, Lcashier/CashierDelegate;->onPaymentResult(Lcashier/PayResult;)V

    .line 15
    :cond_5
    sget-object v3, Lteam/opay/swarmfoundation/utils/SwarmBus;->a:Lteam/opay/swarmfoundation/utils/SwarmBus;

    new-instance v5, Lteam/opay/swarmfoundation/utils/PaymentMessage;

    .line 16
    iget-object v1, v0, Lcashier/model/PaymentManagerKt$showConfirmDialog$1$1;->$viewModel:Lcashier/model/CashierViewModel;

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    move-object v1, v10

    :goto_4
    if-nez v1, :cond_7

    move-object v13, v11

    goto :goto_5

    :cond_7
    move-object v13, v1

    .line 17
    :goto_5
    iget-object v1, v0, Lcashier/model/PaymentManagerKt$showConfirmDialog$1$1;->$viewModel:Lcashier/model/CashierViewModel;

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcashier/data/OrderInfo;->b()Ljava/lang/String;

    move-result-object v10

    :cond_8
    if-nez v10, :cond_9

    move-object v14, v11

    goto :goto_6

    :cond_9
    move-object v14, v10

    :goto_6
    const/16 v18, 0x18

    const/16 v19, 0x0

    const/16 v15, 0xc9

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v5

    .line 18
    invoke-direct/range {v12 .. v19}, Lteam/opay/swarmfoundation/utils/PaymentMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "swarm_event_key_payment_result"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lteam/opay/swarmfoundation/utils/SwarmBus;->d(Lteam/opay/swarmfoundation/utils/SwarmBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 19
    iget-object v1, v0, Lcashier/model/PaymentManagerKt$showConfirmDialog$1$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_7
    return-void
.end method
