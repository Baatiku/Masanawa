.class final Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OMessageCenterViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/message/module/OMessageCenterViewModel;->O(Landroid/content/Context;)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.message.module.OMessageCenterViewModel$notice$1"
    f = "OMessageCenterViewModel.kt"
    l = {
        0xa1,
        0xa6,
        0xb8,
        0xeb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $ctx:Landroid/content/Context;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lteam/opay/pay/message/module/OMessageCenterViewModel;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->$ctx:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

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
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->$ctx:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;-><init>(Landroid/content/Context;Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lzr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    iget v2, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    const/4 v4, 0x3

    .line 11
    const/4 v5, 0x2

    .line 12
    const-string v6, ""

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v9, 0x0

    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    if-eq v2, v8, :cond_3

    .line 20
    .line 21
    if-eq v2, v5, :cond_2

    .line 22
    .line 23
    if-eq v2, v4, :cond_1

    .line 24
    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    iget-object v1, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$6:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Ljava/util/List;

    .line 30
    .line 31
    iget-object v2, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$5:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$4:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Ljava/util/List;

    .line 38
    .line 39
    iget-object v4, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$3:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v4, Ljava/lang/String;

    .line 42
    .line 43
    iget-object v5, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$2:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v5, Lteam/opay/pay/message/net/Status;

    .line 46
    .line 47
    iget-object v6, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$1:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v6, Lteam/opay/pay/message/bean/MessageLocalNum;

    .line 50
    .line 51
    iget-object v8, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v8, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_16

    .line 59
    .line 60
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v1

    .line 68
    :cond_1
    iget v2, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->I$0:I

    .line 69
    .line 70
    iget-object v4, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$3:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v4, Ljava/lang/String;

    .line 73
    .line 74
    iget-object v5, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$2:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v5, Ljava/util/ArrayList;

    .line 77
    .line 78
    iget-object v10, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$1:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v10, Lteam/opay/pay/message/bean/MessageLocalNum;

    .line 81
    .line 82
    iget-object v11, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v11, Ljava/lang/String;

    .line 85
    .line 86
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 87
    .line 88
    .line 89
    move-object v12, v11

    .line 90
    move-object v11, v10

    .line 91
    move-object v10, v5

    .line 92
    move-object v5, v4

    .line 93
    move v4, v2

    .line 94
    move-object/from16 v2, p1

    .line 95
    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    new-instance v10, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1$1;

    .line 114
    .line 115
    iget-object v11, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 116
    .line 117
    invoke-direct {v10, v11, v9}, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1$1;-><init>(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljr2;)V

    .line 118
    .line 119
    .line 120
    iput v8, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->label:I

    .line 121
    .line 122
    invoke-static {v2, v10, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    if-ne v2, v1, :cond_5

    .line 127
    .line 128
    return-object v1

    .line 129
    :cond_5
    :goto_0
    new-instance v2, Lteam/opay/pay/message/utils/MessageStorage;

    .line 130
    .line 131
    invoke-direct {v2}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Lteam/opay/pay/message/utils/MessageStorage;->e()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_7

    .line 143
    .line 144
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    new-instance v3, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1$2;

    .line 149
    .line 150
    iget-object v4, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 151
    .line 152
    invoke-direct {v3, v4, v9}, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1$2;-><init>(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljr2;)V

    .line 153
    .line 154
    .line 155
    iput v5, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->label:I

    .line 156
    .line 157
    invoke-static {v2, v3, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    if-ne v2, v1, :cond_6

    .line 162
    .line 163
    return-object v1

    .line 164
    :cond_6
    :goto_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 165
    .line 166
    return-object v1

    .line 167
    :cond_7
    sget-object v2, Lteam/opay/pay/message/cache/MsgCacheUtil;->a:Lteam/opay/pay/message/cache/MsgCacheUtil;

    .line 168
    .line 169
    invoke-virtual {v2, v11}, Lteam/opay/pay/message/cache/MsgCacheUtil;->h(Ljava/lang/String;)Lteam/opay/pay/message/bean/MessageLocalNum;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    invoke-virtual {v2, v10}, Lteam/opay/pay/message/cache/MsgCacheUtil;->b(Lteam/opay/pay/message/bean/MessageLocalNum;)Ljava/util/ArrayList;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    new-instance v12, Lteam/opay/pay/message/utils/MessageStorage;

    .line 178
    .line 179
    invoke-direct {v12}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 180
    .line 181
    .line 182
    sget-object v13, Lhpc;->a:Lhpc;

    .line 183
    .line 184
    invoke-virtual {v13}, Lhpc;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 185
    .line 186
    .line 187
    move-result-object v13

    .line 188
    if-eqz v13, :cond_8

    .line 189
    .line 190
    invoke-interface {v13}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    goto :goto_2

    .line 195
    :cond_8
    move-object v13, v9

    .line 196
    :goto_2
    new-instance v14, Lteam/opay/pay/message/bean/NoticeRequestV2;

    .line 197
    .line 198
    invoke-virtual {v12}, Lteam/opay/pay/message/utils/MessageStorage;->b()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v15

    .line 202
    invoke-virtual {v12}, Lteam/opay/pay/message/utils/MessageStorage;->e()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    invoke-direct {v14, v15, v12, v13, v5}, Lteam/opay/pay/message/bean/NoticeRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v11}, Lteam/opay/pay/message/cache/MsgCacheUtil;->f(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    :try_start_1
    sget-object v2, Lteam/opay/pay/message/net/ApiFactory;->a:Lteam/opay/pay/message/net/ApiFactory;

    .line 214
    .line 215
    iget-object v12, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->$ctx:Landroid/content/Context;

    .line 216
    .line 217
    invoke-virtual {v2, v12}, Lteam/opay/pay/message/net/ApiFactory;->a(Landroid/content/Context;)Lkv;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    if-eqz v2, :cond_a

    .line 222
    .line 223
    iput-object v11, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$0:Ljava/lang/Object;

    .line 224
    .line 225
    iput-object v10, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$1:Ljava/lang/Object;

    .line 226
    .line 227
    iput-object v5, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$2:Ljava/lang/Object;

    .line 228
    .line 229
    iput-object v6, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$3:Ljava/lang/Object;

    .line 230
    .line 231
    iput v7, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->I$0:I

    .line 232
    .line 233
    iput v4, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->label:I

    .line 234
    .line 235
    invoke-interface {v2, v14, v0}, Lkv;->a(Lteam/opay/pay/message/bean/NoticeRequestV2;Ljr2;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    if-ne v2, v1, :cond_9

    .line 240
    .line 241
    return-object v1

    .line 242
    :cond_9
    move-object v12, v11

    .line 243
    const/4 v4, 0x0

    .line 244
    move-object v11, v10

    .line 245
    move-object v10, v5

    .line 246
    move-object v5, v6

    .line 247
    :goto_3
    :try_start_2
    check-cast v2, Lteam/opay/pay/message/net/ResultData;

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :catch_0
    move v2, v4

    .line 251
    move-object v4, v5

    .line 252
    move-object v5, v10

    .line 253
    move-object v10, v11

    .line 254
    move-object v11, v12

    .line 255
    goto/16 :goto_d

    .line 256
    .line 257
    :catch_1
    move-object v4, v6

    .line 258
    const/4 v2, 0x0

    .line 259
    goto/16 :goto_d

    .line 260
    .line 261
    :cond_a
    move-object v2, v9

    .line 262
    move-object v12, v11

    .line 263
    const/4 v4, 0x0

    .line 264
    move-object v11, v10

    .line 265
    move-object v10, v5

    .line 266
    move-object v5, v6

    .line 267
    :goto_4
    if-eqz v2, :cond_10

    .line 268
    .line 269
    invoke-virtual {v2}, Lteam/opay/pay/message/net/ResultData;->a()Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v13

    .line 273
    if-nez v13, :cond_b

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_b
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 277
    .line 278
    .line 279
    move-result v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    const/16 v14, 0xc8

    .line 281
    .line 282
    if-ne v13, v14, :cond_10

    .line 283
    .line 284
    :try_start_3
    invoke-virtual {v2}, Lteam/opay/pay/message/net/ResultData;->b()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    check-cast v4, Lteam/opay/pay/message/bean/MessageList;

    .line 289
    .line 290
    if-eqz v4, :cond_c

    .line 291
    .line 292
    invoke-virtual {v4}, Lteam/opay/pay/message/bean/MessageList;->a()Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    goto :goto_5

    .line 297
    :catch_2
    move-object v4, v5

    .line 298
    move-object v5, v10

    .line 299
    move-object v10, v11

    .line 300
    move-object v11, v12

    .line 301
    const/4 v2, 0x1

    .line 302
    goto/16 :goto_d

    .line 303
    .line 304
    :cond_c
    move-object v4, v9

    .line 305
    :goto_5
    if-eqz v4, :cond_f

    .line 306
    .line 307
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    if-eqz v4, :cond_d

    .line 312
    .line 313
    goto :goto_8

    .line 314
    :cond_d
    sget-object v4, Lteam/opay/pay/message/net/Status;->SUCCESS:Lteam/opay/pay/message/net/Status;

    .line 315
    .line 316
    invoke-virtual {v2}, Lteam/opay/pay/message/net/ResultData;->b()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    check-cast v2, Lteam/opay/pay/message/bean/MessageList;

    .line 321
    .line 322
    if-eqz v2, :cond_e

    .line 323
    .line 324
    invoke-virtual {v2}, Lteam/opay/pay/message/bean/MessageList;->a()Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    move-object v13, v5

    .line 329
    :goto_6
    move-object v5, v4

    .line 330
    const/4 v4, 0x1

    .line 331
    goto :goto_c

    .line 332
    :cond_e
    :goto_7
    move-object v13, v5

    .line 333
    move-object v2, v9

    .line 334
    goto :goto_6

    .line 335
    :cond_f
    :goto_8
    sget-object v4, Lteam/opay/pay/message/net/Status;->EMPTY:Lteam/opay/pay/message/net/Status;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_10
    :goto_9
    if-eqz v2, :cond_12

    .line 339
    .line 340
    :try_start_4
    invoke-virtual {v2}, Lteam/opay/pay/message/net/ResultData;->a()Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v13

    .line 344
    if-nez v13, :cond_11

    .line 345
    .line 346
    goto :goto_b

    .line 347
    :cond_11
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 348
    .line 349
    .line 350
    move-result v13

    .line 351
    const/16 v14, 0x194

    .line 352
    .line 353
    if-ne v13, v14, :cond_12

    .line 354
    .line 355
    sget-object v2, Lteam/opay/pay/message/net/Status;->EMPTY:Lteam/opay/pay/message/net/Status;

    .line 356
    .line 357
    move-object v13, v5

    .line 358
    move-object v5, v2

    .line 359
    :goto_a
    move-object v2, v9

    .line 360
    goto :goto_c

    .line 361
    :cond_12
    :goto_b
    if-eqz v2, :cond_13

    .line 362
    .line 363
    invoke-virtual {v2}, Lteam/opay/pay/message/net/ResultData;->c()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 367
    if-nez v2, :cond_14

    .line 368
    .line 369
    :cond_13
    move-object v2, v6

    .line 370
    :cond_14
    :try_start_5
    sget-object v5, Lteam/opay/pay/message/net/Status;->ERROR:Lteam/opay/pay/message/net/Status;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 371
    .line 372
    move-object v13, v2

    .line 373
    goto :goto_a

    .line 374
    :goto_c
    move-object/from16 v18, v12

    .line 375
    .line 376
    move-object v12, v10

    .line 377
    move-object v10, v11

    .line 378
    move-object/from16 v11, v18

    .line 379
    .line 380
    goto :goto_e

    .line 381
    :catch_3
    move-object v5, v10

    .line 382
    move-object v10, v11

    .line 383
    move-object v11, v12

    .line 384
    move/from16 v18, v4

    .line 385
    .line 386
    move-object v4, v2

    .line 387
    move/from16 v2, v18

    .line 388
    .line 389
    :catch_4
    :goto_d
    sget-object v12, Lteam/opay/pay/message/net/Status;->NET_ERROR:Lteam/opay/pay/message/net/Status;

    .line 390
    .line 391
    move-object v13, v4

    .line 392
    move v4, v2

    .line 393
    move-object v2, v9

    .line 394
    move-object/from16 v18, v12

    .line 395
    .line 396
    move-object v12, v5

    .line 397
    move-object/from16 v5, v18

    .line 398
    .line 399
    :goto_e
    new-instance v14, Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .line 403
    .line 404
    if-eqz v2, :cond_17

    .line 405
    .line 406
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 407
    .line 408
    .line 409
    move-result v15

    .line 410
    if-eqz v15, :cond_15

    .line 411
    .line 412
    goto :goto_10

    .line 413
    :cond_15
    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v15

    .line 417
    check-cast v15, Lteam/opay/pay/message/bean/Message;

    .line 418
    .line 419
    if-eqz v15, :cond_16

    .line 420
    .line 421
    invoke-virtual {v15}, Lteam/opay/pay/message/bean/Message;->d()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v15

    .line 425
    goto :goto_f

    .line 426
    :cond_16
    move-object v15, v9

    .line 427
    :goto_f
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 428
    .line 429
    .line 430
    goto :goto_11

    .line 431
    :cond_17
    :goto_10
    move-object v15, v9

    .line 432
    :goto_11
    sget-object v2, Lteam/opay/pay/message/cache/MsgCacheUtil;->a:Lteam/opay/pay/message/cache/MsgCacheUtil;

    .line 433
    .line 434
    invoke-virtual {v2, v11}, Lteam/opay/pay/message/cache/MsgCacheUtil;->g(Ljava/lang/String;)Lteam/opay/pay/message/bean/MessageLocalNum;

    .line 435
    .line 436
    .line 437
    move-result-object v8

    .line 438
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 439
    .line 440
    .line 441
    move-result v17

    .line 442
    if-nez v17, :cond_19

    .line 443
    .line 444
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 445
    .line 446
    .line 447
    if-eqz v15, :cond_18

    .line 448
    .line 449
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    .line 450
    .line 451
    .line 452
    move-result v17

    .line 453
    if-nez v17, :cond_19

    .line 454
    .line 455
    :cond_18
    iget-object v15, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 456
    .line 457
    invoke-static {v15, v12, v8}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->x(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljava/util/ArrayList;Lteam/opay/pay/message/bean/MessageLocalNum;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v15

    .line 461
    :cond_19
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->Y(Ljava/lang/Iterable;)Ljava/util/List;

    .line 462
    .line 463
    .line 464
    move-result-object v12

    .line 465
    iget-object v14, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 466
    .line 467
    invoke-static {v14}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->u(Lteam/opay/pay/message/module/OMessageCenterViewModel;)Landroidx/lifecycle/MutableLiveData;

    .line 468
    .line 469
    .line 470
    move-result-object v14

    .line 471
    if-eqz v4, :cond_1a

    .line 472
    .line 473
    const/16 v16, 0x1

    .line 474
    .line 475
    goto :goto_12

    .line 476
    :cond_1a
    const/16 v16, 0x0

    .line 477
    .line 478
    :goto_12
    invoke-static/range {v16 .. v16}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    invoke-static {v4, v12}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    invoke-virtual {v14, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    iget-object v4, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 490
    .line 491
    invoke-static {v4}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->w(Lteam/opay/pay/message/module/OMessageCenterViewModel;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    if-nez v4, :cond_1d

    .line 496
    .line 497
    if-nez v15, :cond_1b

    .line 498
    .line 499
    const-string v4, "opay_Payments"

    .line 500
    .line 501
    move-object v6, v4

    .line 502
    goto :goto_13

    .line 503
    :cond_1b
    move-object v6, v15

    .line 504
    :goto_13
    invoke-virtual {v2}, Lteam/opay/pay/message/cache/MsgCacheUtil;->d()Ljava/util/ArrayList;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    if-eqz v2, :cond_1c

    .line 513
    .line 514
    goto :goto_14

    .line 515
    :cond_1c
    const-string v6, "opay_Services"

    .line 516
    .line 517
    goto :goto_14

    .line 518
    :cond_1d
    iget-object v2, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 519
    .line 520
    invoke-static {v2}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->w(Lteam/opay/pay/message/module/OMessageCenterViewModel;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    if-nez v2, :cond_1e

    .line 525
    .line 526
    goto :goto_14

    .line 527
    :cond_1e
    move-object v6, v2

    .line 528
    :goto_14
    iget-object v2, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 529
    .line 530
    invoke-static {v2, v12, v8}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->y(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljava/util/List;Lteam/opay/pay/message/bean/MessageLocalNum;)Lteam/opay/pay/message/bean/MessageShowNum;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    iget-object v4, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 535
    .line 536
    invoke-static {v4, v6, v2}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->r(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljava/lang/String;Lteam/opay/pay/message/bean/MessageShowNum;)Z

    .line 537
    .line 538
    .line 539
    iget-object v4, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 540
    .line 541
    invoke-virtual {v4}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->K()Landroidx/lifecycle/MutableLiveData;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    invoke-static {v6, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    invoke-virtual {v4, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    iget-object v2, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 553
    .line 554
    new-instance v4, Ljava/util/ArrayList;

    .line 555
    .line 556
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .line 558
    .line 559
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 560
    .line 561
    .line 562
    move-result-object v8

    .line 563
    :cond_1f
    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 564
    .line 565
    .line 566
    move-result v14

    .line 567
    if-eqz v14, :cond_20

    .line 568
    .line 569
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v14

    .line 573
    move-object v15, v14

    .line 574
    check-cast v15, Lteam/opay/pay/message/bean/Message;

    .line 575
    .line 576
    invoke-static {v2, v15, v6}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->s(Lteam/opay/pay/message/module/OMessageCenterViewModel;Lteam/opay/pay/message/bean/Message;Ljava/lang/String;)Z

    .line 577
    .line 578
    .line 579
    move-result v15

    .line 580
    if-eqz v15, :cond_1f

    .line 581
    .line 582
    invoke-interface {v4, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    goto :goto_15

    .line 586
    :cond_20
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    new-instance v8, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1$3;

    .line 591
    .line 592
    iget-object v14, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 593
    .line 594
    invoke-direct {v8, v14, v9}, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1$3;-><init>(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljr2;)V

    .line 595
    .line 596
    .line 597
    iput-object v11, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$0:Ljava/lang/Object;

    .line 598
    .line 599
    iput-object v10, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$1:Ljava/lang/Object;

    .line 600
    .line 601
    iput-object v5, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$2:Ljava/lang/Object;

    .line 602
    .line 603
    iput-object v13, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$3:Ljava/lang/Object;

    .line 604
    .line 605
    iput-object v12, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$4:Ljava/lang/Object;

    .line 606
    .line 607
    iput-object v6, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$5:Ljava/lang/Object;

    .line 608
    .line 609
    iput-object v4, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->L$6:Ljava/lang/Object;

    .line 610
    .line 611
    iput v3, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->label:I

    .line 612
    .line 613
    invoke-static {v2, v8, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    if-ne v2, v1, :cond_21

    .line 618
    .line 619
    return-object v1

    .line 620
    :cond_21
    move-object v1, v4

    .line 621
    move-object v2, v6

    .line 622
    move-object v6, v10

    .line 623
    move-object v8, v11

    .line 624
    move-object v3, v12

    .line 625
    move-object v4, v13

    .line 626
    :goto_16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 627
    .line 628
    .line 629
    move-result v10

    .line 630
    if-eqz v10, :cond_22

    .line 631
    .line 632
    iget-object v4, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 633
    .line 634
    invoke-virtual {v4}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 635
    .line 636
    .line 637
    move-result-object v4

    .line 638
    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    goto :goto_17

    .line 642
    :cond_22
    sget-object v10, Lteam/opay/pay/message/net/Status;->NET_ERROR:Lteam/opay/pay/message/net/Status;

    .line 643
    .line 644
    if-eq v5, v10, :cond_23

    .line 645
    .line 646
    sget-object v10, Lteam/opay/pay/message/net/Status;->ERROR:Lteam/opay/pay/message/net/Status;

    .line 647
    .line 648
    if-ne v5, v10, :cond_24

    .line 649
    .line 650
    :cond_23
    iget-object v10, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 651
    .line 652
    invoke-virtual {v10}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->F()Landroidx/lifecycle/MutableLiveData;

    .line 653
    .line 654
    .line 655
    move-result-object v10

    .line 656
    invoke-virtual {v10, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 657
    .line 658
    .line 659
    :cond_24
    iget-object v4, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 660
    .line 661
    invoke-static {v4, v1}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->t(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljava/util/List;)V

    .line 662
    .line 663
    .line 664
    iget-object v4, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 665
    .line 666
    invoke-virtual {v4}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 667
    .line 668
    .line 669
    move-result-object v4

    .line 670
    invoke-virtual {v4, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    :goto_17
    sget-object v4, Lteam/opay/pay/message/net/Status;->SUCCESS:Lteam/opay/pay/message/net/Status;

    .line 674
    .line 675
    if-ne v5, v4, :cond_25

    .line 676
    .line 677
    sget-object v4, Lteam/opay/pay/message/cache/MsgCacheUtil;->a:Lteam/opay/pay/message/cache/MsgCacheUtil;

    .line 678
    .line 679
    invoke-virtual {v4, v6, v3, v8}, Lteam/opay/pay/message/cache/MsgCacheUtil;->k(Lteam/opay/pay/message/bean/MessageLocalNum;Ljava/util/List;Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    :cond_25
    iget-object v4, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 683
    .line 684
    invoke-static {v4}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->v(Lteam/opay/pay/message/module/OMessageCenterViewModel;)Ljava/util/ArrayList;

    .line 685
    .line 686
    .line 687
    move-result-object v4

    .line 688
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    move-result v4

    .line 692
    if-nez v4, :cond_27

    .line 693
    .line 694
    iget-object v4, v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 695
    .line 696
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v1

    .line 700
    check-cast v1, Lteam/opay/pay/message/bean/Message;

    .line 701
    .line 702
    if-eqz v1, :cond_26

    .line 703
    .line 704
    invoke-virtual {v1}, Lteam/opay/pay/message/bean/Message;->e()Ljava/lang/Long;

    .line 705
    .line 706
    .line 707
    move-result-object v9

    .line 708
    :cond_26
    invoke-static {v4, v2, v9}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->q(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljava/lang/String;Ljava/lang/Long;)V

    .line 709
    .line 710
    .line 711
    :cond_27
    sget-object v1, Lteam/opay/pay/message/cache/MsgCacheUtil;->a:Lteam/opay/pay/message/cache/MsgCacheUtil;

    .line 712
    .line 713
    invoke-virtual {v1, v3, v8}, Lteam/opay/pay/message/cache/MsgCacheUtil;->j(Ljava/util/List;Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 717
    .line 718
    return-object v1
.end method
