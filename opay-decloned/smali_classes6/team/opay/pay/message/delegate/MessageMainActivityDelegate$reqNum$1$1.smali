.class final Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MessageMainActivityDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "team.opay.pay.message.delegate.MessageMainActivityDelegate$reqNum$1$1"
    f = "MessageMainActivityDelegate.kt"
    l = {
        0x62,
        0x64
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $phone:Ljava/lang/String;

.field final synthetic $uid:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->$phone:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->$uid:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->this$0:Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;

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
    new-instance p1, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->$phone:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->$uid:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->this$0:Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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
    iget v1, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->label:I

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
    :try_start_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lteam/opay/pay/message/cache/MsgCacheUtil;->a:Lteam/opay/pay/message/cache/MsgCacheUtil;

    .line 39
    .line 40
    iget-object v1, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->$phone:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lteam/opay/pay/message/cache/MsgCacheUtil;->g(Ljava/lang/String;)Lteam/opay/pay/message/bean/MessageLocalNum;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v1}, Lteam/opay/pay/message/cache/MsgCacheUtil;->b(Lteam/opay/pay/message/bean/MessageLocalNum;)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    new-instance p1, Lteam/opay/pay/message/bean/HomeMsgNumReq;

    .line 51
    .line 52
    new-instance v1, Lteam/opay/pay/message/utils/MessageStorage;

    .line 53
    .line 54
    invoke-direct {v1}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lteam/opay/pay/message/utils/MessageStorage;->b()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget-object v7, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->$phone:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v8, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->$uid:Ljava/lang/String;

    .line 64
    .line 65
    sget-object v1, Lhpc;->a:Lhpc;

    .line 66
    .line 67
    invoke-virtual {v1}, Lhpc;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    move-object v5, p1

    .line 76
    invoke-direct/range {v5 .. v10}, Lteam/opay/pay/message/bean/HomeMsgNumReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->this$0:Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;

    .line 80
    .line 81
    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 82
    .line 83
    sget-object v5, Lteam/opay/pay/message/net/ApiFactory;->a:Lteam/opay/pay/message/net/ApiFactory;

    .line 84
    .line 85
    invoke-static {v1}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;->access$getContext$p(Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;)Landroidx/appcompat/app/AppCompatActivity;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v1}, Lteam/opay/pay/message/net/ApiFactory;->a(Landroid/content/Context;)Lkv;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    iput v3, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->label:I

    .line 99
    .line 100
    invoke-interface {v1, p1, p0}, Lkv;->j(Lteam/opay/pay/message/bean/HomeMsgNumReq;Ljr2;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-ne p1, v0, :cond_3

    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_3
    :goto_0
    check-cast p1, Lteam/opay/pay/message/net/ResultData;

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    move-object p1, v4

    .line 111
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    goto :goto_3

    .line 116
    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 117
    .line 118
    invoke-static {p1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    move-object p1, v4

    .line 133
    :cond_5
    check-cast p1, Lteam/opay/pay/message/net/ResultData;

    .line 134
    .line 135
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    new-instance v3, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1$1;

    .line 140
    .line 141
    iget-object v5, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->this$0:Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;

    .line 142
    .line 143
    invoke-direct {v3, v5, p1, v4}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1$1;-><init>(Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;Lteam/opay/pay/message/net/ResultData;Ljr2;)V

    .line 144
    .line 145
    .line 146
    iput v2, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;->label:I

    .line 147
    .line 148
    invoke-static {v1, v3, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-ne p1, v0, :cond_6

    .line 153
    .line 154
    return-object v0

    .line 155
    :cond_6
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 156
    .line 157
    return-object p1
.end method
