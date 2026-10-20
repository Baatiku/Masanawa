.class final Lcashier/normalpay/PayCouponFragmentDialog$init$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PayCouponFragmentDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/normalpay/PayCouponFragmentDialog;->R()V
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
.field final synthetic this$0:Lcashier/normalpay/PayCouponFragmentDialog;


# direct methods
.method public constructor <init>(Lcashier/normalpay/PayCouponFragmentDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/normalpay/PayCouponFragmentDialog$init$1;->this$0:Lcashier/normalpay/PayCouponFragmentDialog;

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
    invoke-virtual {p0}, Lcashier/normalpay/PayCouponFragmentDialog$init$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcashier/normalpay/PayCouponFragmentDialog$init$1;->this$0:Lcashier/normalpay/PayCouponFragmentDialog;

    invoke-virtual {v0}, Lcashier/ui/BaseBSFragment;->dismiss()V

    .line 3
    sget-object v0, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    invoke-virtual {v0}, Lcashier/model/CashierViewModel$Companion;->d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "checkstand_voucher_list_page_Confirm_click"

    invoke-interface {v0, v2, v1}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcashier/normalpay/PayCouponFragmentDialog$init$1;->this$0:Lcashier/normalpay/PayCouponFragmentDialog;

    invoke-virtual {v0}, Lcashier/normalpay/PayCouponFragmentDialog;->O()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcashier/normalpay/PayCouponFragmentDialog$init$1;->this$0:Lcashier/normalpay/PayCouponFragmentDialog;

    invoke-static {v1}, Lcashier/normalpay/PayCouponFragmentDialog;->J(Lcashier/normalpay/PayCouponFragmentDialog;)Lcashier/data/Voucher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
