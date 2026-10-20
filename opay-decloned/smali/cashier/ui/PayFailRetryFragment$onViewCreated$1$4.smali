.class final Lcashier/ui/PayFailRetryFragment$onViewCreated$1$4;
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
.field final synthetic $posRetry:Z

.field final synthetic this$0:Lcashier/ui/PayFailRetryFragment;


# direct methods
.method public constructor <init>(Lcashier/ui/PayFailRetryFragment;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$4;->this$0:Lcashier/ui/PayFailRetryFragment;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$4;->$posRetry:Z

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
    invoke-virtual {p0}, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$4;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$4;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-static {v0}, Lcashier/ui/PayFailRetryFragment;->G(Lcashier/ui/PayFailRetryFragment;)Lv8b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    iget-object v1, v1, Lv8b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COMMON_payment_blocked_button_click"

    invoke-static {v0, v2, v1}, Lcashier/ui/PayFailRetryFragment;->E(Lcashier/ui/PayFailRetryFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$4;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-virtual {v0}, Lcashier/ui/PayFailRetryFragment;->M()Lhm6;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v1, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$4;->$posRetry:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$4;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-static {v2}, Lcashier/ui/PayFailRetryFragment;->H(Lcashier/ui/PayFailRetryFragment;)Lcashier/model/CashierViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcashier/data/FailedInfo;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 6
    :cond_0
    iget-object v3, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$4;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-static {v3}, Lcashier/ui/PayFailRetryFragment;->H(Lcashier/ui/PayFailRetryFragment;)Lcashier/model/CashierViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcashier/data/FailedInfo;->a()Ljava/lang/Integer;

    move-result-object v3

    .line 7
    invoke-interface {v0, v1, v2, v3}, Lhm6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    iget-object v0, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$4;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-static {v0}, Lcashier/ui/PayFailRetryFragment;->F(Lcashier/ui/PayFailRetryFragment;)V

    return-void
.end method
