.class final Lcashier/ui/PayWebAuthFragment$onBackPressed$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PayWebAuthFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/ui/PayWebAuthFragment;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "confirm",
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
.field final synthetic this$0:Lcashier/ui/PayWebAuthFragment;


# direct methods
.method public constructor <init>(Lcashier/ui/PayWebAuthFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/ui/PayWebAuthFragment$onBackPressed$1$1$1;->this$0:Lcashier/ui/PayWebAuthFragment;

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
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcashier/ui/PayWebAuthFragment$onBackPressed$1$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcashier/ui/PayWebAuthFragment$onBackPressed$1$1$1;->this$0:Lcashier/ui/PayWebAuthFragment;

    invoke-static {p1}, Lcashier/ui/PayWebAuthFragment;->K(Lcashier/ui/PayWebAuthFragment;)Lcashier/model/CashierViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    move-result-object p1

    iget-object v0, p0, Lcashier/ui/PayWebAuthFragment$onBackPressed$1$1$1;->this$0:Lcashier/ui/PayWebAuthFragment;

    invoke-static {v0}, Lcashier/ui/PayWebAuthFragment;->K(Lcashier/ui/PayWebAuthFragment;)Lcashier/model/CashierViewModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcashier/net/IPaymentApi;->onDialogClose(Landroidx/fragment/app/DialogFragment;Lcashier/model/CashierViewModel;Z)V

    .line 3
    iget-object p1, p0, Lcashier/ui/PayWebAuthFragment$onBackPressed$1$1$1;->this$0:Lcashier/ui/PayWebAuthFragment;

    invoke-static {p1, v2}, Lcashier/ui/PayWebAuthFragment;->G(Lcashier/ui/PayWebAuthFragment;Z)V

    :cond_0
    return-void
.end method
