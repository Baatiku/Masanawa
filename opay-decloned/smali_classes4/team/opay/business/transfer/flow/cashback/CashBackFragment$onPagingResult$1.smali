.class final Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CashBackFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->r0(Lteam/opay/business/transfer/flow/api/CashBackRsp;Lteam/opay/core/http/internal/PagingResult;)V
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
    c = "team.opay.business.transfer.flow.cashback.CashBackFragment$onPagingResult$1"
    f = "CashBackFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $res:Lteam/opay/business/transfer/flow/api/CashBackRsp;

.field final synthetic $result:Lteam/opay/core/http/internal/PagingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;


# direct methods
.method public constructor <init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Lteam/opay/business/transfer/flow/api/CashBackRsp;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
            ">;",
            "Lteam/opay/business/transfer/flow/cashback/CashBackFragment;",
            "Lteam/opay/business/transfer/flow/api/CashBackRsp;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$res:Lteam/opay/business/transfer/flow/api/CashBackRsp;

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
    new-instance p1, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$res:Lteam/opay/business/transfer/flow/api/CashBackRsp;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;-><init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Lteam/opay/business/transfer/flow/api/CashBackRsp;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_13

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->e()Lteam/opay/core/http/arch/Status;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Lteam/opay/core/http/arch/Status;->SUCCESS:Lteam/opay/core/http/arch/Status;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-ne p1, v0, :cond_8

    .line 23
    .line 24
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->b()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    move-object v4, v0

    .line 51
    check-cast v4, Lteam/opay/business/transfer/flow/api/CashBackBean;

    .line 52
    .line 53
    invoke-virtual {v4}, Lteam/opay/business/transfer/flow/api/CashBackBean;->a()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/4 v5, 0x2

    .line 58
    if-ne v4, v5, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move-object v0, v1

    .line 62
    :goto_0
    check-cast v0, Lteam/opay/business/transfer/flow/api/CashBackBean;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object v0, v1

    .line 66
    :goto_1
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/CashBackBean;->b()Lteam/opay/business/transfer/flow/api/CashBackItem;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :cond_3
    if-eqz v1, :cond_4

    .line 73
    .line 74
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 75
    .line 76
    invoke-static {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->S(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/CashBackBean;->b()Lteam/opay/business/transfer/flow/api/CashBackItem;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/CashBackItem;->a()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    invoke-virtual {p1, v0, v1}, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->u(J)V

    .line 89
    .line 90
    .line 91
    :cond_4
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 92
    .line 93
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$res:Lteam/opay/business/transfer/flow/api/CashBackRsp;

    .line 94
    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/CashBackRsp;->f()Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    const/4 v0, 0x0

    .line 109
    :goto_2
    invoke-static {p1, v0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->a0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Z)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 113
    .line 114
    invoke-static {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->R(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 119
    .line 120
    invoke-static {v0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->T(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {p1, v0}, Lteam/opay/business/transfer/flow/cashback/CashbackFooterAdapter;->w(Z)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 128
    .line 129
    invoke-static {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->S(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->s()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const-string v0, "Month"

    .line 138
    .line 139
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_b

    .line 144
    .line 145
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 146
    .line 147
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$res:Lteam/opay/business/transfer/flow/api/CashBackRsp;

    .line 148
    .line 149
    invoke-static {p1, v0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->Z(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Lteam/opay/business/transfer/flow/api/CashBackRsp;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 153
    .line 154
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-ne p1, v2, :cond_6

    .line 159
    .line 160
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 161
    .line 162
    invoke-static {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->S(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->t()Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 171
    .line 172
    .line 173
    :cond_6
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 174
    .line 175
    invoke-static {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->S(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->t()Ljava/util/ArrayList;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 184
    .line 185
    invoke-virtual {v0}, Lteam/opay/core/http/internal/PagingResult;->b()Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-nez v0, :cond_7

    .line 190
    .line 191
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    :cond_7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_8
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 200
    .line 201
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->e()Lteam/opay/core/http/arch/Status;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    sget-object v0, Lteam/opay/core/http/arch/Status;->ERROR:Lteam/opay/core/http/arch/Status;

    .line 206
    .line 207
    if-ne p1, v0, :cond_b

    .line 208
    .line 209
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 210
    .line 211
    invoke-virtual {p1}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 216
    .line 217
    invoke-virtual {v0}, Lteam/opay/core/http/internal/PagingResult;->a()Lteam/opay/core/http/arch/ApiError;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-eqz v0, :cond_9

    .line 222
    .line 223
    invoke-virtual {v0}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    :cond_9
    if-nez v1, :cond_a

    .line 228
    .line 229
    const-string v1, ""

    .line 230
    .line 231
    :cond_a
    invoke-static {p1, v1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_b
    :goto_3
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 235
    .line 236
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->h()Z

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    const-string v0, "loadingView"

    .line 241
    .line 242
    if-eqz p1, :cond_c

    .line 243
    .line 244
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 245
    .line 246
    invoke-static {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->P(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lx56;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    iget-object p1, p1, Lx56;->w:Lteam/opay/core/widget/OPaySwipeRefreshLayout;

    .line 251
    .line 252
    invoke-virtual {p1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 253
    .line 254
    .line 255
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 256
    .line 257
    invoke-static {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->P(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lx56;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    iget-object p1, p1, Lx56;->t:Lteam/opay/core/widget/PulseLoaderView;

    .line 262
    .line 263
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-static {p1, v2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_5

    .line 270
    .line 271
    :cond_c
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 272
    .line 273
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->f()Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-eqz p1, :cond_d

    .line 278
    .line 279
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 280
    .line 281
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$res:Lteam/opay/business/transfer/flow/api/CashBackRsp;

    .line 282
    .line 283
    invoke-static {p1, v0}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->Z(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Lteam/opay/business/transfer/flow/api/CashBackRsp;)V

    .line 284
    .line 285
    .line 286
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 287
    .line 288
    invoke-static {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->X(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)V

    .line 289
    .line 290
    .line 291
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 292
    .line 293
    invoke-static {p1, v2}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->b0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Z)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_5

    .line 297
    .line 298
    :cond_d
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 299
    .line 300
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->g()Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-eqz p1, :cond_e

    .line 305
    .line 306
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 307
    .line 308
    invoke-static {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->P(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lx56;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    iget-object p1, p1, Lx56;->s:Lteam/opay/core/widget/HttpViewGroup;

    .line 313
    .line 314
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 315
    .line 316
    invoke-virtual {v0}, Lteam/opay/core/http/internal/PagingResult;->a()Lteam/opay/core/http/arch/ApiError;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {p1, v0}, Lteam/opay/core/widget/HttpViewGroup;->u(Lteam/opay/core/http/arch/ApiError;)V

    .line 321
    .line 322
    .line 323
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 324
    .line 325
    invoke-static {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->P(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lx56;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    iget-object p1, p1, Lx56;->r:Ly56;

    .line 330
    .line 331
    iget-object p1, p1, Ly56;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 332
    .line 333
    const-string v0, "walletNothingFiltered"

    .line 334
    .line 335
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 339
    .line 340
    .line 341
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 342
    .line 343
    invoke-static {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->X(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)V

    .line 344
    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_e
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 348
    .line 349
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->e()Lteam/opay/core/http/arch/Status;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    sget-object v1, Lteam/opay/core/http/arch/Status;->ERROR:Lteam/opay/core/http/arch/Status;

    .line 354
    .line 355
    if-ne p1, v1, :cond_f

    .line 356
    .line 357
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 358
    .line 359
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    if-gt p1, v2, :cond_12

    .line 364
    .line 365
    :cond_f
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 366
    .line 367
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    if-ne p1, v2, :cond_11

    .line 372
    .line 373
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 374
    .line 375
    invoke-static {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->S(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->s()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    const-string v1, "Year"

    .line 384
    .line 385
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result p1

    .line 389
    const-wide/16 v1, 0x1f4

    .line 390
    .line 391
    if-eqz p1, :cond_10

    .line 392
    .line 393
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 394
    .line 395
    invoke-static {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->Q(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lteam/opay/business/transfer/flow/cashback/CashBackAdapter;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    invoke-virtual {p1}, Landroidx/paging/PagingDataAdapter;->getItemCount()I

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    iget-object v4, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 404
    .line 405
    invoke-static {v4, p1, v1, v2}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->Y(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;IJ)V

    .line 406
    .line 407
    .line 408
    goto :goto_4

    .line 409
    :cond_10
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 410
    .line 411
    invoke-static {p1, v3, v1, v2}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->Y(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;IJ)V

    .line 412
    .line 413
    .line 414
    :cond_11
    :goto_4
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 415
    .line 416
    invoke-static {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->P(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lx56;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    iget-object p1, p1, Lx56;->w:Lteam/opay/core/widget/OPaySwipeRefreshLayout;

    .line 421
    .line 422
    invoke-virtual {p1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 423
    .line 424
    .line 425
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 426
    .line 427
    invoke-static {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->P(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lx56;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    iget-object p1, p1, Lx56;->s:Lteam/opay/core/widget/HttpViewGroup;

    .line 432
    .line 433
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 434
    .line 435
    .line 436
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 437
    .line 438
    invoke-static {p1, v3}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->b0(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;Z)V

    .line 439
    .line 440
    .line 441
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/cashback/CashBackFragment;

    .line 442
    .line 443
    invoke-static {p1}, Lteam/opay/business/transfer/flow/cashback/CashBackFragment;->P(Lteam/opay/business/transfer/flow/cashback/CashBackFragment;)Lx56;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    iget-object p1, p1, Lx56;->t:Lteam/opay/core/widget/PulseLoaderView;

    .line 448
    .line 449
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-static {p1, v3}, Lg0g;->j(Landroid/view/View;Z)V

    .line 453
    .line 454
    .line 455
    :cond_12
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 456
    .line 457
    return-object p1

    .line 458
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 459
    .line 460
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 461
    .line 462
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    throw p1
.end method
