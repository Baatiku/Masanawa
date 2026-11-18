.class final Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MyBusinessFragmentV2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->k1()V
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
    c = "team.opay.sme.va.v2.home.MyBusinessFragmentV2$queryTransactions$1"
    f = "MyBusinessFragmentV2.kt"
    l = {
        0x140
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 1
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
    new-instance p1, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;-><init>(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Ljr2;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    move-object/from16 v2, p1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v1

    .line 28
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lteam/opay/business/transfer/flow/api/TransactionsReq;

    .line 32
    .line 33
    const/16 v17, 0xfdd

    .line 34
    .line 35
    const/16 v18, 0x0

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x1

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const-string v10, "TRANSFER_NUMBER_TRANSACTION"

    .line 43
    .line 44
    const/4 v11, 0x0

    .line 45
    const/4 v12, 0x0

    .line 46
    const/4 v13, 0x0

    .line 47
    const/4 v14, 0x0

    .line 48
    const/4 v15, 0x0

    .line 49
    const/16 v16, 0x0

    .line 50
    .line 51
    move-object v4, v2

    .line 52
    invoke-direct/range {v4 .. v18}, Lteam/opay/business/transfer/flow/api/TransactionsReq;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    .line 54
    .line 55
    iget-object v4, v0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 56
    .line 57
    invoke-static {v4}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->v0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iput v3, v0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;->label:I

    .line 62
    .line 63
    invoke-virtual {v4, v2, v0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->L(Lteam/opay/business/transfer/flow/api/TransactionsReq;Ljr2;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-ne v2, v1, :cond_2

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_2
    :goto_0
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 71
    .line 72
    iget-object v1, v0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v4, "<get-lifecycle>(...)"

    .line 79
    .line 80
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 84
    .line 85
    invoke-static {v1, v4}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getOrNull()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lteam/opay/business/transfer/flow/api/TransactionsResp;

    .line 96
    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/api/TransactionsResp;->c()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    const/4 v1, 0x0

    .line 105
    :goto_1
    if-nez v1, :cond_4

    .line 106
    .line 107
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    :cond_4
    iget-object v2, v0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 112
    .line 113
    invoke-static {v2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->p0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)Lgxd;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    if-eqz v2, :cond_5

    .line 118
    .line 119
    iget-object v2, v2, Lgxd;->j:Llzd;

    .line 120
    .line 121
    if-eqz v2, :cond_5

    .line 122
    .line 123
    iget-object v2, v2, Llzd;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    .line 125
    if-eqz v2, :cond_5

    .line 126
    .line 127
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    xor-int/2addr v3, v4

    .line 132
    invoke-static {v2, v3}, Lg0g;->j(Landroid/view/View;Z)V

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-object v2, v0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 136
    .line 137
    invoke-static {v2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->t0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)Lteam/opay/sme/va/v2/BusinessTransactionAdapter;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v2, v1}, Lteam/opay/sme/va/v2/BusinessTransactionAdapter;->setDataList(Ljava/util/List;)V

    .line 142
    .line 143
    .line 144
    iget-object v2, v0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 145
    .line 146
    invoke-static {v2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->E0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_6

    .line 154
    .line 155
    sget-object v1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 156
    .line 157
    iget-object v2, v0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 158
    .line 159
    invoke-virtual {v2}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    const/4 v3, 0x0

    .line 164
    new-array v3, v3, [Lkotlin/Pair;

    .line 165
    .line 166
    const-string v4, "mybusiness_page_trxn_history_show"

    .line 167
    .line 168
    invoke-virtual {v1, v2, v4, v3}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 169
    .line 170
    .line 171
    :cond_6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 172
    .line 173
    return-object v1
.end method
