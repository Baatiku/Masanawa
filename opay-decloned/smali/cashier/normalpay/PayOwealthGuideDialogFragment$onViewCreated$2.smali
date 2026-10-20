.class final Lcashier/normalpay/PayOwealthGuideDialogFragment$onViewCreated$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PayOwealthGuideDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/normalpay/PayOwealthGuideDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic $data:Lcashier/data/OwealthOpenConfig;

.field final synthetic this$0:Lcashier/normalpay/PayOwealthGuideDialogFragment;


# direct methods
.method public constructor <init>(Lcashier/data/OwealthOpenConfig;Lcashier/normalpay/PayOwealthGuideDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/normalpay/PayOwealthGuideDialogFragment$onViewCreated$2;->$data:Lcashier/data/OwealthOpenConfig;

    .line 2
    .line 3
    iput-object p2, p0, Lcashier/normalpay/PayOwealthGuideDialogFragment$onViewCreated$2;->this$0:Lcashier/normalpay/PayOwealthGuideDialogFragment;

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
    invoke-virtual {p0}, Lcashier/normalpay/PayOwealthGuideDialogFragment$onViewCreated$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 2
    sget-object v0, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    iget-object v1, p0, Lcashier/normalpay/PayOwealthGuideDialogFragment$onViewCreated$2;->$data:Lcashier/data/OwealthOpenConfig;

    invoke-virtual {v1}, Lcashier/data/OwealthOpenConfig;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "COMMON_pay_window_owealth_guide_close_click"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcashier/normalpay/PayOwealthGuideDialogFragment$onViewCreated$2;->this$0:Lcashier/normalpay/PayOwealthGuideDialogFragment;

    iget-object v1, p0, Lcashier/normalpay/PayOwealthGuideDialogFragment$onViewCreated$2;->$data:Lcashier/data/OwealthOpenConfig;

    invoke-virtual {v1}, Lcashier/data/OwealthOpenConfig;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-static {v0, v1}, Lcashier/normalpay/PayOwealthGuideDialogFragment;->F(Lcashier/normalpay/PayOwealthGuideDialogFragment;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcashier/normalpay/PayOwealthGuideDialogFragment$onViewCreated$2;->this$0:Lcashier/normalpay/PayOwealthGuideDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
