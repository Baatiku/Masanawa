.class final Lcashier/model/PaymentManager$showWebAuthFragment$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/model/PaymentManager;->V()V
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
.field final synthetic this$0:Lcashier/model/PaymentManager;


# direct methods
.method public constructor <init>(Lcashier/model/PaymentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/model/PaymentManager$showWebAuthFragment$1$1;->this$0:Lcashier/model/PaymentManager;

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
    invoke-virtual {p0}, Lcashier/model/PaymentManager$showWebAuthFragment$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcashier/model/PaymentManager$showWebAuthFragment$1$1;->this$0:Lcashier/model/PaymentManager;

    invoke-static {v0}, Lcashier/model/PaymentManager;->e(Lcashier/model/PaymentManager;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->b0()Lcashier/util/PayOrderStatusPolling;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcashier/model/PaymentManager$showWebAuthFragment$1$1;->this$0:Lcashier/model/PaymentManager;

    invoke-static {v1}, Lcashier/model/PaymentManager;->e(Lcashier/model/PaymentManager;)Lcashier/model/CashierViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcashier/data/OrderInfo;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Lcashier/util/PayOrderStatusPolling;->g(Ljava/lang/String;Z)V

    return-void
.end method
