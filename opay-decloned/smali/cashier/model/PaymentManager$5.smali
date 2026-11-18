.class final Lcashier/model/PaymentManager$5;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/model/PaymentManager;-><init>(Lag8;Lcashier/model/CashierViewModel;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcashier/model/PaymentManager$5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcashier/data/CashierOrderResult;",
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
        "it",
        "Lcashier/data/CashierOrderResult;",
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
.field final synthetic this$0:Lcashier/model/PaymentManager;


# direct methods
.method public constructor <init>(Lcashier/model/PaymentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/model/PaymentManager$5;->this$0:Lcashier/model/PaymentManager;

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
    check-cast p1, Lcashier/data/CashierOrderResult;

    invoke-virtual {p0, p1}, Lcashier/model/PaymentManager$5;->invoke(Lcashier/data/CashierOrderResult;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcashier/data/CashierOrderResult;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasePaymentFragment wsStatus observe, it = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcashier/data/CashierOrderResult;->c()Lcashier/data/CashierStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lcashier/data/CashierOrderResult;->c()Lcashier/data/CashierStatus;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcashier/model/PaymentManager$5$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    iget-object p1, p0, Lcashier/model/PaymentManager$5;->this$0:Lcashier/model/PaymentManager;

    invoke-static {p1, v1, v1}, Lcashier/model/PaymentManager;->i(Lcashier/model/PaymentManager;ZZ)V

    goto :goto_2

    .line 5
    :cond_3
    iget-object v0, p0, Lcashier/model/PaymentManager$5;->this$0:Lcashier/model/PaymentManager;

    invoke-virtual {p1}, Lcashier/data/CashierOrderResult;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcashier/data/CashierOrderResult;->a()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, v2, p1, v1}, Lcashier/model/PaymentManager;->g(Lcashier/model/PaymentManager;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    :goto_2
    return-void
.end method
