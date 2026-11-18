.class final Lcashier/normalpay/PayComplianceDialogFragment$initData$8;
.super Lkotlin/jvm/internal/Lambda;
.source "PayComplianceDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/normalpay/PayComplianceDialogFragment;->Q()V
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
.field final synthetic this$0:Lcashier/normalpay/PayComplianceDialogFragment;


# direct methods
.method public constructor <init>(Lcashier/normalpay/PayComplianceDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/normalpay/PayComplianceDialogFragment$initData$8;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

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
    invoke-virtual {p0}, Lcashier/normalpay/PayComplianceDialogFragment$initData$8;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcashier/normalpay/PayComplianceDialogFragment$initData$8;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

    invoke-static {v0}, Lcashier/normalpay/PayComplianceDialogFragment;->J(Lcashier/normalpay/PayComplianceDialogFragment;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->o0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcashier/normalpay/PayComplianceDialogFragment$initData$8;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

    invoke-static {v0}, Lcashier/normalpay/PayComplianceDialogFragment;->J(Lcashier/normalpay/PayComplianceDialogFragment;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcashier/SchemeType;->COMPLIANCE:Lcashier/SchemeType;

    .line 5
    iget-object v2, p0, Lcashier/normalpay/PayComplianceDialogFragment$initData$8;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

    invoke-static {v2}, Lcashier/normalpay/PayComplianceDialogFragment;->H(Lcashier/normalpay/PayComplianceDialogFragment;)Lcashier/model/PayComplianceViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcashier/model/PayComplianceViewModel;->s()Ljava/lang/String;

    move-result-object v2

    .line 6
    sget-object v3, Lcashier/normalpay/PayComplianceDialogFragment$initData$8$1;->INSTANCE:Lcashier/normalpay/PayComplianceDialogFragment$initData$8$1;

    invoke-interface {v0, v1, v2, v3}, Lcashier/CashierDelegate;->openScheme(Lcashier/SchemeType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcashier/normalpay/PayComplianceDialogFragment$initData$8;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

    invoke-virtual {v0}, Lcashier/ui/BaseDFragment;->dismiss()V

    .line 8
    sget-object v1, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 9
    iget-object v0, p0, Lcashier/normalpay/PayComplianceDialogFragment$initData$8;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

    invoke-virtual {v0}, Lcashier/normalpay/PayComplianceDialogFragment;->N()Lcashier/normalpay/ComplianceDialogInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcashier/normalpay/ComplianceDialogInfo;->r()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v2, "pop_type"

    invoke-static {v2, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lcashier/normalpay/PayComplianceDialogFragment$initData$8;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

    invoke-static {v2}, Lcashier/normalpay/PayComplianceDialogFragment;->I(Lcashier/normalpay/PayComplianceDialogFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "page_type"

    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcashier/normalpay/PayComplianceDialogFragment$initData$8;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

    invoke-static {v3}, Lcashier/normalpay/PayComplianceDialogFragment;->K(Lcashier/normalpay/PayComplianceDialogFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "is_bouns"

    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lkotlin/Pair;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 12
    const-string v2, "checkout_kyc_pop_downgrade_click"

    const/4 v0, 0x0

    move-object v3, v4

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    return-void
.end method
