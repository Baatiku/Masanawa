.class final Lcashier/ui/SetPinTipFragment$onViewCreated$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SetPinTipFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/ui/SetPinTipFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcashier/ui/SetPinTipFragment;


# direct methods
.method public constructor <init>(Lcashier/ui/SetPinTipFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/ui/SetPinTipFragment$onViewCreated$1;->this$0:Lcashier/ui/SetPinTipFragment;

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
    invoke-virtual {p0}, Lcashier/ui/SetPinTipFragment$onViewCreated$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcashier/ui/SetPinTipFragment$onViewCreated$1;->this$0:Lcashier/ui/SetPinTipFragment;

    invoke-static {v0}, Lcashier/ui/SetPinTipFragment;->G(Lcashier/ui/SetPinTipFragment;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcashier/PoolType;->SET_PAYMENT_PIN:Lcashier/PoolType;

    new-instance v4, Lcashier/ui/SetPinTipFragment$onViewCreated$1$1;

    iget-object v0, p0, Lcashier/ui/SetPinTipFragment$onViewCreated$1;->this$0:Lcashier/ui/SetPinTipFragment;

    invoke-direct {v4, v0}, Lcashier/ui/SetPinTipFragment$onViewCreated$1$1;-><init>(Lcashier/ui/SetPinTipFragment;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcashier/CashierDelegate$a;->c(Lcashier/CashierDelegate;Lcashier/PoolType;Lcashier/PoolResponse;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
