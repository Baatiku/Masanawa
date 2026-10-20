.class final Lcashier/model/PaymentManager$showKycAlertDialog$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/model/PaymentManager;->S(Z)V
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
        "show",
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
.field final synthetic this$0:Lcashier/model/PaymentManager;


# direct methods
.method public constructor <init>(Lcashier/model/PaymentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/model/PaymentManager$showKycAlertDialog$1$1;->this$0:Lcashier/model/PaymentManager;

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

    invoke-virtual {p0, p1}, Lcashier/model/PaymentManager$showKycAlertDialog$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcashier/model/PaymentManager$showKycAlertDialog$1$1;->this$0:Lcashier/model/PaymentManager;

    invoke-static {p1}, Lcashier/model/PaymentManager;->e(Lcashier/model/PaymentManager;)Lcashier/model/CashierViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Lcashier/SchemeType;->KYC:Lcashier/SchemeType;

    .line 4
    const-string v1, "otravel://account/entrance/detail"

    .line 5
    sget-object v2, Lcashier/model/PaymentManager$showKycAlertDialog$1$1$1;->INSTANCE:Lcashier/model/PaymentManager$showKycAlertDialog$1$1$1;

    invoke-interface {p1, v0, v1, v2}, Lcashier/CashierDelegate;->openScheme(Lcashier/SchemeType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcashier/model/PaymentManager$showKycAlertDialog$1$1;->this$0:Lcashier/model/PaymentManager;

    invoke-static {p1}, Lcashier/model/PaymentManager;->d(Lcashier/model/PaymentManager;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
