.class final Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PayNetFailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/ui/PayNetFailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic this$0:Lcashier/ui/PayNetFailFragment;


# direct methods
.method public constructor <init>(Lcashier/ui/PayNetFailFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;->this$0:Lcashier/ui/PayNetFailFragment;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 20

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;->this$0:Lcashier/ui/PayNetFailFragment;

    invoke-static {v1}, Lcashier/ui/PayNetFailFragment;->F(Lcashier/ui/PayNetFailFragment;)Lv8b;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    iget-object v2, v2, Lv8b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcashier/ui/PayNetFailFragment;->H(Lcashier/ui/PayNetFailFragment;Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;->this$0:Lcashier/ui/PayNetFailFragment;

    invoke-static {v1}, Lcashier/ui/PayNetFailFragment;->G(Lcashier/ui/PayNetFailFragment;)Lcashier/model/CashierViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/data/FailedInfo;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "30002"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_9

    .line 4
    iget-object v1, v0, Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;->this$0:Lcashier/ui/PayNetFailFragment;

    invoke-static {v1}, Lcashier/ui/PayNetFailFragment;->G(Lcashier/ui/PayNetFailFragment;)Lcashier/model/CashierViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 5
    new-instance v13, Lcashier/PayResult;

    .line 6
    sget-object v5, Lcashier/CashierResult;->SUCCESS:Lcashier/CashierResult;

    .line 7
    iget-object v4, v0, Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;->this$0:Lcashier/ui/PayNetFailFragment;

    invoke-static {v4}, Lcashier/ui/PayNetFailFragment;->G(Lcashier/ui/PayNetFailFragment;)Lcashier/model/CashierViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    move-result-object v4

    invoke-virtual {v4}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, v4

    .line 8
    :goto_1
    iget-object v4, v0, Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;->this$0:Lcashier/ui/PayNetFailFragment;

    invoke-static {v4}, Lcashier/ui/PayNetFailFragment;->G(Lcashier/ui/PayNetFailFragment;)Lcashier/model/CashierViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcashier/data/OrderInfo;->b()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    goto :goto_2

    :cond_2
    move-object v7, v3

    :goto_2
    const/16 v11, 0x38

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v13

    .line 9
    invoke-direct/range {v4 .. v12}, Lcashier/PayResult;-><init>(Lcashier/CashierResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    invoke-interface {v1, v13}, Lcashier/CashierDelegate;->onPaymentResult(Lcashier/PayResult;)V

    .line 11
    :cond_3
    sget-object v14, Lteam/opay/swarmfoundation/utils/SwarmBus;->a:Lteam/opay/swarmfoundation/utils/SwarmBus;

    .line 12
    new-instance v16, Lteam/opay/swarmfoundation/utils/PaymentMessage;

    .line 13
    iget-object v1, v0, Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;->this$0:Lcashier/ui/PayNetFailFragment;

    invoke-static {v1}, Lcashier/ui/PayNetFailFragment;->G(Lcashier/ui/PayNetFailFragment;)Lcashier/model/CashierViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v3

    :goto_3
    if-nez v1, :cond_5

    move-object v5, v2

    goto :goto_4

    :cond_5
    move-object v5, v1

    .line 14
    :goto_4
    iget-object v1, v0, Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;->this$0:Lcashier/ui/PayNetFailFragment;

    invoke-static {v1}, Lcashier/ui/PayNetFailFragment;->G(Lcashier/ui/PayNetFailFragment;)Lcashier/model/CashierViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcashier/data/OrderInfo;->b()Ljava/lang/String;

    move-result-object v3

    :cond_6
    if-nez v3, :cond_7

    move-object v6, v2

    goto :goto_5

    :cond_7
    move-object v6, v3

    .line 15
    :goto_5
    iget-object v1, v0, Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;->this$0:Lcashier/ui/PayNetFailFragment;

    invoke-static {v1}, Lcashier/ui/PayNetFailFragment;->G(Lcashier/ui/PayNetFailFragment;)Lcashier/model/CashierViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/data/FailedInfo;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move-object v8, v2

    goto :goto_6

    :cond_8
    move-object v8, v1

    .line 16
    :goto_6
    iget-object v1, v0, Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;->this$0:Lcashier/ui/PayNetFailFragment;

    invoke-static {v1}, Lcashier/ui/PayNetFailFragment;->G(Lcashier/ui/PayNetFailFragment;)Lcashier/model/CashierViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/data/FailedInfo;->d()Ljava/lang/String;

    move-result-object v9

    const/16 v7, 0xcd

    move-object/from16 v4, v16

    .line 17
    invoke-direct/range {v4 .. v9}, Lteam/opay/swarmfoundation/utils/PaymentMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x4

    const/16 v19, 0x0

    .line 18
    const-string v15, "swarm_event_key_payment_result"

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lteam/opay/swarmfoundation/utils/SwarmBus;->d(Lteam/opay/swarmfoundation/utils/SwarmBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 19
    iget-object v1, v0, Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;->this$0:Lcashier/ui/PayNetFailFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_8

    .line 20
    :cond_9
    iget-object v1, v0, Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;->this$0:Lcashier/ui/PayNetFailFragment;

    invoke-virtual {v1}, Lcashier/ui/PayNetFailFragment;->N()Lhm6;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 21
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    iget-object v4, v0, Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;->this$0:Lcashier/ui/PayNetFailFragment;

    invoke-static {v4}, Lcashier/ui/PayNetFailFragment;->G(Lcashier/ui/PayNetFailFragment;)Lcashier/model/CashierViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcashier/data/FailedInfo;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_7

    :cond_a
    move-object v2, v4

    .line 23
    :goto_7
    iget-object v4, v0, Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;->this$0:Lcashier/ui/PayNetFailFragment;

    invoke-static {v4}, Lcashier/ui/PayNetFailFragment;->G(Lcashier/ui/PayNetFailFragment;)Lcashier/model/CashierViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcashier/data/FailedInfo;->a()Ljava/lang/Integer;

    move-result-object v4

    .line 24
    invoke-interface {v1, v3, v2, v4}, Lhm6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_b
    iget-object v1, v0, Lcashier/ui/PayNetFailFragment$onViewCreated$1$1;->this$0:Lcashier/ui/PayNetFailFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcashier/ui/PayNetFailFragment;->E(Lcashier/ui/PayNetFailFragment;Z)V

    :goto_8
    return-void
.end method
