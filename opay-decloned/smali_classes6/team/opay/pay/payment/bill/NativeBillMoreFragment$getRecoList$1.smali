.class final Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NativeBillMoreFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/bill/NativeBillMoreFragment;->X(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
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
    c = "team.opay.pay.payment.bill.NativeBillMoreFragment$getRecoList$1"
    f = "NativeBillMoreFragment.kt"
    l = {
        0xc7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/pay/payment/bill/MoreServiceListData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $totalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceListData;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/pay/payment/bill/NativeBillMoreFragment;


# direct methods
.method public constructor <init>(Ljava/util/List;Lteam/opay/pay/payment/bill/NativeBillMoreFragment;Lkotlin/jvm/functions/Function1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceListData;",
            ">;",
            "Lteam/opay/pay/payment/bill/NativeBillMoreFragment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/payment/bill/MoreServiceListData;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;->$totalList:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;->this$0:Lteam/opay/pay/payment/bill/NativeBillMoreFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 3
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
    new-instance p1, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;->$totalList:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;->this$0:Lteam/opay/pay/payment/bill/NativeBillMoreFragment;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;-><init>(Ljava/util/List;Lteam/opay/pay/payment/bill/NativeBillMoreFragment;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;->label:I

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
    goto/16 :goto_5

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
    new-instance p1, Lteam/opay/core/settings/NoClearStorage;

    .line 29
    .line 30
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 31
    .line 32
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {p1, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/core/settings/NoClearStorage;->u0()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v3, Lcom/google/gson/Gson;

    .line 53
    .line 54
    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v4, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1$a;

    .line 58
    .line 59
    invoke-direct {v4}, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1$a;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, p1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v3, "fromJson(...)"

    .line 71
    .line 72
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    check-cast p1, Ljava/util/Collection;

    .line 76
    .line 77
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    .line 79
    .line 80
    new-instance p1, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    new-instance v3, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object v4, p0, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;->$totalList:Ljava/util/List;

    .line 91
    .line 92
    if-eqz v4, :cond_4

    .line 93
    .line 94
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_2

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    iget-object v4, p0, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;->$totalList:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_4

    .line 112
    .line 113
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 118
    .line 119
    invoke-virtual {v5}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getData()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    if-eqz v5, :cond_3

    .line 124
    .line 125
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_3

    .line 134
    .line 135
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    check-cast v6, Lteam/opay/pay/payment/bill/MoreServiceItemData;

    .line 140
    .line 141
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_4
    :goto_1
    new-instance v4, Ljava/util/HashSet;

    .line 146
    .line 147
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 148
    .line 149
    .line 150
    new-instance v5, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-eqz v6, :cond_6

    .line 164
    .line 165
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    move-object v7, v6

    .line 170
    check-cast v7, Lteam/opay/pay/payment/bill/MoreServiceItemData;

    .line 171
    .line 172
    invoke-virtual {v7}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    if-eqz v7, :cond_5

    .line 181
    .line 182
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_9

    .line 195
    .line 196
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    check-cast v1, Lteam/opay/pay/payment/bill/MoreServiceItemData;

    .line 201
    .line 202
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eqz v6, :cond_7

    .line 211
    .line 212
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    check-cast v6, Lteam/opay/pay/payment/bill/MoreServiceItemData;

    .line 217
    .line 218
    invoke-virtual {v1}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getName()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-virtual {v6}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getName()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-eqz v6, :cond_8

    .line 231
    .line 232
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_9
    const/4 p1, 0x4

    .line 237
    invoke-static {v3, p1}, Lkotlin/collections/CollectionsKt;->N0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    new-instance v1, Lteam/opay/core/settings/NoClearStorage;

    .line 242
    .line 243
    sget-object v3, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 244
    .line 245
    invoke-virtual {v3}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {v3}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-direct {v1, v3}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 254
    .line 255
    .line 256
    new-instance v3, Lcom/google/gson/Gson;

    .line 257
    .line 258
    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v1, v3}, Lteam/opay/core/settings/NoClearStorage;->c2(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 269
    .line 270
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    const/4 v4, 0x0

    .line 278
    if-nez v3, :cond_b

    .line 279
    .line 280
    new-instance v3, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 281
    .line 282
    new-instance v5, Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 283
    .line 284
    iget-object v6, p0, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;->this$0:Lteam/opay/pay/payment/bill/NativeBillMoreFragment;

    .line 285
    .line 286
    invoke-virtual {v6}, Lteam/opay/pay/payment/bill/Hilt_NativeBillMoreFragment;->getContext()Landroid/content/Context;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    if-eqz v6, :cond_a

    .line 291
    .line 292
    sget v7, Lteam/opay/pay/R$string;->osdk_recently_used:I

    .line 293
    .line 294
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    goto :goto_4

    .line 299
    :cond_a
    move-object v6, v4

    .line 300
    :goto_4
    const-string v7, "recently_used"

    .line 301
    .line 302
    invoke-direct {v5, v4, v6, v7, v4}, Lteam/opay/pay/payment/bill/MoreServiceTitleData;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    const/4 v6, 0x5

    .line 306
    invoke-direct {v3, v6, v5, p1}, Lteam/opay/pay/payment/bill/MoreServiceListData;-><init>(ILteam/opay/pay/payment/bill/MoreServiceTitleData;Ljava/util/List;)V

    .line 307
    .line 308
    .line 309
    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 310
    .line 311
    :cond_b
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    new-instance v3, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1$3;

    .line 316
    .line 317
    iget-object v5, p0, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 318
    .line 319
    invoke-direct {v3, v5, v1, v4}, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1$3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;Ljr2;)V

    .line 320
    .line 321
    .line 322
    iput v2, p0, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$getRecoList$1;->label:I

    .line 323
    .line 324
    invoke-static {p1, v3, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    if-ne p1, v0, :cond_c

    .line 329
    .line 330
    return-object v0

    .line 331
    :cond_c
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 332
    .line 333
    return-object p1
.end method
