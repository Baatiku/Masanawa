.class final Lcashier/adapter/PayMethodAdapter$bindCombine$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentMethodAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/adapter/PayMethodAdapter;->u(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/PaymentItem;)V
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
.field final synthetic $data:Lcashier/data/PaymentItem;

.field final synthetic this$0:Lcashier/adapter/PayMethodAdapter;


# direct methods
.method public constructor <init>(Lcashier/adapter/PayMethodAdapter;Lcashier/data/PaymentItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/adapter/PayMethodAdapter$bindCombine$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcashier/adapter/PayMethodAdapter$bindCombine$1;->$data:Lcashier/data/PaymentItem;

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
    invoke-virtual {p0}, Lcashier/adapter/PayMethodAdapter$bindCombine$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 2
    sget-object v0, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "COMMON_pay_window_available_click"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$bindCombine$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    iget-object v1, p0, Lcashier/adapter/PayMethodAdapter$bindCombine$1;->$data:Lcashier/data/PaymentItem;

    invoke-virtual {v1}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcashier/data/PayChannelItem;->q()Lcashier/data/QuestionMark;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcashier/adapter/PayMethodAdapter;->q(Lcashier/adapter/PayMethodAdapter;Lcashier/data/QuestionMark;)V

    return-void
.end method
