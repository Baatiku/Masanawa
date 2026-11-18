.class final Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MyBusinessFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/v2/MyBusinessFragment;->w1(Ljava/lang/String;)V
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
    c = "team.opay.sme.va.v2.MyBusinessFragment$queryTransactions$1"
    f = "MyBusinessFragment.kt"
    l = {
        0x1a9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $transferNumber:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/v2/MyBusinessFragment;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/v2/MyBusinessFragment;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->$transferNumber:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
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
    new-instance p1, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->$transferNumber:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;-><init>(Lteam/opay/sme/va/v2/MyBusinessFragment;Ljava/lang/String;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v2, v0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->label:I

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
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v2, v0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->$transferNumber:Ljava/lang/String;

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    const-string v2, ""

    .line 41
    .line 42
    :cond_2
    const-string v4, "accountNo"

    .line 43
    .line 44
    invoke-virtual {v9, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    new-instance v2, Lteam/opay/business/transfer/flow/api/TransactionsReq;

    .line 48
    .line 49
    const/16 v17, 0xfcc

    .line 50
    .line 51
    const/16 v18, 0x0

    .line 52
    .line 53
    const/4 v5, 0x1

    .line 54
    const/4 v6, 0x2

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    const-string v10, "TRANSFER_NUMBER_TRANSACTION"

    .line 58
    .line 59
    const/4 v11, 0x0

    .line 60
    const/4 v12, 0x0

    .line 61
    const/4 v13, 0x0

    .line 62
    const/4 v14, 0x0

    .line 63
    const/4 v15, 0x0

    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    move-object v4, v2

    .line 67
    invoke-direct/range {v4 .. v18}, Lteam/opay/business/transfer/flow/api/TransactionsReq;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 68
    .line 69
    .line 70
    iget-object v4, v0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 71
    .line 72
    invoke-static {v4}, Lteam/opay/sme/va/v2/MyBusinessFragment;->F0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iput v3, v0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->label:I

    .line 77
    .line 78
    invoke-virtual {v4, v2, v0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->L(Lteam/opay/business/transfer/flow/api/TransactionsReq;Ljr2;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-ne v2, v1, :cond_3

    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_3
    :goto_0
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 86
    .line 87
    iget-object v1, v0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v4, "<get-lifecycle>(...)"

    .line 94
    .line 95
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 99
    .line 100
    invoke-static {v1, v4}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_7

    .line 105
    .line 106
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getOrNull()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Lteam/opay/business/transfer/flow/api/TransactionsResp;

    .line 111
    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/api/TransactionsResp;->c()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    const/4 v1, 0x0

    .line 120
    :goto_1
    if-nez v1, :cond_5

    .line 121
    .line 122
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    :cond_5
    iget-object v2, v0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 127
    .line 128
    invoke-static {v2}, Lteam/opay/sme/va/v2/MyBusinessFragment;->v0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Lfxd;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iget-object v2, v2, Lfxd;->x:Lxyd;

    .line 133
    .line 134
    invoke-virtual {v2}, Lxyd;->a()Lteam/opay/core/widget/fillet/CorpConstraintLayout;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const-string v4, "getRoot(...)"

    .line 139
    .line 140
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    xor-int/2addr v4, v3

    .line 148
    invoke-static {v2, v4}, Lg0g;->j(Landroid/view/View;Z)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_6

    .line 156
    .line 157
    iget-object v2, v0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 158
    .line 159
    invoke-static {v2, v3}, Lteam/opay/sme/va/v2/MyBusinessFragment;->J0(Lteam/opay/sme/va/v2/MyBusinessFragment;Z)V

    .line 160
    .line 161
    .line 162
    iget-object v2, v0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 163
    .line 164
    invoke-static {v2}, Lteam/opay/sme/va/v2/MyBusinessFragment;->v0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Lfxd;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iget-object v2, v2, Lfxd;->u:Lkzd;

    .line 169
    .line 170
    iget-object v2, v2, Lkzd;->f:Lteam/opay/sme/va/v2/QRCodeExpandView;

    .line 171
    .line 172
    iget-object v4, v0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 173
    .line 174
    invoke-static {v4}, Lteam/opay/sme/va/v2/MyBusinessFragment;->y0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    invoke-virtual {v2, v4}, Lteam/opay/sme/va/v2/QRCodeExpandView;->g(Z)V

    .line 179
    .line 180
    .line 181
    iget-object v2, v0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 182
    .line 183
    invoke-static {v2, v3}, Lteam/opay/sme/va/v2/MyBusinessFragment;->T0(Lteam/opay/sme/va/v2/MyBusinessFragment;Z)V

    .line 184
    .line 185
    .line 186
    :cond_6
    iget-object v2, v0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 187
    .line 188
    invoke-static {v2}, Lteam/opay/sme/va/v2/MyBusinessFragment;->D0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Lteam/opay/sme/va/v2/BusinessTransactionAdapter;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v2, v1}, Lteam/opay/sme/va/v2/BusinessTransactionAdapter;->setDataList(Ljava/util/List;)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-nez v1, :cond_7

    .line 200
    .line 201
    sget-object v1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 202
    .line 203
    iget-object v2, v0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryTransactions$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 204
    .line 205
    invoke-virtual {v2}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    const/4 v3, 0x0

    .line 210
    new-array v3, v3, [Lkotlin/Pair;

    .line 211
    .line 212
    const-string v4, "mybusiness_page_trxn_history_show"

    .line 213
    .line 214
    invoke-virtual {v1, v2, v4, v3}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 215
    .line 216
    .line 217
    :cond_7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 218
    .line 219
    return-object v1
.end method
