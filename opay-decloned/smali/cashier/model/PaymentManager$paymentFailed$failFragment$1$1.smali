.class final Lcashier/model/PaymentManager$paymentFailed$failFragment$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentManager.kt"

# interfaces
.implements Lhm6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/model/PaymentManager;->D(Ljava/lang/String;Ljava/lang/Boolean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lhm6<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "code",
        "",
        "apiScene",
        "",
        "invoke",
        "(ZLjava/lang/String;Ljava/lang/Integer;)V"
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
    iput-object p1, p0, Lcashier/model/PaymentManager$paymentFailed$failFragment$1$1;->this$0:Lcashier/model/PaymentManager;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcashier/model/PaymentManager$paymentFailed$failFragment$1$1;->invoke(ZLjava/lang/String;Ljava/lang/Integer;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ZLjava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p1, "code"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "neterror"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3
    :cond_1
    :goto_0
    const-string p1, "30001"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    :cond_2
    iget-object p1, p0, Lcashier/model/PaymentManager$paymentFailed$failFragment$1$1;->this$0:Lcashier/model/PaymentManager;

    sget-object p2, Lcashier/data/PayStatus;->NORMAL:Lcashier/data/PayStatus;

    invoke-static {p1, p2}, Lcashier/model/PaymentManager;->n(Lcashier/model/PaymentManager;Lcashier/data/PayStatus;)V

    .line 5
    iget-object p1, p0, Lcashier/model/PaymentManager$paymentFailed$failFragment$1$1;->this$0:Lcashier/model/PaymentManager;

    invoke-virtual {p1}, Lcashier/model/PaymentManager;->Z()V

    goto :goto_2

    .line 6
    :cond_3
    iget-object p1, p0, Lcashier/model/PaymentManager$paymentFailed$failFragment$1$1;->this$0:Lcashier/model/PaymentManager;

    sget-object p2, Lcashier/data/PayStatus;->ORDER:Lcashier/data/PayStatus;

    invoke-static {p1, p2}, Lcashier/model/PaymentManager;->n(Lcashier/model/PaymentManager;Lcashier/data/PayStatus;)V

    .line 7
    iget-object p1, p0, Lcashier/model/PaymentManager$paymentFailed$failFragment$1$1;->this$0:Lcashier/model/PaymentManager;

    invoke-static {p1}, Lcashier/model/PaymentManager;->e(Lcashier/model/PaymentManager;)Lcashier/model/CashierViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->b0()Lcashier/util/PayOrderStatusPolling;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcashier/model/PaymentManager$paymentFailed$failFragment$1$1;->this$0:Lcashier/model/PaymentManager;

    invoke-static {p2}, Lcashier/model/PaymentManager;->e(Lcashier/model/PaymentManager;)Lcashier/model/CashierViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcashier/data/OrderInfo;->a()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_5

    const-string p2, ""

    :cond_5
    const/4 p3, 0x1

    .line 9
    invoke-virtual {p1, p2, p3}, Lcashier/util/PayOrderStatusPolling;->g(Ljava/lang/String;Z)V

    :goto_2
    return-void
.end method
