.class final Lcashier/normalpay/PayCouponFragmentDialog$observe$4;
.super Lkotlin/jvm/internal/Lambda;
.source "PayCouponFragmentDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/normalpay/PayCouponFragmentDialog;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/ArrayList<",
        "Lcashier/adapter/ChooseCouponItem;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u000120\u0010\u0002\u001a,\u0012\u0004\u0012\u00020\u0004 \u0006*\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u00050\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ljava/util/ArrayList;",
        "Lcashier/adapter/ChooseCouponItem;",
        "Lkotlin/collections/ArrayList;",
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
.field final synthetic this$0:Lcashier/normalpay/PayCouponFragmentDialog;


# direct methods
.method public constructor <init>(Lcashier/normalpay/PayCouponFragmentDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/normalpay/PayCouponFragmentDialog$observe$4;->this$0:Lcashier/normalpay/PayCouponFragmentDialog;

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
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcashier/normalpay/PayCouponFragmentDialog$observe$4;->invoke(Ljava/util/ArrayList;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcashier/adapter/ChooseCouponItem;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcashier/normalpay/PayCouponFragmentDialog$observe$4;->this$0:Lcashier/normalpay/PayCouponFragmentDialog;

    invoke-static {v0}, Lcashier/normalpay/PayCouponFragmentDialog;->H(Lcashier/normalpay/PayCouponFragmentDialog;)Ld8b;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    iget-object v0, v0, Ld8b;->b:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "binding!!.button"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcashier/normalpay/PayCouponFragmentDialog$observe$4;->this$0:Lcashier/normalpay/PayCouponFragmentDialog;

    invoke-static {v0}, Lcashier/normalpay/PayCouponFragmentDialog;->G(Lcashier/normalpay/PayCouponFragmentDialog;)Lcashier/adapter/PayCouponAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcashier/normalpay/PayCouponFragmentDialog$observe$4;->this$0:Lcashier/normalpay/PayCouponFragmentDialog;

    .line 6
    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcashier/normalpay/PayCouponFragmentDialog$observe$4;->this$0:Lcashier/normalpay/PayCouponFragmentDialog;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcashier/adapter/ChooseCouponItem;

    invoke-virtual {v5}, Lcashier/adapter/ChooseCouponItem;->c()Lcashier/data/Voucher;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcashier/data/Voucher;->getVoucherId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    invoke-static {v1}, Lcashier/normalpay/PayCouponFragmentDialog;->G(Lcashier/normalpay/PayCouponFragmentDialog;)Lcashier/adapter/PayCouponAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcashier/adapter/PayCouponAdapter;->m()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    check-cast v3, Lcashier/adapter/ChooseCouponItem;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcashier/adapter/ChooseCouponItem;->c()Lcashier/data/Voucher;

    move-result-object v4

    .line 7
    :cond_3
    invoke-static {v0, v4}, Lcashier/normalpay/PayCouponFragmentDialog;->L(Lcashier/normalpay/PayCouponFragmentDialog;Lcashier/data/Voucher;)V

    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lcashier/normalpay/PayCouponFragmentDialog$observe$4;->this$0:Lcashier/normalpay/PayCouponFragmentDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcashier/util/UtilsKt;->g(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v1}, Lcashier/util/UtilsKt;->a(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 10
    iget-object v1, p0, Lcashier/normalpay/PayCouponFragmentDialog$observe$4;->this$0:Lcashier/normalpay/PayCouponFragmentDialog;

    invoke-static {v1}, Lcashier/normalpay/PayCouponFragmentDialog;->I(Lcashier/normalpay/PayCouponFragmentDialog;)Lcashier/model/PayVoucherViewModel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcashier/model/PayVoucherViewModel;->B(Ljava/util/ArrayList;I)V

    :cond_4
    return-void
.end method
