.class final Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BaseCardFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2;->c(Lkotlin/Pair;Ljr2;)Ljava/lang/Object;
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
    c = "team.opay.core.card.BaseCardFragment$addFirstJob$1$2$1"
    f = "BaseCardFragment.kt"
    l = {
        0x7e,
        0x84,
        0x88,
        0x8c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/core/card/BaseCardFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/card/BaseCardFragment<",
            "TVB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/card/BaseCardFragment;Lkotlin/Pair;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/BaseCardFragment<",
            "TVB;>;",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
            ">;+",
            "Ljava/util/List<",
            "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
            ">;>;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->this$0:Lteam/opay/core/card/BaseCardFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->$it:Lkotlin/Pair;

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
    new-instance p1, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->this$0:Lteam/opay/core/card/BaseCardFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->$it:Lkotlin/Pair;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;-><init>(Lteam/opay/core/card/BaseCardFragment;Lkotlin/Pair;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eq v1, v5, :cond_1

    .line 14
    .line 15
    if-eq v1, v4, :cond_1

    .line 16
    .line 17
    if-eq v1, v3, :cond_1

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    iget-object v1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->L$1:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Ljava/util/Iterator;

    .line 37
    .line 38
    iget-object v6, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v6, Lteam/opay/core/card/BaseCardFragment;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->this$0:Lteam/opay/core/card/BaseCardFragment;

    .line 50
    .line 51
    iget-object v1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->$it:Lkotlin/Pair;

    .line 52
    .line 53
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v1}, Lteam/opay/core/card/BaseCardFragment;->c0(Lteam/opay/core/card/BaseCardFragment;Lkotlin/Pair;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    iget-object v1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->this$0:Lteam/opay/core/card/BaseCardFragment;

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    move-object v6, v1

    .line 69
    move-object v1, p1

    .line 70
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_6

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;

    .line 81
    .line 82
    invoke-virtual {p1}, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;->h()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    const-string v8, "card_home_pop_up_type"

    .line 87
    .line 88
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_4

    .line 93
    .line 94
    invoke-virtual {p1}, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;->f()Lteam/opay/odialog/net/AdDataItem;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    iput-object v6, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    iput-object v1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->L$1:Ljava/lang/Object;

    .line 103
    .line 104
    iput v5, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->label:I

    .line 105
    .line 106
    invoke-static {v6, p1, p0}, Lteam/opay/core/card/BaseCardFragment;->d0(Lteam/opay/core/card/BaseCardFragment;Lteam/opay/odialog/net/AdDataItem;Ljr2;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-ne p1, v0, :cond_3

    .line 111
    .line 112
    return-object v0

    .line 113
    :cond_4
    invoke-virtual {p1}, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;->h()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    const-string v8, "holding"

    .line 118
    .line 119
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_5

    .line 124
    .line 125
    invoke-virtual {v6}, Lteam/opay/core/card/BaseCardFragment;->z0()Lteam/opay/core/card/CardViewModel;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-virtual {v7}, Lteam/opay/core/card/CardViewModel;->O0()Lteam/opay/core/api/CardHoldingTransaction;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    if-eqz v7, :cond_5

    .line 134
    .line 135
    invoke-virtual {v6}, Lteam/opay/core/card/BaseCardFragment;->z0()Lteam/opay/core/card/CardViewModel;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lteam/opay/core/card/CardViewModel;->O0()Lteam/opay/core/api/CardHoldingTransaction;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iput-object v6, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->L$0:Ljava/lang/Object;

    .line 147
    .line 148
    iput-object v1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->L$1:Ljava/lang/Object;

    .line 149
    .line 150
    iput v4, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->label:I

    .line 151
    .line 152
    invoke-static {v6, p1, p0}, Lteam/opay/core/card/BaseCardFragment;->j0(Lteam/opay/core/card/BaseCardFragment;Lteam/opay/core/api/CardHoldingTransaction;Ljr2;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-ne p1, v0, :cond_3

    .line 157
    .line 158
    return-object v0

    .line 159
    :cond_5
    iput-object v6, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->L$0:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->L$1:Ljava/lang/Object;

    .line 162
    .line 163
    iput v3, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->label:I

    .line 164
    .line 165
    invoke-static {v6, p1, p0}, Lteam/opay/core/card/BaseCardFragment;->f0(Lteam/opay/core/card/BaseCardFragment;Lteam/opay/core/api/CardHomePagePopUpDtoListItem;Ljr2;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-ne p1, v0, :cond_3

    .line 170
    .line 171
    return-object v0

    .line 172
    :cond_6
    iget-object p1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->this$0:Lteam/opay/core/card/BaseCardFragment;

    .line 173
    .line 174
    const/4 v1, 0x0

    .line 175
    iput-object v1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->L$0:Ljava/lang/Object;

    .line 176
    .line 177
    iput-object v1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->L$1:Ljava/lang/Object;

    .line 178
    .line 179
    iput v2, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;->label:I

    .line 180
    .line 181
    invoke-static {p1, p0}, Lteam/opay/core/card/BaseCardFragment;->i0(Lteam/opay/core/card/BaseCardFragment;Ljr2;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-ne p1, v0, :cond_7

    .line 186
    .line 187
    return-object v0

    .line 188
    :cond_7
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 189
    .line 190
    return-object p1
.end method
