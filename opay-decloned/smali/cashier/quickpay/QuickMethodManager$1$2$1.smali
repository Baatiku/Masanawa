.class final Lcashier/quickpay/QuickMethodManager$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "QuickMethodManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/quickpay/QuickMethodManager$1$2;->invoke(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic $json:Lorg/json/JSONObject;

.field final synthetic this$0:Lcashier/quickpay/QuickMethodManager;


# direct methods
.method public constructor <init>(Lcashier/quickpay/QuickMethodManager;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/quickpay/QuickMethodManager$1$2$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcashier/quickpay/QuickMethodManager$1$2$1;->$json:Lorg/json/JSONObject;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcashier/quickpay/QuickMethodManager$1$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcashier/quickpay/QuickMethodManager$1$2$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-static {v0}, Lcashier/quickpay/QuickMethodManager;->d(Lcashier/quickpay/QuickMethodManager;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->k0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcashier/quickpay/QuickMethodManager$1$2$1;->$json:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
