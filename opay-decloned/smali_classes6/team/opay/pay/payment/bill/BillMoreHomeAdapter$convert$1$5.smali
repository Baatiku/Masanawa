.class final Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BillMoreHomeAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;->n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V
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
    c = "team.opay.pay.payment.bill.BillMoreHomeAdapter$convert$1$5"
    f = "BillMoreHomeAdapter.kt"
    l = {
        0x7a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $item:Lteam/opay/pay/payment/bill/MoreItemData;

.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceListData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_apply:Landroid/view/View;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;


# direct methods
.method public constructor <init>(Ljava/util/List;Lteam/opay/pay/payment/bill/MoreItemData;Landroid/view/View;Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceListData;",
            ">;",
            "Lteam/opay/pay/payment/bill/MoreItemData;",
            "Landroid/view/View;",
            "Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->$list:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->$item:Lteam/opay/pay/payment/bill/MoreItemData;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->$this_apply:Landroid/view/View;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->this$0:Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;

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
    new-instance p1, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->$list:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->$item:Lteam/opay/pay/payment/bill/MoreItemData;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->$this_apply:Landroid/view/View;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->this$0:Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;-><init>(Ljava/util/List;Lteam/opay/pay/payment/bill/MoreItemData;Landroid/view/View;Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->$list:Ljava/util/List;

    .line 29
    .line 30
    new-instance v1, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 31
    .line 32
    const/4 v3, 0x4

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-direct {v1, v3, v4, v4}, Lteam/opay/pay/payment/bill/MoreServiceListData;-><init>(ILteam/opay/pay/payment/bill/MoreServiceTitleData;Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    .line 41
    .line 42
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->$list:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 52
    .line 53
    iget-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->$item:Lteam/opay/pay/payment/bill/MoreItemData;

    .line 54
    .line 55
    invoke-virtual {p1}, Lteam/opay/pay/payment/bill/MoreItemData;->f()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_7

    .line 60
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_6

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    move-object v6, v5

    .line 81
    check-cast v6, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 82
    .line 83
    invoke-virtual {v6}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getModule()Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    if-eqz v7, :cond_3

    .line 88
    .line 89
    invoke-virtual {v7}, Lteam/opay/pay/payment/bill/MoreServiceTitleData;->getCode()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    move-object v7, v4

    .line 95
    :goto_1
    const-string v9, "more_hot"

    .line 96
    .line 97
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-nez v7, :cond_2

    .line 102
    .line 103
    invoke-virtual {v6}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getModule()Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    if-eqz v7, :cond_4

    .line 108
    .line 109
    invoke-virtual {v7}, Lteam/opay/pay/payment/bill/MoreServiceTitleData;->getCode()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    move-object v7, v4

    .line 115
    :goto_2
    const-string v9, "New"

    .line 116
    .line 117
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-nez v7, :cond_2

    .line 122
    .line 123
    invoke-virtual {v6}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getModule()Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    if-eqz v6, :cond_5

    .line 128
    .line 129
    invoke-virtual {v6}, Lteam/opay/pay/payment/bill/MoreServiceTitleData;->getCode()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    move-object v6, v4

    .line 135
    :goto_3
    const-string v7, "recently_used"

    .line 136
    .line 137
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-nez v6, :cond_2

    .line 142
    .line 143
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_6
    move-object v4, v1

    .line 148
    :cond_7
    if-eqz v4, :cond_9

    .line 149
    .line 150
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_8

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_8
    iget-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->$list:Ljava/util/List;

    .line 158
    .line 159
    new-instance v1, Ljava/util/ArrayList;

    .line 160
    .line 161
    const/16 v3, 0xa

    .line 162
    .line 163
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-eqz v4, :cond_c

    .line 179
    .line 180
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    check-cast v4, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 185
    .line 186
    new-instance v5, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 187
    .line 188
    invoke-virtual {v4}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getModule()Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    invoke-virtual {v4}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getData()Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-direct {v5, v2, v6, v4}, Lteam/opay/pay/payment/bill/MoreServiceListData;-><init>(ILteam/opay/pay/payment/bill/MoreServiceTitleData;Ljava/util/List;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    invoke-static {v4}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_9
    :goto_5
    iget p1, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 212
    .line 213
    add-int/lit8 p1, p1, -0x1

    .line 214
    .line 215
    iput p1, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 216
    .line 217
    iget-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->$list:Ljava/util/List;

    .line 218
    .line 219
    new-instance v1, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    :cond_a
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    if-eqz v4, :cond_b

    .line 233
    .line 234
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    move-object v5, v4

    .line 239
    check-cast v5, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 240
    .line 241
    invoke-virtual {v5}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getItem()I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-eq v5, v3, :cond_a

    .line 246
    .line 247
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_b
    iget-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->$list:Ljava/util/List;

    .line 252
    .line 253
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->$list:Ljava/util/List;

    .line 257
    .line 258
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    invoke-static {p1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 263
    .line 264
    .line 265
    :cond_c
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    new-instance v1, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;

    .line 270
    .line 271
    iget-object v6, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->$this_apply:Landroid/view/View;

    .line 272
    .line 273
    iget-object v7, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->$list:Ljava/util/List;

    .line 274
    .line 275
    iget-object v9, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->this$0:Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;

    .line 276
    .line 277
    const/4 v10, 0x0

    .line 278
    move-object v5, v1

    .line 279
    invoke-direct/range {v5 .. v10}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5$2;-><init>(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;Ljr2;)V

    .line 280
    .line 281
    .line 282
    iput v2, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;->label:I

    .line 283
    .line 284
    invoke-static {p1, v1, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    if-ne p1, v0, :cond_d

    .line 289
    .line 290
    return-object v0

    .line 291
    :cond_d
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 292
    .line 293
    return-object p1
.end method
