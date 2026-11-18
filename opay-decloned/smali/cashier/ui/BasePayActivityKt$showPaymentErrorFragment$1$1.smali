.class final Lcashier/ui/BasePayActivityKt$showPaymentErrorFragment$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BasePayActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/ui/BasePayActivityKt;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "retry",
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
.field final synthetic $cancelCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $code:Ljava/lang/String;

.field final synthetic $message:Ljava/lang/String;

.field final synthetic $retryCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcashier/ui/BasePayActivityKt$showPaymentErrorFragment$1$1;->$code:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcashier/ui/BasePayActivityKt$showPaymentErrorFragment$1$1;->$retryCallback:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-object p3, p0, Lcashier/ui/BasePayActivityKt$showPaymentErrorFragment$1$1;->$message:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcashier/ui/BasePayActivityKt$showPaymentErrorFragment$1$1;->$cancelCallback:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcashier/ui/BasePayActivityKt$showPaymentErrorFragment$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 2
    const-string v4, "errorMsg"

    const-string v5, "Opencashier"

    const-string v6, "error_type"

    const-string v7, "errorCode"

    if-eqz p1, :cond_0

    sget-object p1, Lcashier/ui/BasePayActivity;->b:Lcashier/ui/BasePayActivity$Companion;

    invoke-virtual {p1}, Lcashier/ui/BasePayActivity$Companion;->a()Ljava/util/List;

    move-result-object p1

    iget-object v8, p0, Lcashier/ui/BasePayActivityKt$showPaymentErrorFragment$1$1;->$code:Ljava/lang/String;

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcashier/ui/BasePayActivityKt$showPaymentErrorFragment$1$1;->$retryCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    sget-object v8, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 5
    iget-object p1, p0, Lcashier/ui/BasePayActivityKt$showPaymentErrorFragment$1$1;->$code:Ljava/lang/String;

    invoke-static {v7, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 6
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 7
    iget-object v6, p0, Lcashier/ui/BasePayActivityKt$showPaymentErrorFragment$1$1;->$message:Ljava/lang/String;

    invoke-static {v4, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    new-array v10, v3, [Lkotlin/Pair;

    aput-object p1, v10, v2

    aput-object v5, v10, v1

    aput-object v4, v10, v0

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 8
    const-string v9, "COMMON_pay_window_retry_click"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 10
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 11
    iget-object v6, p0, Lcashier/ui/BasePayActivityKt$showPaymentErrorFragment$1$1;->$code:Ljava/lang/String;

    invoke-static {v7, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 12
    iget-object v7, p0, Lcashier/ui/BasePayActivityKt$showPaymentErrorFragment$1$1;->$message:Ljava/lang/String;

    invoke-static {v4, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    new-array v3, v3, [Lkotlin/Pair;

    aput-object v5, v3, v2

    aput-object v6, v3, v1

    aput-object v4, v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 13
    const-string v1, "COMMON_pay_window_retry_close_click"

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, v3

    move-object v3, v6

    invoke-static/range {v0 .. v5}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lcashier/ui/BasePayActivityKt$showPaymentErrorFragment$1$1;->$cancelCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
