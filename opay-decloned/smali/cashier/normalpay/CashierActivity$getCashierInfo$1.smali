.class final Lcashier/normalpay/CashierActivity$getCashierInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CashierActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/normalpay/CashierActivity;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcashier/net/ResultData<",
        "+",
        "Lcashier/data/CashierInfoRsp;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001e\u0010\u0002\u001a\u001a\u0012\u0006\u0008\u0001\u0012\u00020\u0004 \u0005*\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcashier/net/ResultData;",
        "Lcashier/data/CashierInfoRsp;",
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
.field final synthetic this$0:Lcashier/normalpay/CashierActivity;


# direct methods
.method public constructor <init>(Lcashier/normalpay/CashierActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/normalpay/CashierActivity$getCashierInfo$1;->this$0:Lcashier/normalpay/CashierActivity;

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
    check-cast p1, Lcashier/net/ResultData;

    invoke-virtual {p0, p1}, Lcashier/normalpay/CashierActivity$getCashierInfo$1;->invoke(Lcashier/net/ResultData;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcashier/net/ResultData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/net/ResultData<",
            "+",
            "Lcashier/data/CashierInfoRsp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcashier/data/CashierInfoRsp;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcashier/data/CashierInfoRsp;->v(Ljava/lang/Long;)V

    :goto_1
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcashier/net/ResultData;->d()Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_2
    const-string v1, "SUCCESS"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcashier/normalpay/CashierActivity$getCashierInfo$1;->this$0:Lcashier/normalpay/CashierActivity;

    invoke-virtual {v0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcashier/normalpay/CashierActivity$getCashierInfo$1;->this$0:Lcashier/normalpay/CashierActivity;

    invoke-virtual {v0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcashier/data/CashierInfoRsp;

    invoke-virtual {v0, p1}, Lcashier/model/CashierViewModel;->F0(Lcashier/data/CashierInfoRsp;)V

    .line 7
    sget-object p1, Lcashier/normalpay/CashierFragment;->s:Lcashier/normalpay/CashierFragment$Companion;

    invoke-virtual {p1}, Lcashier/normalpay/CashierFragment$Companion;->a()Lcashier/normalpay/CashierFragment;

    move-result-object p1

    iget-object v0, p0, Lcashier/normalpay/CashierActivity$getCashierInfo$1;->this$0:Lcashier/normalpay/CashierActivity;

    .line 8
    sget v1, Lteam/opay/pay/cashier/R$id;->fragment_content:I

    invoke-static {v0, v1, p1}, Lcashier/util/UtilsKt;->m(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 9
    :cond_3
    iget-object v0, p0, Lcashier/normalpay/CashierActivity$getCashierInfo$1;->this$0:Lcashier/normalpay/CashierActivity;

    invoke-virtual {v0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcashier/normalpay/CashierActivity$getCashierInfo$1;->this$0:Lcashier/normalpay/CashierActivity;

    .line 11
    invoke-virtual {p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_4

    move-object v1, v2

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcashier/net/ResultData;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v3

    .line 13
    :goto_2
    new-instance v3, Lcashier/normalpay/CashierActivity$getCashierInfo$1$2;

    iget-object v4, p0, Lcashier/normalpay/CashierActivity$getCashierInfo$1;->this$0:Lcashier/normalpay/CashierActivity;

    invoke-direct {v3, v4}, Lcashier/normalpay/CashierActivity$getCashierInfo$1$2;-><init>(Lcashier/normalpay/CashierActivity;)V

    new-instance v4, Lcashier/normalpay/CashierActivity$getCashierInfo$1$3;

    iget-object v5, p0, Lcashier/normalpay/CashierActivity$getCashierInfo$1;->this$0:Lcashier/normalpay/CashierActivity;

    invoke-direct {v4, v5, p1}, Lcashier/normalpay/CashierActivity$getCashierInfo$1$3;-><init>(Lcashier/normalpay/CashierActivity;Lcashier/net/ResultData;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcashier/ui/BasePayActivityKt;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    :goto_3
    return-void
.end method
