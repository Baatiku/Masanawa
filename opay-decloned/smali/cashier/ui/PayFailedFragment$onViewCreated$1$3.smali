.class final Lcashier/ui/PayFailedFragment$onViewCreated$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "PayFailedFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/ui/PayFailedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic $freeze:Z

.field final synthetic $upgrade:Z

.field final synthetic this$0:Lcashier/ui/PayFailedFragment;


# direct methods
.method public constructor <init>(Lcashier/ui/PayFailedFragment;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/ui/PayFailedFragment$onViewCreated$1$3;->this$0:Lcashier/ui/PayFailedFragment;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcashier/ui/PayFailedFragment$onViewCreated$1$3;->$freeze:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lcashier/ui/PayFailedFragment$onViewCreated$1$3;->$upgrade:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcashier/ui/PayFailedFragment$onViewCreated$1$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 2
    sget-object v6, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 3
    iget-object v0, p0, Lcashier/ui/PayFailedFragment$onViewCreated$1$3;->this$0:Lcashier/ui/PayFailedFragment;

    invoke-static {v0}, Lcashier/ui/PayFailedFragment;->G(Lcashier/ui/PayFailedFragment;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/data/FailedInfo;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pay_code"

    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcashier/ui/PayFailedFragment$onViewCreated$1$3;->this$0:Lcashier/ui/PayFailedFragment;

    invoke-static {v1}, Lcashier/ui/PayFailedFragment;->G(Lcashier/ui/PayFailedFragment;)Lcashier/model/CashierViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/data/FailedInfo;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pay_msg"

    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcashier/ui/PayFailedFragment$onViewCreated$1$3;->this$0:Lcashier/ui/PayFailedFragment;

    invoke-static {v2}, Lcashier/ui/PayFailedFragment;->F(Lcashier/ui/PayFailedFragment;)Lp8b;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    iget-object v2, v2, Lp8b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "button"

    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 6
    const-string v1, "COMMON_pay_fail_window_click"

    const/4 v7, 0x0

    move-object v0, v6

    move-object v2, v3

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 7
    iget-boolean v0, p0, Lcashier/ui/PayFailedFragment$onViewCreated$1$3;->$freeze:Z

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcashier/ui/PayFailedFragment$onViewCreated$1$3;->this$0:Lcashier/ui/PayFailedFragment;

    invoke-static {v0}, Lcashier/ui/PayFailedFragment;->G(Lcashier/ui/PayFailedFragment;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-static {v0}, Lcashier/util/UtilsKt;->j(Lcashier/model/CashierViewModel;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 9
    const-string v1, "unfreeze_button_click"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcashier/ui/PayFailedFragment$onViewCreated$1$3;->$upgrade:Z

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcashier/ui/PayFailedFragment$onViewCreated$1$3;->this$0:Lcashier/ui/PayFailedFragment;

    invoke-virtual {v0}, Lcashier/ui/PayFailedFragment;->J()Ljava/lang/String;

    move-result-object v0

    const-string v1, "20100"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    const-string v0, "otravel://account/entrance/detail"

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, Lcashier/util/UtilsKt;->e()Ljava/lang/String;

    move-result-object v0

    .line 14
    :goto_0
    iget-object v1, p0, Lcashier/ui/PayFailedFragment$onViewCreated$1$3;->this$0:Lcashier/ui/PayFailedFragment;

    invoke-static {v1}, Lcashier/ui/PayFailedFragment;->G(Lcashier/ui/PayFailedFragment;)Lcashier/model/CashierViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 15
    sget-object v2, Lcashier/SchemeType;->KYC:Lcashier/SchemeType;

    .line 16
    sget-object v3, Lcashier/ui/PayFailedFragment$onViewCreated$1$3$1;->INSTANCE:Lcashier/ui/PayFailedFragment$onViewCreated$1$3$1;

    invoke-interface {v1, v2, v0, v3}, Lcashier/CashierDelegate;->openScheme(Lcashier/SchemeType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 17
    :cond_2
    :goto_1
    iget-object v0, p0, Lcashier/ui/PayFailedFragment$onViewCreated$1$3;->this$0:Lcashier/ui/PayFailedFragment;

    invoke-static {v0}, Lcashier/ui/PayFailedFragment;->H(Lcashier/ui/PayFailedFragment;)V

    .line 18
    iget-object v0, p0, Lcashier/ui/PayFailedFragment$onViewCreated$1$3;->this$0:Lcashier/ui/PayFailedFragment;

    invoke-static {v0}, Lcashier/ui/PayFailedFragment;->E(Lcashier/ui/PayFailedFragment;)V

    return-void
.end method
