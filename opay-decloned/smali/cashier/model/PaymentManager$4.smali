.class final Lcashier/model/PaymentManager$4;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/model/PaymentManager;-><init>(Lag8;Lcashier/model/CashierViewModel;Lkotlin/jvm/functions/Function1;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcashier/VerifyResult;",
        "kotlin.jvm.PlatformType",
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
    iput-object p1, p0, Lcashier/model/PaymentManager$4;->this$0:Lcashier/model/PaymentManager;

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

    invoke-virtual {p0, p1}, Lcashier/model/PaymentManager$4;->invoke(Lcashier/VerifyResult;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcashier/VerifyResult;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcashier/VerifyResult;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcashier/model/PaymentManager$4;->this$0:Lcashier/model/PaymentManager;

    invoke-static {v0}, Lcashier/model/PaymentManager;->e(Lcashier/model/PaymentManager;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/data/ConfirmPayReq;->d()Lcashier/data/ValidPoolInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcashier/VerifyResult;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcashier/data/ValidPoolInfo;->c(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcashier/model/PaymentManager$4;->this$0:Lcashier/model/PaymentManager;

    invoke-static {v0}, Lcashier/model/PaymentManager;->e(Lcashier/model/PaymentManager;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/data/ConfirmPayReq;->d()Lcashier/data/ValidPoolInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcashier/VerifyResult;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcashier/data/ValidPoolInfo;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcashier/model/PaymentManager$4;->this$0:Lcashier/model/PaymentManager;

    invoke-static {v0}, Lcashier/model/PaymentManager;->e(Lcashier/model/PaymentManager;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/data/ConfirmPayReq;->d()Lcashier/data/ValidPoolInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcashier/VerifyResult;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcashier/data/ValidPoolInfo;->b(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcashier/model/PaymentManager$4;->this$0:Lcashier/model/PaymentManager;

    invoke-static {p1}, Lcashier/model/PaymentManager;->e(Lcashier/model/PaymentManager;)Lcashier/model/CashierViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcashier/data/ConfirmPayReq;->s(Ljava/lang/Boolean;)V

    .line 7
    iget-object p1, p0, Lcashier/model/PaymentManager$4;->this$0:Lcashier/model/PaymentManager;

    invoke-static {p1}, Lcashier/model/PaymentManager;->h(Lcashier/model/PaymentManager;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcashier/model/PaymentManager$4;->this$0:Lcashier/model/PaymentManager;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcashier/model/PaymentManager;->f(Lcashier/model/PaymentManager;Lcashier/VerifyResult;)V

    :goto_0
    return-void
.end method
