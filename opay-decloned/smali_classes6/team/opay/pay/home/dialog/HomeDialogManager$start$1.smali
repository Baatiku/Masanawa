.class final Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeDialogManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/dialog/HomeDialogManager;->s(Landroidx/fragment/app/Fragment;)V
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
    c = "team.opay.pay.home.dialog.HomeDialogManager$start$1"
    f = "HomeDialogManager.kt"
    l = {
        0x31,
        0x34,
        0x34
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $fragment:Landroidx/fragment/app/Fragment;

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/home/dialog/HomeDialogManager;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/dialog/HomeDialogManager;Landroidx/fragment/app/Fragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/dialog/HomeDialogManager;",
            "Landroidx/fragment/app/Fragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->this$0:Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->$fragment:Landroidx/fragment/app/Fragment;

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
    new-instance p1, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->this$0:Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->$fragment:Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;-><init>(Lteam/opay/pay/home/dialog/HomeDialogManager;Landroidx/fragment/app/Fragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iget v1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->I$1:I

    .line 19
    .line 20
    iget v5, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->I$0:I

    .line 21
    .line 22
    iget-object v6, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$3:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v6, Lteam/opay/pay/home/dialog/HomeDialogTask;

    .line 25
    .line 26
    iget-object v7, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$2:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v7, Ljava/util/Iterator;

    .line 29
    .line 30
    iget-object v8, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$1:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v8, Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    iget-object v9, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v9, Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    iget v1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->I$1:I

    .line 52
    .line 53
    iget v5, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->I$0:I

    .line 54
    .line 55
    iget-object v6, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$3:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v6, Lteam/opay/pay/home/dialog/HomeDialogTask;

    .line 58
    .line 59
    iget-object v7, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$2:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v7, Ljava/util/Iterator;

    .line 62
    .line 63
    iget-object v8, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$1:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v8, Landroidx/fragment/app/Fragment;

    .line 66
    .line 67
    iget-object v9, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v9, Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 70
    .line 71
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :cond_2
    iget v1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->I$1:I

    .line 77
    .line 78
    iget v5, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->I$0:I

    .line 79
    .line 80
    iget-object v6, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$3:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v6, Lteam/opay/pay/home/dialog/HomeDialogTask;

    .line 83
    .line 84
    iget-object v7, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$2:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v7, Ljava/util/Iterator;

    .line 87
    .line 88
    iget-object v8, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$1:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v8, Landroidx/fragment/app/Fragment;

    .line 91
    .line 92
    iget-object v9, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$0:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v9, Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 95
    .line 96
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->this$0:Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 104
    .line 105
    invoke-static {p1}, Lteam/opay/pay/home/dialog/HomeDialogManager;->f(Lteam/opay/pay/home/dialog/HomeDialogManager;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object v1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->this$0:Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 110
    .line 111
    iget-object v5, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->$fragment:Landroidx/fragment/app/Fragment;

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const/4 v6, 0x0

    .line 118
    move-object v7, p1

    .line 119
    move-object v9, v1

    .line 120
    move-object v8, v5

    .line 121
    const/4 v1, 0x0

    .line 122
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_a

    .line 127
    .line 128
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    add-int/lit8 v5, v1, 0x1

    .line 133
    .line 134
    if-gez v1, :cond_4

    .line 135
    .line 136
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 137
    .line 138
    .line 139
    :cond_4
    move-object v6, p1

    .line 140
    check-cast v6, Lteam/opay/pay/home/dialog/HomeDialogTask;

    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {v9, p1}, Lteam/opay/pay/home/dialog/HomeDialogManager;->h(Lteam/opay/pay/home/dialog/HomeDialogManager;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6}, Lteam/opay/pay/home/dialog/HomeDialogTask;->g()Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-nez p1, :cond_7

    .line 158
    .line 159
    invoke-virtual {v6}, Lteam/opay/pay/home/dialog/HomeDialogTask;->h()Lkotlinx/coroutines/l;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-eqz p1, :cond_5

    .line 164
    .line 165
    invoke-interface {p1}, Lkotlinx/coroutines/l;->isActive()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-ne p1, v4, :cond_5

    .line 170
    .line 171
    invoke-virtual {v6}, Lteam/opay/pay/home/dialog/HomeDialogTask;->h()Lkotlinx/coroutines/l;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-eqz p1, :cond_5

    .line 176
    .line 177
    iput-object v9, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$0:Ljava/lang/Object;

    .line 178
    .line 179
    iput-object v8, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$1:Ljava/lang/Object;

    .line 180
    .line 181
    iput-object v7, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$2:Ljava/lang/Object;

    .line 182
    .line 183
    iput-object v6, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$3:Ljava/lang/Object;

    .line 184
    .line 185
    iput v5, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->I$0:I

    .line 186
    .line 187
    iput v1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->I$1:I

    .line 188
    .line 189
    iput v4, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->label:I

    .line 190
    .line 191
    invoke-interface {p1, p0}, Lkotlinx/coroutines/l;->g(Ljr2;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    if-ne p1, v0, :cond_5

    .line 196
    .line 197
    return-object v0

    .line 198
    :cond_5
    :goto_1
    invoke-virtual {v9, v8}, Lteam/opay/pay/home/dialog/HomeDialogManager;->p(Landroidx/fragment/app/Fragment;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_7

    .line 203
    .line 204
    iput-object v9, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$0:Ljava/lang/Object;

    .line 205
    .line 206
    iput-object v8, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$1:Ljava/lang/Object;

    .line 207
    .line 208
    iput-object v7, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$2:Ljava/lang/Object;

    .line 209
    .line 210
    iput-object v6, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$3:Ljava/lang/Object;

    .line 211
    .line 212
    iput v5, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->I$0:I

    .line 213
    .line 214
    iput v1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->I$1:I

    .line 215
    .line 216
    iput v3, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->label:I

    .line 217
    .line 218
    invoke-virtual {v6, p0}, Lteam/opay/pay/home/dialog/HomeDialogTask;->d(Ljr2;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    if-ne p1, v0, :cond_6

    .line 223
    .line 224
    return-object v0

    .line 225
    :cond_6
    :goto_2
    check-cast p1, Landroidx/fragment/app/DialogFragment;

    .line 226
    .line 227
    if-eqz p1, :cond_7

    .line 228
    .line 229
    iput-object v9, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$0:Ljava/lang/Object;

    .line 230
    .line 231
    iput-object v8, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$1:Ljava/lang/Object;

    .line 232
    .line 233
    iput-object v7, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$2:Ljava/lang/Object;

    .line 234
    .line 235
    iput-object v6, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->L$3:Ljava/lang/Object;

    .line 236
    .line 237
    iput v5, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->I$0:I

    .line 238
    .line 239
    iput v1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->I$1:I

    .line 240
    .line 241
    iput v2, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;->label:I

    .line 242
    .line 243
    invoke-static {v9, p1, v8, v6, p0}, Lteam/opay/pay/home/dialog/HomeDialogManager;->k(Lteam/opay/pay/home/dialog/HomeDialogManager;Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/Fragment;Lteam/opay/pay/home/dialog/HomeDialogTask;Ljr2;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    if-ne p1, v0, :cond_7

    .line 248
    .line 249
    return-object v0

    .line 250
    :cond_7
    :goto_3
    invoke-static {v9}, Lteam/opay/pay/home/dialog/HomeDialogManager;->d(Lteam/opay/pay/home/dialog/HomeDialogManager;)Lteam/opay/pay/home/dialog/HomeDialogManager$a;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    if-eqz p1, :cond_8

    .line 255
    .line 256
    invoke-interface {p1, v6}, Lteam/opay/pay/home/dialog/HomeDialogManager$a;->b(Lteam/opay/pay/home/dialog/HomeDialogTask;)Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    if-ne p1, v4, :cond_8

    .line 261
    .line 262
    sget-object p1, Lteam/opay/pay/home/dialog/HomeDialogManager;->f:Lteam/opay/pay/home/dialog/HomeDialogManager$Companion;

    .line 263
    .line 264
    invoke-virtual {p1, v4}, Lteam/opay/pay/home/dialog/HomeDialogManager$Companion;->b(Z)V

    .line 265
    .line 266
    .line 267
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 268
    .line 269
    return-object p1

    .line 270
    :cond_8
    invoke-static {v9}, Lteam/opay/pay/home/dialog/HomeDialogManager;->f(Lteam/opay/pay/home/dialog/HomeDialogManager;)Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    sub-int/2addr p1, v4

    .line 279
    if-ne v1, p1, :cond_9

    .line 280
    .line 281
    sget-object p1, Lteam/opay/pay/home/dialog/HomeDialogManager;->f:Lteam/opay/pay/home/dialog/HomeDialogManager$Companion;

    .line 282
    .line 283
    invoke-virtual {p1, v4}, Lteam/opay/pay/home/dialog/HomeDialogManager$Companion;->b(Z)V

    .line 284
    .line 285
    .line 286
    :cond_9
    move v1, v5

    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 290
    .line 291
    return-object p1
.end method
