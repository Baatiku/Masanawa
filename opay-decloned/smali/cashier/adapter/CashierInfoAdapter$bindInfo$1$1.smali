.class final Lcashier/adapter/CashierInfoAdapter$bindInfo$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CashierInfoAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/adapter/CashierInfoAdapter;->p(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/PaymentInfo;)V
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
.field final synthetic $data:Lcashier/data/PaymentInfo;


# direct methods
.method public constructor <init>(Lcashier/data/PaymentInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/adapter/CashierInfoAdapter$bindInfo$1$1;->$data:Lcashier/data/PaymentInfo;

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
    invoke-virtual {p0}, Lcashier/adapter/CashierInfoAdapter$bindInfo$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 15

    .line 2
    sget-object v0, Ld00;->a:Ld00;

    invoke-virtual {v0}, Ld00;->e()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcashier/adapter/CashierInfoAdapter$bindInfo$1$1;->$data:Lcashier/data/PaymentInfo;

    .line 3
    instance-of v2, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_4

    .line 4
    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 5
    sget-object v3, Lcashier/ui/PayNoticeDialog;->i:Lcashier/ui/PayNoticeDialog$Companion;

    .line 6
    new-instance v14, Lcashier/ui/PayNoticeData;

    .line 7
    invoke-virtual {v1}, Lcashier/data/PaymentInfo;->b()Lcashier/data/PayProductInfo;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcashier/data/PayProductInfo;->b()Lcashier/data/FeeInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcashier/data/FeeInfo;->f()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    const-string v6, ""

    if-nez v4, :cond_1

    move-object v7, v6

    goto :goto_1

    :cond_1
    move-object v7, v4

    .line 8
    :goto_1
    invoke-virtual {v1}, Lcashier/data/PaymentInfo;->b()Lcashier/data/PayProductInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcashier/data/PayProductInfo;->b()Lcashier/data/FeeInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcashier/data/FeeInfo;->e()Ljava/lang/String;

    move-result-object v5

    :cond_2
    if-nez v5, :cond_3

    move-object v1, v6

    goto :goto_2

    :cond_3
    move-object v1, v5

    .line 9
    :goto_2
    sget v4, Lteam/opay/pay/cashier/R$string;->pay_okay:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "it.getString(R.string.pay_okay)"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0x71

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v14

    move-object v6, v7

    move-object v7, v1

    .line 10
    invoke-direct/range {v4 .. v13}, Lcashier/ui/PayNoticeData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v3, v14}, Lcashier/ui/PayNoticeDialog$Companion;->a(Lcashier/ui/PayNoticeData;)Lcashier/ui/PayNoticeDialog;

    move-result-object v0

    .line 12
    invoke-static {v2, v0}, Lcashier/util/UtilsKt;->n(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    :cond_4
    return-void
.end method
