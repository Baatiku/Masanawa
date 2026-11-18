.class final Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3;
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
    iput-object p1, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3;->this$0:Lcashier/ui/PayFailRetryFragment;

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
    invoke-virtual {p0}, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3;->this$0:Lcashier/ui/PayFailRetryFragment;

    .line 3
    invoke-static {v0}, Lcashier/ui/PayFailRetryFragment;->G(Lcashier/ui/PayFailRetryFragment;)Lv8b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    iget-object v1, v1, Lv8b;->f:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    const-string v2, "COMMON_payment_blocked_button_click"

    invoke-static {v0, v2, v1}, Lcashier/ui/PayFailRetryFragment;->E(Lcashier/ui/PayFailRetryFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-static {v0}, Lcashier/ui/PayFailRetryFragment;->H(Lcashier/ui/PayFailRetryFragment;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcashier/BindCardType;->BIND_CARD:Lcashier/BindCardType;

    new-instance v2, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3$1;

    iget-object v3, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-direct {v2, v3}, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3$1;-><init>(Lcashier/ui/PayFailRetryFragment;)V

    invoke-interface {v0, v1, v2}, Lcashier/CashierDelegate;->bindCardOrAccount(Lcashier/BindCardType;Lkotlin/jvm/functions/Function1;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-static {v0}, Lcashier/ui/PayFailRetryFragment;->H(Lcashier/ui/PayFailRetryFragment;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    move-result-object v0

    iget-object v1, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-interface {v0, v1}, Lcashier/net/IPaymentApi;->onFailAddCardClick(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method
