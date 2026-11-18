.class final Lcashier/model/CashierViewModel$pollingConfig$2;
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
        "Lcashier/util/PollingConfigData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcashier/util/PollingConfigData;",
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
    iput-object p1, p0, Lcashier/model/CashierViewModel$pollingConfig$2;->this$0:Lcashier/model/CashierViewModel;

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
.method public final invoke()Lcashier/util/PollingConfigData;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    sget-object v0, Lcashier/data/PaymentPollingCashierConfig;->Companion:Lcashier/data/PaymentPollingCashierConfig$Companion;

    invoke-virtual {v0}, Lcashier/data/PaymentPollingCashierConfig$Companion;->a()Lcashier/data/PaymentPollingCashierConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcashier/data/PaymentPollingCashierConfig;->getPollingConfig()[Lcashier/util/PollingConfigData;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcashier/model/CashierViewModel$pollingConfig$2;->this$0:Lcashier/model/CashierViewModel;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 3
    invoke-virtual {v5}, Lcashier/util/PollingConfigData;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    move-result-object v7

    invoke-virtual {v7}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lteam/opay/swarmfoundation/payment/PayInput;->getServiceType()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, v1

    :goto_1
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcashier/util/PollingConfigData;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    move-result-object v7

    invoke-virtual {v7}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lteam/opay/swarmfoundation/payment/PayInput;->getCategoryType()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1
    move-object v7, v1

    :goto_2
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    move-object v1, v5

    :cond_4
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcashier/model/CashierViewModel$pollingConfig$2;->invoke()Lcashier/util/PollingConfigData;

    move-result-object v0

    return-object v0
.end method
