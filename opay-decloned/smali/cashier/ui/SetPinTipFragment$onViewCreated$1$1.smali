.class final Lcashier/ui/SetPinTipFragment$onViewCreated$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SetPinTipFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/ui/SetPinTipFragment$onViewCreated$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcashier/VerifyResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcashier/VerifyResult;",
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
    iput-object p1, p0, Lcashier/ui/SetPinTipFragment$onViewCreated$1$1;->this$0:Lcashier/ui/SetPinTipFragment;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcashier/VerifyResult;

    invoke-virtual {p0, p1}, Lcashier/ui/SetPinTipFragment$onViewCreated$1$1;->invoke(Lcashier/VerifyResult;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcashier/VerifyResult;)V
    .locals 1
    .param p1    # Lcashier/VerifyResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcashier/VerifyResult;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcashier/VerifyResult;->d()Lcashier/PoolType;

    move-result-object p1

    sget-object v0, Lcashier/PoolType;->SET_PAYMENT_PIN:Lcashier/PoolType;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcashier/ui/SetPinTipFragment$onViewCreated$1$1;->this$0:Lcashier/ui/SetPinTipFragment;

    invoke-static {p1}, Lcashier/ui/SetPinTipFragment;->G(Lcashier/ui/SetPinTipFragment;)Lcashier/model/CashierViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->h0()Lcashier/data/CashierInfoRsp;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcashier/data/CashierInfoRsp;->u(Ljava/lang/Boolean;)V

    .line 4
    :goto_0
    sget-object p1, Lcashier/util/CashierBus;->a:Lcashier/util/CashierBus;

    const-string v0, "set_pay_pin_success_key"

    invoke-virtual {p1, v0}, Lcashier/util/CashierBus;->d(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcashier/ui/SetPinTipFragment$onViewCreated$1$1;->this$0:Lcashier/ui/SetPinTipFragment;

    invoke-virtual {p1}, Lcashier/ui/BaseDFragment;->dismiss()V

    :cond_1
    return-void
.end method
