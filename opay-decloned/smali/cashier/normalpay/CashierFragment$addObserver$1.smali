.class final Lcashier/normalpay/CashierFragment$addObserver$1;
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
        "Ljava/util/List<",
        "+",
        "Lcashier/data/Ad;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "list",
        "",
        "Lcashier/data/Ad;",
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
    iput-object p1, p0, Lcashier/normalpay/CashierFragment$addObserver$1;->this$0:Lcashier/normalpay/CashierFragment;

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
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcashier/normalpay/CashierFragment$addObserver$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcashier/data/Ad;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "binding!!.adAnnouncementLayout"

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcashier/normalpay/CashierFragment$addObserver$1;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {v1}, Lcashier/normalpay/CashierFragment;->A(Lcashier/normalpay/CashierFragment;)Lcashier/view/NoticeView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcashier/normalpay/CashierFragment$addObserver$1;->this$0:Lcashier/normalpay/CashierFragment;

    new-instance v2, Lcashier/view/NoticeView;

    iget-object v3, p0, Lcashier/normalpay/CashierFragment$addObserver$1;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4, v5}, Lcashier/view/NoticeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v3, p0, Lcashier/normalpay/CashierFragment$addObserver$1;->this$0:Lcashier/normalpay/CashierFragment;

    .line 5
    new-instance v4, Lcashier/normalpay/CashierFragment$addObserver$1$1$1;

    invoke-direct {v4, v3}, Lcashier/normalpay/CashierFragment$addObserver$1$1$1;-><init>(Lcashier/normalpay/CashierFragment;)V

    invoke-virtual {v2, v4}, Lcashier/view/NoticeView;->setOpenScheme(Lkotlin/jvm/functions/Function1;)V

    .line 6
    invoke-static {v1, v2}, Lcashier/normalpay/CashierFragment;->M(Lcashier/normalpay/CashierFragment;Lcashier/view/NoticeView;)V

    .line 7
    iget-object v1, p0, Lcashier/normalpay/CashierFragment$addObserver$1;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {v1}, Lcashier/normalpay/CashierFragment;->B(Lcashier/normalpay/CashierFragment;)Lq8b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    iget-object v1, v1, Lq8b;->b:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcashier/normalpay/CashierFragment$addObserver$1;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {v2}, Lcashier/normalpay/CashierFragment;->A(Lcashier/normalpay/CashierFragment;)Lcashier/view/NoticeView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcashier/normalpay/CashierFragment$addObserver$1;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {v1}, Lcashier/normalpay/CashierFragment;->B(Lcashier/normalpay/CashierFragment;)Lq8b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    iget-object v1, v1, Lq8b;->b:Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ld0g;->s(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcashier/normalpay/CashierFragment$addObserver$1;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {v0}, Lcashier/normalpay/CashierFragment;->A(Lcashier/normalpay/CashierFragment;)Lcashier/view/NoticeView;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "ng_checkout_notice"

    invoke-virtual {v0, p1, v1}, Lcashier/view/NoticeView;->e(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p0, Lcashier/normalpay/CashierFragment$addObserver$1;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {p1}, Lcashier/normalpay/CashierFragment;->B(Lcashier/normalpay/CashierFragment;)Lq8b;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    iget-object p1, p1, Lq8b;->b:Landroid/widget/FrameLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ld0g;->e(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method
