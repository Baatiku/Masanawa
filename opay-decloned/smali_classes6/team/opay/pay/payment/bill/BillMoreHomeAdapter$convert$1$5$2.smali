.class final Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BillMoreHomeAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.payment.bill.BillMoreHomeAdapter$convert$1$5$2"
    f = "BillMoreHomeAdapter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceListData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $normalTopNum:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $this_apply:Landroid/view/View;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceListData;",
            ">;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->$this_apply:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->$list:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->$normalTopNum:Lkotlin/jvm/internal/Ref$IntRef;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->this$0:Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->$this_apply:Landroid/view/View;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->$list:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->$normalTopNum:Lkotlin/jvm/internal/Ref$IntRef;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->this$0:Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;-><init>(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;Ljr2;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget v1, v0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->label:I

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->$this_apply:Landroid/view/View;

    .line 14
    .line 15
    sget v2, Lteam/opay/pay/R$id;->rv_list:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 24
    .line 25
    iget-object v3, v0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->$this_apply:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lteam/opay/pay/payment/bill/BillMoreListAdapter;

    .line 38
    .line 39
    iget-object v3, v0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->$list:Ljava/util/List;

    .line 40
    .line 41
    iget-object v4, v0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->$normalTopNum:Lkotlin/jvm/internal/Ref$IntRef;

    .line 42
    .line 43
    iget v4, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 44
    .line 45
    iget-object v5, v0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->this$0:Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;

    .line 46
    .line 47
    invoke-virtual {v5}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;->p()Lag8;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-direct {v2, v3, v4, v5}, Lteam/opay/pay/payment/bill/BillMoreListAdapter;-><init>(Ljava/util/List;ILag8;)V

    .line 52
    .line 53
    .line 54
    iget-object v3, v0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;->$list:Ljava/util/List;

    .line 55
    .line 56
    new-instance v4, Ljava/util/ArrayList;

    .line 57
    .line 58
    const/16 v5, 0xa

    .line 59
    .line 60
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_0

    .line 76
    .line 77
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    move-object v8, v5

    .line 82
    check-cast v8, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 83
    .line 84
    new-instance v5, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 85
    .line 86
    invoke-virtual {v8}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getItemType()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    const/16 v15, 0xfc

    .line 91
    .line 92
    const/16 v16, 0x0

    .line 93
    .line 94
    const/4 v9, 0x0

    .line 95
    const/4 v10, 0x0

    .line 96
    const/4 v11, 0x0

    .line 97
    const/4 v12, 0x0

    .line 98
    const/4 v13, 0x0

    .line 99
    const/4 v14, 0x0

    .line 100
    move-object v6, v5

    .line 101
    invoke-direct/range {v6 .. v16}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 112
    .line 113
    .line 114
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    return-object v1

    .line 117
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 118
    .line 119
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 120
    .line 121
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v1
.end method
