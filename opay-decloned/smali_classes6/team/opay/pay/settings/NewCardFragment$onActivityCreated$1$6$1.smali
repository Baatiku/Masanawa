.class final Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewCardFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/settings/NewCardFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
    c = "team.opay.pay.settings.NewCardFragment$onActivityCreated$1$6$1"
    f = "NewCardFragment.kt"
    l = {
        0xaf,
        0xbb,
        0xc1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/pay/settings/NewCardFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/settings/NewCardFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/settings/NewCardFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

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
    new-instance p1, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;-><init>(Lteam/opay/pay/settings/NewCardFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;->label:I

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
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

    .line 40
    .line 41
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lig6;

    .line 46
    .line 47
    iget-object p1, p1, Lig6;->e:Lteam/opay/pay/settings/BandCardEditText;

    .line 48
    .line 49
    invoke-virtual {p1}, Lteam/opay/pay/settings/BandCardEditText;->getBankCardText()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v1, p0, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

    .line 54
    .line 55
    invoke-static {v1}, Lteam/opay/pay/settings/NewCardFragment;->z0(Lteam/opay/pay/settings/NewCardFragment;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {p1, v1}, Li02;->k(Ljava/lang/String;Ljava/util/List;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/4 v1, 0x0

    .line 64
    if-eqz p1, :cond_5

    .line 65
    .line 66
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance v2, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1$1;

    .line 71
    .line 72
    iget-object v3, p0, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

    .line 73
    .line 74
    invoke-direct {v2, v3, v1}, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1$1;-><init>(Lteam/opay/pay/settings/NewCardFragment;Ljr2;)V

    .line 75
    .line 76
    .line 77
    iput v4, p0, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;->label:I

    .line 78
    .line 79
    invoke-static {p1, v2, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-ne p1, v0, :cond_4

    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_5
    iget-object p1, p0, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

    .line 90
    .line 91
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lig6;

    .line 96
    .line 97
    iget-object p1, p1, Lig6;->e:Lteam/opay/pay/settings/BandCardEditText;

    .line 98
    .line 99
    invoke-virtual {p1}, Lteam/opay/pay/settings/BandCardEditText;->getBankCardText()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object v4, p0, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

    .line 104
    .line 105
    invoke-static {v4}, Lteam/opay/pay/settings/NewCardFragment;->y0(Lteam/opay/pay/settings/NewCardFragment;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {p1, v4}, Li02;->d(Ljava/lang/String;Ljava/util/List;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_6

    .line 114
    .line 115
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance v2, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1$2;

    .line 120
    .line 121
    iget-object v4, p0, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

    .line 122
    .line 123
    invoke-direct {v2, v4, v1}, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1$2;-><init>(Lteam/opay/pay/settings/NewCardFragment;Ljr2;)V

    .line 124
    .line 125
    .line 126
    iput v3, p0, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;->label:I

    .line 127
    .line 128
    invoke-static {p1, v2, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-ne p1, v0, :cond_7

    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_6
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-instance v3, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1$3;

    .line 140
    .line 141
    iget-object v4, p0, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

    .line 142
    .line 143
    invoke-direct {v3, v4, v1}, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1$3;-><init>(Lteam/opay/pay/settings/NewCardFragment;Ljr2;)V

    .line 144
    .line 145
    .line 146
    iput v2, p0, Lteam/opay/pay/settings/NewCardFragment$onActivityCreated$1$6$1;->label:I

    .line 147
    .line 148
    invoke-static {p1, v3, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-ne p1, v0, :cond_7

    .line 153
    .line 154
    return-object v0

    .line 155
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 156
    .line 157
    return-object p1
.end method
