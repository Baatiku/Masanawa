.class final Lcashier/normalpay/CashierFragment$addObserver$6;
.super Lkotlin/jvm/internal/Lambda;
.source "CashierFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/normalpay/CashierFragment;->addObserver()V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "json",
        "Lorg/json/JSONObject;",
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
.field final synthetic this$0:Lcashier/normalpay/CashierFragment;


# direct methods
.method public constructor <init>(Lcashier/normalpay/CashierFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/normalpay/CashierFragment$addObserver$6;->this$0:Lcashier/normalpay/CashierFragment;

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

    invoke-virtual {p0, p1}, Lcashier/normalpay/CashierFragment$addObserver$6;->invoke(Lorg/json/JSONObject;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/json/JSONObject;)V
    .locals 9

    .line 2
    iget-object v0, p0, Lcashier/normalpay/CashierFragment$addObserver$6;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {v0}, Lcashier/normalpay/CashierFragment;->F(Lcashier/normalpay/CashierFragment;)Lcashier/ui/PayMethodFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcashier/normalpay/CashierFragment$addObserver$6;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcashier/normalpay/CashierFragment$addObserver$6;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {v1}, Lcashier/normalpay/CashierFragment;->F(Lcashier/normalpay/CashierFragment;)Lcashier/ui/PayMethodFragment;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcashier/util/UtilsKt;->k(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;)V

    .line 4
    iget-object v0, p0, Lcashier/normalpay/CashierFragment$addObserver$6;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {v0}, Lcashier/normalpay/CashierFragment;->B(Lcashier/normalpay/CashierFragment;)Lq8b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq8b;->h:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ld0g;->s(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcashier/normalpay/CashierFragment$addObserver$6;->this$0:Lcashier/normalpay/CashierFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcashier/normalpay/CashierFragment;->N(Lcashier/normalpay/CashierFragment;Lcashier/ui/PayMethodFragment;)V

    .line 6
    :cond_1
    sget-object v2, Lcashier/util/CashierBus;->a:Lcashier/util/CashierBus;

    new-instance v4, Lcashier/util/CashierEvent;

    iget-object v0, p0, Lcashier/normalpay/CashierFragment$addObserver$6;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {v0}, Lcashier/normalpay/CashierFragment;->G(Lcashier/normalpay/CashierFragment;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    move-result-object v0

    invoke-direct {v4, v0}, Lcashier/util/CashierEvent;-><init>(Lcashier/data/CashierInput;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "refresh_cashier_info_key"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcashier/util/CashierBus;->f(Lcashier/util/CashierBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 7
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    iget-object v1, p0, Lcashier/normalpay/CashierFragment$addObserver$6;->this$0:Lcashier/normalpay/CashierFragment;

    const/16 v7, 0x13

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v5, "key_from_add_money"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcashier/normalpay/CashierFragment;->e0(Lcashier/normalpay/CashierFragment;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
