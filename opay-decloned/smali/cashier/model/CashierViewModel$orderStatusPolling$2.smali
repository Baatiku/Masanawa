.class final Lcashier/model/CashierViewModel$orderStatusPolling$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CashierViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/model/CashierViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcashier/util/PayOrderStatusPolling;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcashier/util/PayOrderStatusPolling;",
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
    iput-object p1, p0, Lcashier/model/CashierViewModel$orderStatusPolling$2;->this$0:Lcashier/model/CashierViewModel;

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
.method public final invoke()Lcashier/util/PayOrderStatusPolling;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v6, Lcashier/util/PayOrderStatusPolling;

    iget-object v1, p0, Lcashier/model/CashierViewModel$orderStatusPolling$2;->this$0:Lcashier/model/CashierViewModel;

    invoke-static {v1}, Lcashier/model/CashierViewModel;->y(Lcashier/model/CashierViewModel;)Lcashier/util/PollingConfigData;

    move-result-object v2

    new-instance v3, Lcashier/model/CashierViewModel$orderStatusPolling$2$1;

    iget-object v0, p0, Lcashier/model/CashierViewModel$orderStatusPolling$2;->this$0:Lcashier/model/CashierViewModel;

    invoke-direct {v3, v0}, Lcashier/model/CashierViewModel$orderStatusPolling$2$1;-><init>(Lcashier/model/CashierViewModel;)V

    new-instance v4, Lcashier/model/CashierViewModel$orderStatusPolling$2$2;

    iget-object v0, p0, Lcashier/model/CashierViewModel$orderStatusPolling$2;->this$0:Lcashier/model/CashierViewModel;

    invoke-direct {v4, v0}, Lcashier/model/CashierViewModel$orderStatusPolling$2$2;-><init>(Lcashier/model/CashierViewModel;)V

    .line 3
    new-instance v5, Lcashier/model/CashierViewModel$orderStatusPolling$2$3;

    iget-object v0, p0, Lcashier/model/CashierViewModel$orderStatusPolling$2;->this$0:Lcashier/model/CashierViewModel;

    invoke-direct {v5, v0}, Lcashier/model/CashierViewModel$orderStatusPolling$2$3;-><init>(Lcashier/model/CashierViewModel;)V

    move-object v0, v6

    .line 4
    invoke-direct/range {v0 .. v5}, Lcashier/util/PayOrderStatusPolling;-><init>(Landroidx/lifecycle/AndroidViewModel;Lcashier/util/PollingConfigData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-object v6
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcashier/model/CashierViewModel$orderStatusPolling$2;->invoke()Lcashier/util/PayOrderStatusPolling;

    move-result-object v0

    return-object v0
.end method
