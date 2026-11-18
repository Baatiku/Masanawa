.class final Lcashier/quickpay/QuickMethodManager$showMethodFragment$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "QuickMethodManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/quickpay/QuickMethodManager;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcashier/data/PaymentItem;",
        "Ljava/util/List<",
        "+",
        "Lcashier/data/PaymentItem;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Lcashier/data/PaymentItem;",
        "list",
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
.field final synthetic this$0:Lcashier/quickpay/QuickMethodManager;


# direct methods
.method public constructor <init>(Lcashier/quickpay/QuickMethodManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/quickpay/QuickMethodManager$showMethodFragment$1$2;->this$0:Lcashier/quickpay/QuickMethodManager;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcashier/data/PaymentItem;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcashier/quickpay/QuickMethodManager$showMethodFragment$1$2;->invoke(Lcashier/data/PaymentItem;Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcashier/data/PaymentItem;Ljava/util/List;)V
    .locals 6
    .param p1    # Lcashier/data/PaymentItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/data/PaymentItem;",
            "Ljava/util/List<",
            "Lcashier/data/PaymentItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "list"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 3
    iget-object p1, p0, Lcashier/quickpay/QuickMethodManager$showMethodFragment$1$2;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-static {p1}, Lcashier/quickpay/QuickMethodManager;->d(Lcashier/quickpay/QuickMethodManager;)Lcashier/model/CashierViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->i0()Lcashier/data/PaymentItem;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcashier/data/PaymentItem;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const-string v2, "before_paychannel"

    invoke-static {v2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcashier/data/PaymentItem;

    .line 5
    invoke-virtual {v4}, Lcashier/data/PaymentItem;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    check-cast v3, Lcashier/data/PaymentItem;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcashier/data/PaymentItem;->d()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v2, "after_paychannel"

    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcashier/quickpay/QuickMethodManager$showMethodFragment$1$2;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-static {v2}, Lcashier/quickpay/QuickMethodManager;->d(Lcashier/quickpay/QuickMethodManager;)Lcashier/model/CashierViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->p0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "is_payment_process"

    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v1, v3, p1

    const/4 p1, 0x2

    aput-object v2, v3, p1

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 7
    const-string v1, "COMMON_pay_window_change_paychannel_click"

    const/4 p1, 0x0

    move-object v2, v3

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcashier/quickpay/QuickMethodManager$showMethodFragment$1$2;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-static {p1, p2}, Lcashier/quickpay/QuickMethodManager;->e(Lcashier/quickpay/QuickMethodManager;Ljava/util/List;)V

    return-void
.end method
