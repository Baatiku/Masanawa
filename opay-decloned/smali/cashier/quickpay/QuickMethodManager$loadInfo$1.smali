.class final Lcashier/quickpay/QuickMethodManager$loadInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "QuickMethodManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/quickpay/QuickMethodManager;->i(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
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
.field final synthetic $cardId:Ljava/lang/String;

.field final synthetic $first:Z

.field final synthetic $from:Ljava/lang/String;

.field final synthetic $onInfoFailed:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onInfoSuccess:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $payChannel:Ljava/lang/String;

.field final synthetic this$0:Lcashier/quickpay/QuickMethodManager;


# direct methods
.method public constructor <init>(Lcashier/quickpay/QuickMethodManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/quickpay/QuickMethodManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->$payChannel:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->$cardId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->$from:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->$onInfoSuccess:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput-boolean p6, p0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->$first:Z

    .line 12
    .line 13
    iput-object p7, p0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->$onInfoFailed:Lkotlin/jvm/functions/Function2;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcashier/net/ResultData;

    invoke-virtual {p0, p1}, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->invoke(Lcashier/net/ResultData;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcashier/net/ResultData;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/net/ResultData<",
            "+",
            "Lcashier/data/CashierInfoRsp;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcashier/data/CashierInfoRsp;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcashier/data/CashierInfoRsp;->v(Ljava/lang/Long;)V

    :goto_1
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 4
    :goto_2
    const-string v3, "SUCCESS"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    .line 5
    iget-object v2, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-static {v2, v3}, Lcashier/quickpay/QuickMethodManager;->g(Lcashier/quickpay/QuickMethodManager;Z)V

    .line 6
    iget-object v2, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-static {v2}, Lcashier/quickpay/QuickMethodManager;->d(Lcashier/quickpay/QuickMethodManager;)Lcashier/model/CashierViewModel;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcashier/data/CashierInfoRsp;

    invoke-virtual {v2, v4}, Lcashier/model/CashierViewModel;->F0(Lcashier/data/CashierInfoRsp;)V

    .line 7
    iget-object v2, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-static {v2}, Lcashier/quickpay/QuickMethodManager;->d(Lcashier/quickpay/QuickMethodManager;)Lcashier/model/CashierViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcashier/model/CashierViewModel;->h0()Lcashier/data/CashierInfoRsp;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v4}, Li52;->j(Lcashier/data/CashierInfoRsp;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-virtual {v2, v4}, Lcashier/quickpay/QuickMethodManager;->l(Ljava/util/List;)V

    .line 8
    iget-object v2, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->$payChannel:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_9

    .line 9
    :cond_5
    iget-object v2, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-virtual {v2}, Lcashier/quickpay/QuickMethodManager;->h()Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcashier/data/PaymentItem;

    .line 11
    invoke-virtual {v4, v3}, Lcashier/data/PaymentItem;->j(Z)V

    goto :goto_3

    .line 12
    :cond_6
    iget-object v2, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-static {v2}, Lcashier/quickpay/QuickMethodManager;->d(Lcashier/quickpay/QuickMethodManager;)Lcashier/model/CashierViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->h0()Lcashier/data/CashierInfoRsp;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcashier/data/CashierInfoRsp;->l()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v3, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->$payChannel:Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcashier/data/PayChannelItem;

    invoke-virtual {v5}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_8
    move-object v4, v1

    :goto_4
    check-cast v4, Lcashier/data/PayChannelItem;

    move-object v9, v4

    goto :goto_5

    :cond_9
    move-object v9, v1

    .line 13
    :goto_5
    iget-object v2, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->$cardId:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_a

    goto :goto_7

    :cond_a
    if-eqz v9, :cond_d

    .line 14
    invoke-virtual {v9}, Lcashier/data/PayChannelItem;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v3, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->$cardId:Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcashier/data/Card;

    invoke-virtual {v5}, Lcashier/data/Card;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_6

    :cond_c
    move-object v4, v1

    :goto_6
    check-cast v4, Lcashier/data/Card;

    move-object v10, v4

    goto :goto_8

    :cond_d
    :goto_7
    move-object v10, v1

    .line 15
    :goto_8
    new-instance v2, Lcashier/data/PaymentItem;

    const/4 v7, 0x1

    .line 16
    const-string v8, "Y"

    const/4 v6, 0x0

    move-object v5, v2

    .line 17
    invoke-direct/range {v5 .. v10}, Lcashier/data/PaymentItem;-><init>(IZLjava/lang/String;Lcashier/data/PayChannelItem;Lcashier/data/Card;)V

    move-object v14, v2

    goto :goto_a

    :cond_e
    :goto_9
    move-object v14, v1

    .line 18
    :goto_a
    iget-object v2, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-static {v2}, Lcashier/quickpay/QuickMethodManager;->b(Lcashier/quickpay/QuickMethodManager;)Ljava/util/List;

    move-result-object v11

    .line 19
    iget-object v2, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-virtual {v2}, Lcashier/quickpay/QuickMethodManager;->h()Ljava/util/List;

    move-result-object v12

    .line 20
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v15, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->$cardId:Ljava/lang/String;

    .line 22
    iget-object v2, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->$from:Ljava/lang/String;

    move-object/from16 v16, v2

    .line 23
    invoke-static/range {v11 .. v16}, Li52;->f(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcashier/data/PaymentItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v2, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-static {v2}, Lcashier/quickpay/QuickMethodManager;->d(Lcashier/quickpay/QuickMethodManager;)Lcashier/model/CashierViewModel;

    move-result-object v2

    iget-object v3, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-virtual {v3}, Lcashier/quickpay/QuickMethodManager;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcashier/data/PaymentItem;

    invoke-virtual {v5}, Lcashier/data/PaymentItem;->f()Z

    move-result v5

    if-eqz v5, :cond_f

    move-object v1, v4

    :cond_10
    check-cast v1, Lcashier/data/PaymentItem;

    invoke-virtual {v2, v1}, Lcashier/model/CashierViewModel;->G0(Lcashier/data/PaymentItem;)V

    .line 25
    iget-object v1, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-static {v1}, Lcashier/quickpay/QuickMethodManager;->c(Lcashier/quickpay/QuickMethodManager;)Lcashier/ui/PayMethodFragment;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v2, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-virtual {v2}, Lcashier/quickpay/QuickMethodManager;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcashier/ui/PayMethodFragment;->N(Ljava/util/List;)V

    .line 26
    :cond_11
    iget-object v1, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->$onInfoSuccess:Lkotlin/jvm/functions/Function1;

    iget-boolean v2, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->$first:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 27
    :cond_12
    iget-object v1, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-static {v1, v3}, Lcashier/quickpay/QuickMethodManager;->g(Lcashier/quickpay/QuickMethodManager;Z)V

    .line 28
    iget-object v1, v0, Lcashier/quickpay/QuickMethodManager$loadInfo$1;->$onInfoFailed:Lkotlin/jvm/functions/Function2;

    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_13

    move-object v2, v3

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    goto :goto_b

    :cond_14
    move-object v3, v4

    :goto_b
    invoke-interface {v1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    return-void
.end method
