.class final Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PushDispatcher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "team.opay.pay.fcm.dispatcher.opb.PushDispatcher$dispatchMessage$2"
    f = "PushDispatcher.kt"
    l = {
        0x54,
        0x5d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $filterType:Ljava/lang/String;

.field final synthetic $pushSource:Ljava/lang/String;

.field final synthetic $pushText:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;Ljava/lang/String;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->$pushText:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->this$0:Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->$pushSource:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->$filterType:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->invokeSuspend$lambda$5$lambda$2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->invokeSuspend$lambda$7$lambda$6(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->invokeSuspend$lambda$5$lambda$1(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->invokeSuspend$lambda$5$lambda$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->invokeSuspend$lambda$5$lambda$3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$5$lambda$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Message id is empty, source="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private static final invokeSuspend$lambda$5$lambda$2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Expired message, source="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, ", messageId="

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method private static final invokeSuspend$lambda$5$lambda$3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Duplicate message, source="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, ", messageId="

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method private static final invokeSuspend$lambda$5$lambda$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ReceiveId not match, source="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, ", messageId="

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, ", receiveId="

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method private static final invokeSuspend$lambda$7$lambda$6(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "Message format error! throwable: "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 6
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
    new-instance p1, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->$pushText:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->this$0:Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->$pushSource:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->$filterType:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;-><init>(Ljava/lang/String;Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;Ljava/lang/String;Ljava/lang/String;Ljr2;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget v0, v1, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->label:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-eq v0, v4, :cond_1

    .line 14
    .line 15
    if-ne v0, v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_0
    iget-object v0, v1, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->L$0:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v1, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->$pushText:Ljava/lang/String;

    .line 37
    .line 38
    :try_start_0
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 39
    .line 40
    const-class v5, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;

    .line 41
    .line 42
    invoke-static {v0, v5}, Ljt6;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;

    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_1
    iget-object v6, v1, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->this$0:Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;

    .line 65
    .line 66
    iget-object v13, v1, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->$pushSource:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v14, v1, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->$filterType:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_b

    .line 75
    .line 76
    move-object v15, v0

    .line 77
    check-cast v15, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;

    .line 78
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    invoke-virtual {v15, v7, v8}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->setReceiveTime(J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v15}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const-string v7, ""

    .line 91
    .line 92
    if-nez v5, :cond_3

    .line 93
    .line 94
    move-object v5, v7

    .line 95
    :cond_3
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    const/4 v12, 0x0

    .line 100
    if-nez v8, :cond_4

    .line 101
    .line 102
    sget-object v7, Lfre;->a:Lfre;

    .line 103
    .line 104
    invoke-static {v6}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->l(Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;)Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    new-array v12, v12, [Lkotlin/Pair;

    .line 112
    .line 113
    const-string v9, "wss_message_received_empty"

    .line 114
    .line 115
    move-object v10, v15

    .line 116
    move-object v11, v13

    .line 117
    invoke-virtual/range {v7 .. v12}, Lfre;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 118
    .line 119
    .line 120
    sget-object v2, Ll5c;->a:Ll5c;

    .line 121
    .line 122
    new-instance v3, Lteam/opay/pay/fcm/dispatcher/opb/a;

    .line 123
    .line 124
    invoke-direct {v3, v13}, Lteam/opay/pay/fcm/dispatcher/opb/a;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ll5c;->c(Lkotlin/jvm/functions/Function0;)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_5

    .line 131
    .line 132
    :cond_4
    invoke-virtual {v15}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getReceiveId()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    if-nez v8, :cond_5

    .line 137
    .line 138
    move-object v11, v7

    .line 139
    goto :goto_2

    .line 140
    :cond_5
    move-object v11, v8

    .line 141
    :goto_2
    sget-object v16, Lfre;->a:Lfre;

    .line 142
    .line 143
    invoke-static {v6}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->l(Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;)Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    new-array v10, v12, [Lkotlin/Pair;

    .line 151
    .line 152
    const-string v9, "wss_message_received"

    .line 153
    .line 154
    move-object/from16 v7, v16

    .line 155
    .line 156
    move-object/from16 v17, v10

    .line 157
    .line 158
    move-object v10, v15

    .line 159
    move-object/from16 p1, v11

    .line 160
    .line 161
    move-object v11, v13

    .line 162
    const/4 v3, 0x0

    .line 163
    move-object/from16 v12, v17

    .line 164
    .line 165
    invoke-virtual/range {v7 .. v12}, Lfre;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v15}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->isMessageExpired$opay_push_release()Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-eqz v7, :cond_6

    .line 173
    .line 174
    invoke-static {v6}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->l(Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;)Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    const-string v9, "wss_message_expired"

    .line 179
    .line 180
    new-array v12, v3, [Lkotlin/Pair;

    .line 181
    .line 182
    move-object/from16 v7, v16

    .line 183
    .line 184
    move-object v10, v15

    .line 185
    move-object v11, v13

    .line 186
    invoke-virtual/range {v7 .. v12}, Lfre;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 187
    .line 188
    .line 189
    sget-object v2, Ll5c;->a:Ll5c;

    .line 190
    .line 191
    new-instance v3, Lteam/opay/pay/fcm/dispatcher/opb/b;

    .line 192
    .line 193
    invoke-direct {v3, v13, v5}, Lteam/opay/pay/fcm/dispatcher/opb/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ll5c;->c(Lkotlin/jvm/functions/Function0;)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_5

    .line 200
    .line 201
    :cond_6
    invoke-static {v6}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->m(Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;)Lteam/opay/core/common/android/collection/FixedLinkedHashSet;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-virtual {v7, v5}, Lteam/opay/core/common/android/collection/FixedLinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    if-nez v7, :cond_7

    .line 210
    .line 211
    invoke-static {v6}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->l(Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;)Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    const-string v9, "wss_message_received_repeat"

    .line 216
    .line 217
    new-array v12, v3, [Lkotlin/Pair;

    .line 218
    .line 219
    move-object/from16 v7, v16

    .line 220
    .line 221
    move-object v10, v15

    .line 222
    move-object v11, v13

    .line 223
    invoke-virtual/range {v7 .. v12}, Lfre;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 224
    .line 225
    .line 226
    sget-object v2, Ll5c;->a:Ll5c;

    .line 227
    .line 228
    new-instance v3, Lteam/opay/pay/fcm/dispatcher/opb/c;

    .line 229
    .line 230
    invoke-direct {v3, v13, v5}, Lteam/opay/pay/fcm/dispatcher/opb/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v3}, Ll5c;->c(Lkotlin/jvm/functions/Function0;)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_5

    .line 237
    .line 238
    :cond_7
    sget-object v7, Lq6c;->b:Lq6c;

    .line 239
    .line 240
    invoke-static {v6}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->m(Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;)Lteam/opay/core/common/android/collection/FixedLinkedHashSet;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    invoke-virtual {v7, v8}, Lq6c;->h(Ljava/util/Set;)V

    .line 245
    .line 246
    .line 247
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    if-nez v7, :cond_8

    .line 252
    .line 253
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    new-instance v11, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2$2$4;

    .line 258
    .line 259
    const/4 v10, 0x0

    .line 260
    move-object v5, v11

    .line 261
    move-object v7, v15

    .line 262
    move-object v8, v13

    .line 263
    move-object v9, v14

    .line 264
    invoke-direct/range {v5 .. v10}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2$2$4;-><init>(Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;Ljava/lang/String;Ljr2;)V

    .line 265
    .line 266
    .line 267
    iput-object v0, v1, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->L$0:Ljava/lang/Object;

    .line 268
    .line 269
    iput v4, v1, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->label:I

    .line 270
    .line 271
    invoke-static {v3, v11, v1}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    if-ne v3, v2, :cond_b

    .line 276
    .line 277
    return-object v2

    .line 278
    :cond_8
    invoke-static {v6}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->n(Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;)Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    if-eqz v4, :cond_9

    .line 283
    .line 284
    invoke-interface {v4}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    :goto_3
    move-object/from16 v12, p1

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_9
    const/4 v4, 0x0

    .line 292
    goto :goto_3

    .line 293
    :goto_4
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    if-eqz v4, :cond_a

    .line 298
    .line 299
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    new-instance v4, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2$2$5;

    .line 304
    .line 305
    const/4 v10, 0x0

    .line 306
    move-object v5, v4

    .line 307
    move-object v7, v15

    .line 308
    move-object v8, v13

    .line 309
    move-object v9, v14

    .line 310
    invoke-direct/range {v5 .. v10}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2$2$5;-><init>(Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;Ljava/lang/String;Ljr2;)V

    .line 311
    .line 312
    .line 313
    iput-object v0, v1, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->L$0:Ljava/lang/Object;

    .line 314
    .line 315
    const/4 v5, 0x2

    .line 316
    iput v5, v1, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->label:I

    .line 317
    .line 318
    invoke-static {v3, v4, v1}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    if-ne v3, v2, :cond_b

    .line 323
    .line 324
    return-object v2

    .line 325
    :cond_a
    invoke-static {v6}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->l(Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;)Landroid/content/Context;

    .line 326
    .line 327
    .line 328
    move-result-object v8

    .line 329
    const-string v9, "wss_message_received_diff"

    .line 330
    .line 331
    new-array v2, v3, [Lkotlin/Pair;

    .line 332
    .line 333
    move-object/from16 v7, v16

    .line 334
    .line 335
    move-object v10, v15

    .line 336
    move-object v11, v13

    .line 337
    move-object v3, v12

    .line 338
    move-object v12, v2

    .line 339
    invoke-virtual/range {v7 .. v12}, Lfre;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 340
    .line 341
    .line 342
    sget-object v2, Ll5c;->a:Ll5c;

    .line 343
    .line 344
    new-instance v4, Lteam/opay/pay/fcm/dispatcher/opb/d;

    .line 345
    .line 346
    invoke-direct {v4, v13, v5, v3}, Lteam/opay/pay/fcm/dispatcher/opb/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2, v4}, Ll5c;->c(Lkotlin/jvm/functions/Function0;)V

    .line 350
    .line 351
    .line 352
    :cond_b
    :goto_5
    iget-object v2, v1, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->this$0:Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;

    .line 353
    .line 354
    iget-object v3, v1, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;->$pushSource:Ljava/lang/String;

    .line 355
    .line 356
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    if-eqz v0, :cond_c

    .line 361
    .line 362
    sget-object v4, Lfre;->a:Lfre;

    .line 363
    .line 364
    invoke-static {v2}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->l(Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;)Landroid/content/Context;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    const-string v5, "wss_message_received_exception"

    .line 369
    .line 370
    invoke-virtual {v4, v2, v5, v3}, Lfre;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    sget-object v2, Ll5c;->a:Ll5c;

    .line 374
    .line 375
    new-instance v3, Lteam/opay/pay/fcm/dispatcher/opb/e;

    .line 376
    .line 377
    invoke-direct {v3, v0}, Lteam/opay/pay/fcm/dispatcher/opb/e;-><init>(Ljava/lang/Throwable;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2, v3}, Ll5c;->c(Lkotlin/jvm/functions/Function0;)V

    .line 381
    .line 382
    .line 383
    :cond_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 384
    .line 385
    return-object v0
.end method
