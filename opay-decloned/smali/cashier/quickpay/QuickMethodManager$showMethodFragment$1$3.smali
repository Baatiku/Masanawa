.class final Lcashier/quickpay/QuickMethodManager$showMethodFragment$1$3;
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
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
    iput-object p1, p0, Lcashier/quickpay/QuickMethodManager$showMethodFragment$1$3;->this$0:Lcashier/quickpay/QuickMethodManager;

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

    invoke-virtual {p0, p1, p2}, Lcashier/quickpay/QuickMethodManager$showMethodFragment$1$3;->invoke(Lcashier/data/PaymentItem;Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcashier/data/PaymentItem;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcashier/data/PaymentItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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

    const-string p1, "list"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcashier/quickpay/QuickMethodManager$showMethodFragment$1$3;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-static {p1}, Lcashier/quickpay/QuickMethodManager;->d(Lcashier/quickpay/QuickMethodManager;)Lcashier/model/CashierViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->p0()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcashier/quickpay/QuickMethodManager$showMethodFragment$1$3;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-static {p1, p2}, Lcashier/quickpay/QuickMethodManager;->e(Lcashier/quickpay/QuickMethodManager;Ljava/util/List;)V

    :cond_0
    return-void
.end method
