.class final Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewCardFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/settings/NewCardFragment;->F0()V
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
    c = "team.opay.pay.settings.NewCardFragment$checkRegex$1"
    f = "NewCardFragment.kt"
    l = {
        0xf3,
        0xfc,
        0x103
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
            "Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

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
    new-instance p1, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;-><init>(Lteam/opay/pay/settings/NewCardFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;->label:I

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
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

    .line 43
    .line 44
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lig6;

    .line 49
    .line 50
    iget-object p1, p1, Lig6;->e:Lteam/opay/pay/settings/BandCardEditText;

    .line 51
    .line 52
    invoke-virtual {p1}, Lteam/opay/pay/settings/BandCardEditText;->getBankCardText()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v1, p0, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

    .line 57
    .line 58
    invoke-static {v1}, Lteam/opay/pay/settings/NewCardFragment;->z0(Lteam/opay/pay/settings/NewCardFragment;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {p1, v1}, Li02;->k(Ljava/lang/String;Ljava/util/List;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/4 v1, 0x0

    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v2, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1$1;

    .line 74
    .line 75
    iget-object v3, p0, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

    .line 76
    .line 77
    invoke-direct {v2, v3, v1}, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1$1;-><init>(Lteam/opay/pay/settings/NewCardFragment;Ljr2;)V

    .line 78
    .line 79
    .line 80
    iput v4, p0, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;->label:I

    .line 81
    .line 82
    invoke-static {p1, v2, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-ne p1, v0, :cond_4

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p1

    .line 92
    :cond_5
    iget-object p1, p0, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

    .line 93
    .line 94
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lig6;

    .line 99
    .line 100
    iget-object p1, p1, Lig6;->e:Lteam/opay/pay/settings/BandCardEditText;

    .line 101
    .line 102
    invoke-virtual {p1}, Lteam/opay/pay/settings/BandCardEditText;->getBankCardText()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const/4 v4, 0x0

    .line 107
    const/4 v5, 0x6

    .line 108
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const-string v4, "substring(...)"

    .line 113
    .line 114
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v4, p0, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

    .line 118
    .line 119
    invoke-static {v4}, Lteam/opay/pay/settings/NewCardFragment;->y0(Lteam/opay/pay/settings/NewCardFragment;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static {p1, v4}, Li02;->g(Ljava/lang/String;Ljava/util/List;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_7

    .line 128
    .line 129
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-instance v2, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1$2;

    .line 134
    .line 135
    iget-object v4, p0, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

    .line 136
    .line 137
    invoke-direct {v2, v4, v1}, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1$2;-><init>(Lteam/opay/pay/settings/NewCardFragment;Ljr2;)V

    .line 138
    .line 139
    .line 140
    iput v3, p0, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;->label:I

    .line 141
    .line 142
    invoke-static {p1, v2, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-ne p1, v0, :cond_6

    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_6
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 150
    .line 151
    return-object p1

    .line 152
    :cond_7
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    new-instance v3, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1$3;

    .line 157
    .line 158
    iget-object v4, p0, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;->this$0:Lteam/opay/pay/settings/NewCardFragment;

    .line 159
    .line 160
    invoke-direct {v3, v4, v1}, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1$3;-><init>(Lteam/opay/pay/settings/NewCardFragment;Ljr2;)V

    .line 161
    .line 162
    .line 163
    iput v2, p0, Lteam/opay/pay/settings/NewCardFragment$checkRegex$1;->label:I

    .line 164
    .line 165
    invoke-static {p1, v3, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-ne p1, v0, :cond_8

    .line 170
    .line 171
    return-object v0

    .line 172
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 173
    .line 174
    return-object p1
.end method
