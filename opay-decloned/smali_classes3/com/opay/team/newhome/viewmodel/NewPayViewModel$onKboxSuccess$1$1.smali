.class final Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewPayViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->U0(Lcom/opay/team/newhome/reward/HomeKBoxRsp;)V
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
    c = "com.opay.team.newhome.viewmodel.NewPayViewModel$onKboxSuccess$1$1"
    f = "NewPayViewModel.kt"
    l = {
        0x2ac
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $rsp:Lcom/opay/team/newhome/reward/HomeKBoxRsp;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/reward/HomeKBoxRsp;",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;->$rsp:Lcom/opay/team/newhome/reward/HomeKBoxRsp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

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
    new-instance p1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;->$rsp:Lcom/opay/team/newhome/reward/HomeKBoxRsp;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;-><init>(Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;->label:I

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
    goto :goto_1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    iget-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;->$rsp:Lcom/opay/team/newhome/reward/HomeKBoxRsp;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/HomeKBoxRsp;->j()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/opay/team/newhome/reward/WidgetModule;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/WidgetModule;->k()Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/WidgetModule;->k()Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    const-wide/16 v7, 0x0

    .line 68
    .line 69
    cmp-long v9, v5, v7

    .line 70
    .line 71
    if-lez v9, :cond_2

    .line 72
    .line 73
    sget-object v5, Lteam/opay/pay/wallet/view/KBoxVoucherTextView;->e:Lteam/opay/pay/wallet/view/KBoxVoucherTextView$Companion;

    .line 74
    .line 75
    invoke-virtual {v5}, Lteam/opay/pay/wallet/view/KBoxVoucherTextView$Companion;->a()Ljava/util/Map;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/WidgetModule;->p()Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 86
    .line 87
    .line 88
    move-result-wide v7

    .line 89
    :cond_3
    invoke-static {v7, v8}, Ldf1;->e(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    new-instance v7, Lcom/opay/team/newhome/home/kbox/CountDownData;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/WidgetModule;->k()Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 100
    .line 101
    .line 102
    move-result-wide v8

    .line 103
    invoke-direct {v7, v8, v9, v3, v4}, Lcom/opay/team/newhome/home/kbox/CountDownData;-><init>(JJ)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance v1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1$2;

    .line 115
    .line 116
    iget-object v3, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 117
    .line 118
    iget-object v4, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;->$rsp:Lcom/opay/team/newhome/reward/HomeKBoxRsp;

    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    invoke-direct {v1, v3, v4, v5}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1$2;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Ljr2;)V

    .line 122
    .line 123
    .line 124
    iput v2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;->label:I

    .line 125
    .line 126
    invoke-static {p1, v1, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-ne p1, v0, :cond_5

    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 134
    .line 135
    return-object p1
.end method
