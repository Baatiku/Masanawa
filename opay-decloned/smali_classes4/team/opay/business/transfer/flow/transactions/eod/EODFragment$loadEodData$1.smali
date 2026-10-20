.class final Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EODFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->h0()V
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
    c = "team.opay.business.transfer.flow.transactions.eod.EODFragment$loadEodData$1"
    f = "EODFragment.kt"
    l = {
        0xa6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

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
    new-instance p1, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;-><init>(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->label:I

    .line 6
    .line 7
    const-string v2, "shimmerAccountName"

    .line 8
    .line 9
    const-string v3, "shimmerAccountNumber"

    .line 10
    .line 11
    const-string v4, "httpViewGroup"

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-ne v1, v5, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 35
    .line 36
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->Q(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;->getItemCount()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 47
    .line 48
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p1, p1, Ly66;->d:Lteam/opay/core/widget/HttpViewGroup;

    .line 53
    .line 54
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 61
    .line 62
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p1, p1, Ly66;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 69
    .line 70
    invoke-static {v1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->P(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lteam/opay/business/transfer/flow/transactions/eod/EODHolderAdapter;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 78
    .line 79
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p1, p1, Ly66;->e:Lb96;

    .line 84
    .line 85
    iget-object p1, p1, Lb96;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_4

    .line 98
    .line 99
    :cond_3
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 100
    .line 101
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object p1, p1, Ly66;->e:Lb96;

    .line 106
    .line 107
    iget-object p1, p1, Lb96;->j:Lteam/opay/business/widget/shimmer/CorpShimmerView;

    .line 108
    .line 109
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 116
    .line 117
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object p1, p1, Ly66;->e:Lb96;

    .line 122
    .line 123
    iget-object p1, p1, Lb96;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 124
    .line 125
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_6

    .line 136
    .line 137
    :cond_5
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 138
    .line 139
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iget-object p1, p1, Ly66;->e:Lb96;

    .line 144
    .line 145
    iget-object p1, p1, Lb96;->i:Lteam/opay/business/widget/shimmer/CorpShimmerView;

    .line 146
    .line 147
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 151
    .line 152
    .line 153
    :cond_6
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 154
    .line 155
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->R(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iput v5, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->label:I

    .line 160
    .line 161
    invoke-virtual {p1, p0}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->N(Ljr2;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-ne p1, v0, :cond_7

    .line 166
    .line 167
    return-object v0

    .line 168
    :cond_7
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 169
    .line 170
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 171
    .line 172
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    const-string v1, "<get-lifecycle>(...)"

    .line 177
    .line 178
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 182
    .line 183
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_13

    .line 188
    .line 189
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 190
    .line 191
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v0, v0, Ly66;->g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 196
    .line 197
    const/4 v1, 0x0

    .line 198
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 202
    .line 203
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iget-object v0, v0, Ly66;->d:Lteam/opay/core/widget/HttpViewGroup;

    .line 208
    .line 209
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 216
    .line 217
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iget-object v0, v0, Ly66;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 222
    .line 223
    iget-object v4, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 224
    .line 225
    invoke-static {v4}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->Q(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 233
    .line 234
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object v0, v0, Ly66;->e:Lb96;

    .line 239
    .line 240
    iget-object v0, v0, Lb96;->j:Lteam/opay/business/widget/shimmer/CorpShimmerView;

    .line 241
    .line 242
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 249
    .line 250
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iget-object v0, v0, Ly66;->e:Lb96;

    .line 255
    .line 256
    iget-object v0, v0, Lb96;->i:Lteam/opay/business/widget/shimmer/CorpShimmerView;

    .line 257
    .line 258
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 262
    .line 263
    .line 264
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 265
    .line 266
    if-eqz v0, :cond_12

    .line 267
    .line 268
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 269
    .line 270
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    check-cast v0, Lteam/opay/business/transfer/flow/api/EodInfoResp;

    .line 275
    .line 276
    const/4 v2, 0x0

    .line 277
    if-eqz v0, :cond_8

    .line 278
    .line 279
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/EodInfoResp;->b()Ljava/util/List;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    goto :goto_1

    .line 284
    :cond_8
    move-object v0, v2

    .line 285
    :goto_1
    if-eqz v0, :cond_10

    .line 286
    .line 287
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-eqz v0, :cond_9

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_9
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 295
    .line 296
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->Q(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    check-cast v3, Lteam/opay/business/transfer/flow/api/EodInfoResp;

    .line 305
    .line 306
    if-eqz v3, :cond_a

    .line 307
    .line 308
    invoke-virtual {v3}, Lteam/opay/business/transfer/flow/api/EodInfoResp;->b()Ljava/util/List;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    goto :goto_2

    .line 313
    :cond_a
    move-object v3, v2

    .line 314
    :goto_2
    if-nez v3, :cond_b

    .line 315
    .line 316
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    :cond_b
    invoke-virtual {v0, v3}, Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;->setDataList(Ljava/util/List;)V

    .line 321
    .line 322
    .line 323
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 324
    .line 325
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    iget-object v0, v0, Ly66;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 330
    .line 331
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    check-cast v3, Lteam/opay/business/transfer/flow/api/EodInfoResp;

    .line 336
    .line 337
    if-eqz v3, :cond_c

    .line 338
    .line 339
    invoke-virtual {v3}, Lteam/opay/business/transfer/flow/api/EodInfoResp;->a()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    goto :goto_3

    .line 344
    :cond_c
    move-object v3, v2

    .line 345
    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    .line 347
    .line 348
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 349
    .line 350
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    iget-object v0, v0, Ly66;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 355
    .line 356
    const-string v3, "eodTip"

    .line 357
    .line 358
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    check-cast v3, Lteam/opay/business/transfer/flow/api/EodInfoResp;

    .line 366
    .line 367
    if-eqz v3, :cond_d

    .line 368
    .line 369
    invoke-virtual {v3}, Lteam/opay/business/transfer/flow/api/EodInfoResp;->a()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    goto :goto_4

    .line 374
    :cond_d
    move-object v3, v2

    .line 375
    :goto_4
    if-eqz v3, :cond_e

    .line 376
    .line 377
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    if-nez v3, :cond_f

    .line 382
    .line 383
    :cond_e
    const/4 v1, 0x1

    .line 384
    :cond_f
    xor-int/2addr v1, v5

    .line 385
    invoke-static {v0, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 386
    .line 387
    .line 388
    goto :goto_6

    .line 389
    :cond_10
    :goto_5
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 390
    .line 391
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    iget-object v0, v0, Ly66;->d:Lteam/opay/core/widget/HttpViewGroup;

    .line 396
    .line 397
    invoke-static {v0, v2, v5, v2}, Lteam/opay/core/widget/HttpViewGroup;->s(Lteam/opay/core/widget/HttpViewGroup;Ljava/lang/String;ILjava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    :goto_6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 401
    .line 402
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    check-cast p1, Lteam/opay/business/transfer/flow/api/EodInfoResp;

    .line 407
    .line 408
    if-eqz p1, :cond_11

    .line 409
    .line 410
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/EodInfoResp;->c()Lteam/opay/business/transfer/flow/api/EodMerchantInfo;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    :cond_11
    invoke-static {v0, v2}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->T(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Lteam/opay/business/transfer/flow/api/EodMerchantInfo;)V

    .line 415
    .line 416
    .line 417
    goto :goto_7

    .line 418
    :cond_12
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 419
    .line 420
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->Q(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;->getItemCount()I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-nez v0, :cond_13

    .line 429
    .line 430
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$loadEodData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 431
    .line 432
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    iget-object v0, v0, Ly66;->d:Lteam/opay/core/widget/HttpViewGroup;

    .line 437
    .line 438
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    invoke-virtual {v0, p1}, Lteam/opay/core/widget/HttpViewGroup;->u(Lteam/opay/core/http/arch/ApiError;)V

    .line 443
    .line 444
    .line 445
    :cond_13
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 446
    .line 447
    return-object p1
.end method
