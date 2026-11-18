.class final Lcashier/adapter/PayMethodAdapter$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentMethodAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/adapter/PayMethodAdapter;->x(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/MulDataEntity;)V
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
.field final synthetic $item:Lcashier/data/MulDataEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcashier/data/MulDataEntity<",
            "Lcashier/data/PaymentItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcashier/adapter/PayMethodAdapter;


# direct methods
.method public constructor <init>(Lcashier/data/MulDataEntity;Lcashier/adapter/PayMethodAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/data/MulDataEntity<",
            "Lcashier/data/PaymentItem;",
            ">;",
            "Lcashier/adapter/PayMethodAdapter;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->$item:Lcashier/data/MulDataEntity;

    .line 2
    .line 3
    iput-object p2, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcashier/adapter/PayMethodAdapter$convert$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->$item:Lcashier/data/MulDataEntity;

    invoke-virtual {v0}, Lcashier/data/MulDataEntity;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    sget-object v1, Lcashier/BindCardType;->BIND_CARD:Lcashier/BindCardType;

    invoke-static {v0, v1}, Lcashier/adapter/PayMethodAdapter;->k(Lcashier/adapter/PayMethodAdapter;Lcashier/BindCardType;)V

    .line 4
    sget-object v2, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "COMMON_pay_window_link_new_card_click"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->$item:Lcashier/data/MulDataEntity;

    invoke-virtual {v0}, Lcashier/data/MulDataEntity;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    sget-object v1, Lcashier/BindCardType;->BIND_ACCOUNT:Lcashier/BindCardType;

    invoke-static {v0, v1}, Lcashier/adapter/PayMethodAdapter;->k(Lcashier/adapter/PayMethodAdapter;Lcashier/BindCardType;)V

    .line 7
    sget-object v2, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "COMMON_pay_window_link_new_account_click"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    invoke-static {v0}, Lcashier/adapter/PayMethodAdapter;->l(Lcashier/adapter/PayMethodAdapter;)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->$item:Lcashier/data/MulDataEntity;

    invoke-virtual {v0}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcashier/data/PaymentItem;

    invoke-virtual {v0}, Lcashier/data/PaymentItem;->g()Ljava/lang/String;

    move-result-object v0

    const-string v3, "N"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->$item:Lcashier/data/MulDataEntity;

    invoke-virtual {v0}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcashier/data/PaymentItem;

    invoke-virtual {v0}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcashier/data/PayChannelItem;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    iget-object v3, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->$item:Lcashier/data/MulDataEntity;

    invoke-virtual {v3}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcashier/data/PaymentItem;

    iget-object v4, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->$item:Lcashier/data/MulDataEntity;

    invoke-virtual {v4}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcashier/data/PaymentItem;

    invoke-virtual {v4}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcashier/data/PayChannelItem;->k()Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, v2

    :goto_1
    invoke-static {v0, v3, v1}, Lcashier/adapter/PayMethodAdapter;->r(Lcashier/adapter/PayMethodAdapter;Lcashier/data/PaymentItem;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    .line 11
    :cond_7
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    iget-object v3, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->$item:Lcashier/data/MulDataEntity;

    invoke-virtual {v3}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcashier/data/PaymentItem;

    invoke-static {v0, v3}, Lcashier/adapter/PayMethodAdapter;->p(Lcashier/adapter/PayMethodAdapter;Lcashier/data/PaymentItem;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 12
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->$item:Lcashier/data/MulDataEntity;

    invoke-virtual {v0}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcashier/data/PaymentItem;

    invoke-virtual {v0}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcashier/data/PayChannelItem;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    .line 13
    :cond_9
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    iget-object v3, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->$item:Lcashier/data/MulDataEntity;

    invoke-virtual {v3}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcashier/data/PaymentItem;

    iget-object v4, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->$item:Lcashier/data/MulDataEntity;

    invoke-virtual {v4}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcashier/data/PaymentItem;

    invoke-virtual {v4}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcashier/data/PayChannelItem;->k()Ljava/lang/String;

    move-result-object v2

    :cond_a
    if-nez v2, :cond_b

    goto :goto_4

    :cond_b
    move-object v1, v2

    :goto_4
    invoke-static {v0, v3, v1}, Lcashier/adapter/PayMethodAdapter;->r(Lcashier/adapter/PayMethodAdapter;Lcashier/data/PaymentItem;Ljava/lang/String;)V

    :cond_c
    :goto_5
    return-void

    .line 14
    :cond_d
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    invoke-static {v0}, Lcashier/adapter/PayMethodAdapter;->m(Lcashier/adapter/PayMethodAdapter;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_f

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 16
    check-cast v4, Lcashier/data/PaymentItem;

    .line 17
    invoke-virtual {v4}, Lcashier/data/PaymentItem;->f()Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_7

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    const/4 v3, -0x1

    :goto_7
    if-eq v3, v2, :cond_10

    .line 18
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 19
    :cond_10
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    invoke-static {v0}, Lcashier/adapter/PayMethodAdapter;->m(Lcashier/adapter/PayMethodAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v3, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->$item:Lcashier/data/MulDataEntity;

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcashier/data/PaymentItem;

    .line 21
    invoke-virtual {v3}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcashier/data/PaymentItem;

    invoke-virtual {v4, v5}, Lcashier/data/PaymentItem;->i(Lcashier/data/PaymentItem;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcashier/data/PaymentItem;->j(Z)V

    goto :goto_8

    .line 22
    :cond_11
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    invoke-static {v0}, Lcashier/adapter/PayMethodAdapter;->m(Lcashier/adapter/PayMethodAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 24
    check-cast v3, Lcashier/data/PaymentItem;

    .line 25
    invoke-virtual {v3}, Lcashier/data/PaymentItem;->f()Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_a

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    const/4 v1, -0x1

    :goto_a
    if-eq v1, v2, :cond_14

    .line 26
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 27
    :cond_14
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    invoke-static {v0}, Lcashier/adapter/PayMethodAdapter;->n(Lcashier/adapter/PayMethodAdapter;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v1, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->$item:Lcashier/data/MulDataEntity;

    invoke-virtual {v1}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcashier/adapter/PayMethodAdapter$convert$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    invoke-static {v2}, Lcashier/adapter/PayMethodAdapter;->m(Lcashier/adapter/PayMethodAdapter;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_15

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_15
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
