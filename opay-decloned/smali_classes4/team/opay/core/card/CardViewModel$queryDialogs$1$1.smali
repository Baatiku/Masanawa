.class final Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;
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
        "Lteam/opay/odialog/net/ADListResponse;",
        "Lteam/opay/core/android/arch/Resource<",
        "+",
        "Lteam/opay/core/api/CardDialogData;",
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
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "",
        "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
        "adData",
        "Lteam/opay/odialog/net/ADListResponse;",
        "popUp",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/CardDialogData;"
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
    c = "team.opay.core.card.CardViewModel$queryDialogs$1$1"
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
            "Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;->this$0:Lteam/opay/core/card/CardViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;->$classify:Ljava/lang/String;

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
    check-cast p1, Lteam/opay/odialog/net/ADListResponse;

    check-cast p2, Lteam/opay/core/android/arch/Resource;

    check-cast p3, Ljr2;

    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;->invoke(Lteam/opay/odialog/net/ADListResponse;Lteam/opay/core/android/arch/Resource;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lteam/opay/odialog/net/ADListResponse;Lteam/opay/core/android/arch/Resource;Ljr2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/odialog/net/ADListResponse;",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/CardDialogData;",
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
    new-instance v0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;

    iget-object v1, p0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;->this$0:Lteam/opay/core/card/CardViewModel;

    iget-object v2, p0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;->$classify:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p3}, Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;-><init>(Lteam/opay/core/card/CardViewModel;Ljava/lang/String;Ljr2;)V

    iput-object p1, v0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lteam/opay/odialog/net/ADListResponse;

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;->L$1:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lteam/opay/core/android/arch/Resource;

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object v3, p0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;->this$0:Lteam/opay/core/card/CardViewModel;

    .line 32
    .line 33
    invoke-static {v3, p1}, Lteam/opay/core/card/CardViewModel;->Q(Lteam/opay/core/card/CardViewModel;Lteam/opay/odialog/net/ADListResponse;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;

    .line 44
    .line 45
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;

    .line 50
    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {v3}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    :cond_0
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-static {p1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    :cond_1
    if-eqz v0, :cond_6

    .line 70
    .line 71
    invoke-virtual {v0}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lteam/opay/core/api/CardDialogData;

    .line 76
    .line 77
    if-eqz p1, :cond_6

    .line 78
    .line 79
    invoke-virtual {p1}, Lteam/opay/core/api/CardDialogData;->a()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;->this$0:Lteam/opay/core/card/CardViewModel;

    .line 86
    .line 87
    iget-object v3, p0, Lteam/opay/core/card/CardViewModel$queryDialogs$1$1;->$classify:Ljava/lang/String;

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_6

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;

    .line 104
    .line 105
    invoke-static {v0, v4}, Lteam/opay/core/card/CardViewModel;->U(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/api/CardHomePagePopUpDtoListItem;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_2

    .line 110
    .line 111
    invoke-virtual {v4}, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;->c()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    if-eqz v5, :cond_5

    .line 116
    .line 117
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-nez v5, :cond_3

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {v4}, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;->c()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_4

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_5
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_6
    new-instance p1, Lkotlin/Pair;

    .line 144
    .line 145
    invoke-direct {p1, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return-object p1

    .line 149
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 150
    .line 151
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 152
    .line 153
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1
.end method
