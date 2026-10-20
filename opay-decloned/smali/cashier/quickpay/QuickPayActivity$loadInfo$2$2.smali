.class final Lcashier/quickpay/QuickPayActivity$loadInfo$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "QuickPayActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/quickpay/QuickPayActivity$loadInfo$2;->invoke(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic $first:Z

.field final synthetic $message:Ljava/lang/String;

.field final synthetic this$0:Lcashier/quickpay/QuickPayActivity;


# direct methods
.method public constructor <init>(ZLcashier/quickpay/QuickPayActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcashier/quickpay/QuickPayActivity$loadInfo$2$2;->$first:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcashier/quickpay/QuickPayActivity$loadInfo$2$2;->this$0:Lcashier/quickpay/QuickPayActivity;

    .line 4
    .line 5
    iput-object p3, p0, Lcashier/quickpay/QuickPayActivity$loadInfo$2$2;->$message:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcashier/quickpay/QuickPayActivity$loadInfo$2$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 21

    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Lcashier/quickpay/QuickPayActivity$loadInfo$2$2;->$first:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcashier/quickpay/QuickPayActivity$loadInfo$2$2;->this$0:Lcashier/quickpay/QuickPayActivity;

    invoke-static {v1}, Lcashier/quickpay/QuickPayActivity;->E(Lcashier/quickpay/QuickPayActivity;)Lcashier/quickpay/QuickMethodManager;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/quickpay/QuickMethodManager;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    :cond_0
    iget-object v1, v0, Lcashier/quickpay/QuickPayActivity$loadInfo$2$2;->this$0:Lcashier/quickpay/QuickPayActivity;

    invoke-virtual {v1}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    move-result-object v1

    .line 4
    new-instance v9, Lcashier/data/CloseOrderReq;

    .line 5
    iget-object v2, v0, Lcashier/quickpay/QuickPayActivity$loadInfo$2$2;->this$0:Lcashier/quickpay/QuickPayActivity;

    invoke-virtual {v2}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    move-result-object v2

    invoke-virtual {v2}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    move-result-object v2

    const/4 v10, 0x0

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

    .line 6
    :goto_1
    iget-object v5, v0, Lcashier/quickpay/QuickPayActivity$loadInfo$2$2;->$message:Ljava/lang/String;

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 7
    const-string v4, "C10001"

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcashier/data/CloseOrderReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    invoke-virtual {v1, v9}, Lcashier/model/CashierViewModel;->E(Lcashier/data/CloseOrderReq;)V

    .line 9
    iget-object v1, v0, Lcashier/quickpay/QuickPayActivity$loadInfo$2$2;->this$0:Lcashier/quickpay/QuickPayActivity;

    .line 10
    new-instance v2, Lcashier/PayResult;

    .line 11
    sget-object v13, Lcashier/CashierResult;->CANCEL:Lcashier/CashierResult;

    .line 12
    invoke-virtual {v1}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    move-result-object v3

    invoke-virtual {v3}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    move-result-object v10

    :cond_3
    if-nez v10, :cond_4

    move-object v14, v11

    goto :goto_2

    :cond_4
    move-object v14, v10

    :goto_2
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
    invoke-static {v1, v2}, Lcashier/quickpay/QuickPayActivity;->I(Lcashier/quickpay/QuickPayActivity;Lcashier/PayResult;)V

    .line 15
    iget-object v1, v0, Lcashier/quickpay/QuickPayActivity$loadInfo$2$2;->this$0:Lcashier/quickpay/QuickPayActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_5
    return-void
.end method
