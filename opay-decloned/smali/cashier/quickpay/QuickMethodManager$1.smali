.class final Lcashier/quickpay/QuickMethodManager$1;
.super Lkotlin/jvm/internal/Lambda;
.source "QuickMethodManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/quickpay/QuickMethodManager;-><init>(Landroidx/fragment/app/FragmentActivity;Lcashier/model/CashierViewModel;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/json/JSONObject;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "json",
        "Lorg/json/JSONObject;",
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
.field final synthetic this$0:Lcashier/quickpay/QuickMethodManager;


# direct methods
.method public constructor <init>(Lcashier/quickpay/QuickMethodManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/quickpay/QuickMethodManager$1;->this$0:Lcashier/quickpay/QuickMethodManager;

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
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcashier/quickpay/QuickMethodManager$1;->invoke(Lorg/json/JSONObject;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/json/JSONObject;)V
    .locals 10

    .line 2
    sget-object v0, Lcashier/util/CashierBus;->a:Lcashier/util/CashierBus;

    new-instance v2, Lcashier/util/CashierEvent;

    iget-object v1, p0, Lcashier/quickpay/QuickMethodManager$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-static {v1}, Lcashier/quickpay/QuickMethodManager;->d(Lcashier/quickpay/QuickMethodManager;)Lcashier/model/CashierViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    move-result-object v1

    invoke-direct {v2, v1}, Lcashier/util/CashierEvent;-><init>(Lcashier/data/CashierInput;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "refresh_cashier_info_key"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcashier/util/CashierBus;->f(Lcashier/util/CashierBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 3
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v1, p0, Lcashier/quickpay/QuickMethodManager$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    new-instance v6, Lcashier/quickpay/QuickMethodManager$1$1;

    invoke-direct {v6, v1}, Lcashier/quickpay/QuickMethodManager$1$1;-><init>(Lcashier/quickpay/QuickMethodManager;)V

    new-instance v7, Lcashier/quickpay/QuickMethodManager$1$2;

    iget-object v0, p0, Lcashier/quickpay/QuickMethodManager$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-direct {v7, v0, p1}, Lcashier/quickpay/QuickMethodManager$1$2;-><init>(Lcashier/quickpay/QuickMethodManager;Lorg/json/JSONObject;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v5, "key_from_add_money"

    invoke-static/range {v1 .. v9}, Lcashier/quickpay/QuickMethodManager;->j(Lcashier/quickpay/QuickMethodManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method
