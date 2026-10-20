.class final Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CardViewModel.kt"

# interfaces
.implements Lhm6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/card/CardViewModel$queryDialogs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lhm6<",
        "Lkotlin/Pair<",
        "+",
        "Ljava/util/List<",
        "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
        ">;+",
        "Ljava/util/List<",
        "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
        ">;>;",
        "Lteam/opay/core/android/arch/Resource<",
        "+",
        "Lteam/opay/core/api/CardHoldingTransaction;",
        ">;",
        "Ljr2<",
        "-",
        "Lkotlin/Pair<",
        "+",
        "Ljava/util/List<",
        "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
        ">;+",
        "Ljava/util/List<",
        "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00012\u001e\u0010\u0004\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "",
        "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
        "dialogs",
        "holding",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/CardHoldingTransaction;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Ln33;
    c = "team.opay.core.card.CardViewModel$queryDialogs$1$2"
    f = "CardViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $classify:Ljava/lang/String;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/core/card/CardViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/core/card/CardViewModel;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/CardViewModel;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;->this$0:Lteam/opay/core/card/CardViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;->$classify:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Pair;

    check-cast p2, Lteam/opay/core/android/arch/Resource;

    check-cast p3, Ljr2;

    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;->invoke(Lkotlin/Pair;Lteam/opay/core/android/arch/Resource;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/Pair;Lteam/opay/core/android/arch/Resource;Ljr2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
            ">;+",
            "Ljava/util/List<",
            "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
            ">;>;",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/CardHoldingTransaction;",
            ">;",
            "Ljr2<",
            "-",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
            ">;+",
            "Ljava/util/List<",
            "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    new-instance v0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;

    iget-object v1, p0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;->this$0:Lteam/opay/core/card/CardViewModel;

    iget-object v2, p0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;->$classify:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p3}, Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;-><init>(Lteam/opay/core/card/CardViewModel;Ljava/lang/String;Ljr2;)V

    iput-object p1, v0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, v0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;->label:I

    .line 7
    .line 8
    if-nez v1, :cond_3

    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;->L$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lkotlin/Pair;

    .line 16
    .line 17
    iget-object v2, v0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;->L$1:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Lteam/opay/core/android/arch/Resource;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v3, 0x0

    .line 29
    :goto_0
    sget-object v4, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 30
    .line 31
    if-ne v3, v4, :cond_2

    .line 32
    .line 33
    invoke-virtual {v2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    iget-object v3, v0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;->this$0:Lteam/opay/core/card/CardViewModel;

    .line 40
    .line 41
    invoke-virtual {v2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lteam/opay/core/api/CardHoldingTransaction;

    .line 46
    .line 47
    invoke-virtual {v4}, Lteam/opay/core/api/CardHoldingTransaction;->e()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    invoke-static {v4}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/4 v4, 0x3

    .line 65
    :goto_1
    invoke-virtual {v2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Lteam/opay/core/api/CardHoldingTransaction;

    .line 70
    .line 71
    invoke-virtual {v5}, Lteam/opay/core/api/CardHoldingTransaction;->d()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v3, v4, v5}, Lteam/opay/core/card/CardViewModel;->V(Lteam/opay/core/card/CardViewModel;ILjava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    invoke-virtual {v2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Lteam/opay/core/api/CardHoldingTransaction;

    .line 86
    .line 87
    invoke-virtual {v3}, Lteam/opay/core/api/CardHoldingTransaction;->f()Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const/4 v4, 0x1

    .line 92
    invoke-static {v4}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Ljava/util/List;

    .line 107
    .line 108
    invoke-virtual {v2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Lteam/opay/core/api/CardHoldingTransaction;

    .line 113
    .line 114
    invoke-virtual {v4}, Lteam/opay/core/api/CardHoldingTransaction;->c()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    invoke-virtual {v2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Lteam/opay/core/api/CardHoldingTransaction;

    .line 123
    .line 124
    invoke-virtual {v4}, Lteam/opay/core/api/CardHoldingTransaction;->b()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-virtual {v2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Lteam/opay/core/api/CardHoldingTransaction;

    .line 133
    .line 134
    invoke-virtual {v4}, Lteam/opay/core/api/CardHoldingTransaction;->a()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    new-instance v4, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;

    .line 139
    .line 140
    iget-object v12, v0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;->$classify:Ljava/lang/String;

    .line 141
    .line 142
    const/16 v15, 0x180

    .line 143
    .line 144
    const/16 v16, 0x0

    .line 145
    .line 146
    const/4 v6, 0x0

    .line 147
    const/4 v8, 0x0

    .line 148
    const-string v9, "holding"

    .line 149
    .line 150
    const/4 v13, 0x0

    .line 151
    const/4 v14, 0x0

    .line 152
    move-object v5, v4

    .line 153
    invoke-direct/range {v5 .. v16}, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/CardDataDialogShowRate;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    iget-object v3, v0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$2;->this$0:Lteam/opay/core/card/CardViewModel;

    .line 160
    .line 161
    invoke-virtual {v2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Lteam/opay/core/api/CardHoldingTransaction;

    .line 166
    .line 167
    invoke-virtual {v3, v2}, Lteam/opay/core/card/CardViewModel;->Y1(Lteam/opay/core/api/CardHoldingTransaction;)V

    .line 168
    .line 169
    .line 170
    :cond_2
    return-object v1

    .line 171
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 172
    .line 173
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 174
    .line 175
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw v1
.end method
