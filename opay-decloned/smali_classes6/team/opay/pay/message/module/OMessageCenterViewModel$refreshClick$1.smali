.class final Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OMessageCenterViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/message/module/OMessageCenterViewModel;->P(Landroid/content/Context;)V
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
    c = "team.opay.pay.message.module.OMessageCenterViewModel$refreshClick$1"
    f = "OMessageCenterViewModel.kt"
    l = {
        0x91,
        0x98
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $ctx:Landroid/content/Context;

.field L$0:Ljava/lang/Object;

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
            "Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->$ctx:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

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
    new-instance p1, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->$ctx:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;-><init>(Landroid/content/Context;Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    iget-object v1, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lteam/opay/pay/message/bean/TokenRequestV2;

    .line 32
    .line 33
    :try_start_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lteam/opay/pay/message/delegate/MessageMainControl;->a:Lteam/opay/pay/message/delegate/MessageMainControl;

    .line 43
    .line 44
    iget-object v1, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->$ctx:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lteam/opay/pay/message/delegate/MessageMainControl;->G(Landroid/content/Context;)Lteam/opay/pay/message/bean/TokenRequestV2;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object p1, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->$ctx:Landroid/content/Context;

    .line 51
    .line 52
    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 53
    .line 54
    sget-object v5, Lteam/opay/pay/message/net/ApiFactory;->a:Lteam/opay/pay/message/net/ApiFactory;

    .line 55
    .line 56
    invoke-virtual {v5, p1}, Lteam/opay/pay/message/net/ApiFactory;->a(Landroid/content/Context;)Lkv;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    iput-object v1, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    iput v3, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->label:I

    .line 65
    .line 66
    invoke-interface {p1, v1, p0}, Lkv;->b(Lteam/opay/pay/message/bean/TokenRequestV2;Ljr2;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, v0, :cond_3

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_3
    :goto_0
    check-cast p1, Lteam/opay/pay/message/net/ResultData;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    move-object p1, v4

    .line 77
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    goto :goto_3

    .line 82
    :goto_2
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 83
    .line 84
    invoke-static {p1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_5

    .line 97
    .line 98
    move-object p1, v4

    .line 99
    :cond_5
    check-cast p1, Lteam/opay/pay/message/net/ResultData;

    .line 100
    .line 101
    sget-object v3, Lteam/opay/pay/message/delegate/MessageMainControl;->a:Lteam/opay/pay/message/delegate/MessageMainControl;

    .line 102
    .line 103
    invoke-virtual {v1}, Lteam/opay/pay/message/bean/TokenRequestV2;->a()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v3, v1, p1}, Lteam/opay/pay/message/delegate/MessageMainControl;->m(Ljava/lang/String;Lteam/opay/pay/message/net/ResultData;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    iget-object v1, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 114
    .line 115
    iget-object v3, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->$ctx:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {v1, v3}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->O(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    :cond_6
    if-nez p1, :cond_7

    .line 121
    .line 122
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    new-instance v1, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1$1;

    .line 127
    .line 128
    iget-object v3, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 129
    .line 130
    invoke-direct {v1, v3, v4}, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1$1;-><init>(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljr2;)V

    .line 131
    .line 132
    .line 133
    iput-object v4, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->L$0:Ljava/lang/Object;

    .line 134
    .line 135
    iput v2, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;->label:I

    .line 136
    .line 137
    invoke-static {p1, v1, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-ne p1, v0, :cond_7

    .line 142
    .line 143
    return-object v0

    .line 144
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 145
    .line 146
    return-object p1
.end method
