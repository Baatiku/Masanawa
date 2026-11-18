.class final Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PayFailRetryFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/json/JSONObject;",
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
        "json",
        "Lorg/json/JSONObject;",
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
    iput-object p1, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3$1;->this$0:Lcashier/ui/PayFailRetryFragment;

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
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3$1;->invoke(Lorg/json/JSONObject;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3$1;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-static {v0}, Lcashier/ui/PayFailRetryFragment;->H(Lcashier/ui/PayFailRetryFragment;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->k0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3$1;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-static {p1}, Lcashier/ui/PayFailRetryFragment;->H(Lcashier/ui/PayFailRetryFragment;)Lcashier/model/CashierViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    move-result-object p1

    iget-object v0, p0, Lcashier/ui/PayFailRetryFragment$onViewCreated$1$3$1;->this$0:Lcashier/ui/PayFailRetryFragment;

    invoke-interface {p1, v0}, Lcashier/net/IPaymentApi;->onFailAddCardCallback(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method
