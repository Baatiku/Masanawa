.class final Lcashier/ui/PayFailRetryFragment$onViewCreated$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PayFailRetryFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/ui/PayFailRetryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcashier/ui/PayFailRetryFragment;


# direct methods
.method public constructor <init>(Lcashier/ui/PayFailRetryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$2;->this$0:Lcashier/ui/PayFailRetryFragment;

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
    invoke-virtual {p0}, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$2;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-static {v0}, Lcashier/ui/PayFailRetryFragment;->H(Lcashier/ui/PayFailRetryFragment;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/data/FailedInfo;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "13037"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$2;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-static {v0}, Lcashier/ui/PayFailRetryFragment;->H(Lcashier/ui/PayFailRetryFragment;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcashier/SchemeType;->HISTORY:Lcashier/SchemeType;

    const-string v2, "otravel://balance/entrance"

    sget-object v3, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$2$1;->INSTANCE:Lcashier/ui/PayFailRetryFragment$onViewCreated$1$2$1;

    invoke-interface {v0, v1, v2, v3}, Lcashier/CashierDelegate;->openScheme(Lcashier/SchemeType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 5
    :cond_0
    const-string v1, "30010"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$2;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-static {v0}, Lcashier/ui/PayFailRetryFragment;->H(Lcashier/ui/PayFailRetryFragment;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-static {v0}, Lcashier/util/UtilsKt;->h(Lcashier/model/CashierViewModel;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$2;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-static {v0}, Lcashier/ui/PayFailRetryFragment;->H(Lcashier/ui/PayFailRetryFragment;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-static {v0}, Lcashier/util/UtilsKt;->i(Lcashier/model/CashierViewModel;)V

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$2;->this$0:Lcashier/ui/PayFailRetryFragment;

    .line 9
    invoke-static {v0}, Lcashier/ui/PayFailRetryFragment;->G(Lcashier/ui/PayFailRetryFragment;)Lv8b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    iget-object v1, v1, Lv8b;->f:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    const-string v2, "COMMON_payment_blocked_button_click"

    invoke-static {v0, v2, v1}, Lcashier/ui/PayFailRetryFragment;->E(Lcashier/ui/PayFailRetryFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$2;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-static {v0}, Lcashier/ui/PayFailRetryFragment;->H(Lcashier/ui/PayFailRetryFragment;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    move-result-object v0

    iget-object v1, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$2;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-virtual {v1}, Lcashier/ui/PayFailRetryFragment;->M()Lhm6;

    move-result-object v1

    iget-object v2, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$2;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-static {v2}, Lcashier/ui/PayFailRetryFragment;->H(Lcashier/ui/PayFailRetryFragment;)Lcashier/model/CashierViewModel;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcashier/net/IPaymentApi;->onFailButtonClick(Lhm6;Landroidx/fragment/app/DialogFragment;Lcashier/model/CashierViewModel;)V

    return-void
.end method
