.class final Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PushDispatcher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/push/core/biz/PushDispatcher;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "team.opay.business.push.core.biz.PushDispatcher$dispatchMessage$1"
    f = "PushDispatcher.kt"
    l = {
        0x3b,
        0x5b,
        0x65
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $filterType:Ljava/lang/String;

.field final synthetic $pushSource:Ljava/lang/String;

.field final synthetic $pushText:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/business/push/core/biz/PushDispatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lteam/opay/business/push/core/biz/PushDispatcher;Ljava/lang/String;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/business/push/core/biz/PushDispatcher;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->$pushText:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->this$0:Lteam/opay/business/push/core/biz/PushDispatcher;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->$pushSource:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->$filterType:Ljava/lang/String;

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
    new-instance p1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->$pushText:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->this$0:Lteam/opay/business/push/core/biz/PushDispatcher;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->$pushSource:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->$filterType:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;-><init>(Ljava/lang/String;Lteam/opay/business/push/core/biz/PushDispatcher;Ljava/lang/String;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v0, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v6, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2
    iget-object v0, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$6:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v8, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lteam/opay/business/push/core/api/PushMessage;

    iget-object v9, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lteam/opay/business/push/core/biz/PushDispatcher;

    iget-object v12, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v0, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->$pushText:Ljava/lang/String;

    :try_start_0
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    const-class v8, Lteam/opay/business/push/core/api/PushMessage;

    invoke-static {v0, v8}, Lkt6;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/business/push/core/api/PushMessage;

    .line 4
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move-object v12, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 5
    :goto_2
    iget-object v11, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->this$0:Lteam/opay/business/push/core/biz/PushDispatcher;

    iget-object v10, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->$pushSource:Ljava/lang/String;

    iget-object v9, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->$filterType:Ljava/lang/String;

    invoke-static {v12}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, v12

    check-cast v0, Lteam/opay/business/push/core/api/PushMessage;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Lteam/opay/business/push/core/api/PushMessage;->setReceiveTime(J)V

    .line 7
    invoke-virtual {v0}, Lteam/opay/business/push/core/api/PushMessage;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v13, ""

    if-nez v8, :cond_4

    move-object v8, v13

    .line 8
    :cond_4
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_5

    .line 9
    sget-object v13, Lzqe;->a:Lzqe;

    invoke-static {v11}, Lteam/opay/business/push/core/biz/PushDispatcher;->f(Lteam/opay/business/push/core/biz/PushDispatcher;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    new-array v2, v5, [Lkotlin/Pair;

    const-string v15, "wss_message_received_empty"

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v18, v2

    invoke-virtual/range {v13 .. v18}, Lzqe;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 10
    sget-object v0, Lik8;->c:Lik8;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push -> message id is empty, source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7, v6, v7}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 11
    :cond_5
    invoke-virtual {v0}, Lteam/opay/business/push/core/api/PushMessage;->getReceiveId()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_6

    move-object v14, v13

    .line 12
    :cond_6
    invoke-static {v14}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-static {v11}, Lteam/opay/business/push/core/biz/PushDispatcher;->h(Lteam/opay/business/push/core/biz/PushDispatcher;)Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-interface {v13}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_7
    move-object v13, v7

    :goto_3
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 13
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v13

    new-instance v15, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$1;

    invoke-direct {v15, v11, v14, v8, v7}, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$1;-><init>(Lteam/opay/business/push/core/biz/PushDispatcher;Ljava/lang/String;Ljava/lang/String;Ljr2;)V

    iput-object v12, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$3:Ljava/lang/Object;

    iput-object v0, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$5:Ljava/lang/Object;

    iput-object v14, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$6:Ljava/lang/Object;

    iput v4, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->label:I

    invoke-static {v13, v15, v1}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_8

    return-object v2

    :cond_8
    move-object v4, v8

    move-object v8, v0

    move-object v0, v14

    :goto_4
    move-object/from16 v20, v4

    move-object v4, v0

    move-object v0, v8

    move-object/from16 v8, v20

    goto :goto_5

    :cond_9
    move-object v4, v14

    .line 14
    :goto_5
    sget-object v19, Lzqe;->a:Lzqe;

    invoke-static {v11}, Lteam/opay/business/push/core/biz/PushDispatcher;->f(Lteam/opay/business/push/core/biz/PushDispatcher;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    new-array v15, v5, [Lkotlin/Pair;

    const-string v16, "wss_message_received"

    move-object/from16 v13, v19

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    invoke-virtual/range {v13 .. v18}, Lzqe;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 15
    invoke-virtual {v0}, Lteam/opay/business/push/core/api/PushMessage;->isMessageExpired$business_push_core_release()Z

    move-result v13

    const-string v15, ", messageId = "

    if-eqz v13, :cond_a

    .line 16
    invoke-static {v11}, Lteam/opay/business/push/core/biz/PushDispatcher;->f(Lteam/opay/business/push/core/biz/PushDispatcher;)Landroid/content/Context;

    move-result-object v14

    const-string v2, "wss_message_expired"

    new-array v3, v5, [Lkotlin/Pair;

    move-object/from16 v13, v19

    move-object v4, v15

    move-object v15, v2

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v18, v3

    invoke-virtual/range {v13 .. v18}, Lzqe;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 17
    sget-object v0, Lik8;->c:Lik8;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push -> expired message, source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7, v6, v7}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 18
    :cond_a
    invoke-static {v11}, Lteam/opay/business/push/core/biz/PushDispatcher;->g(Lteam/opay/business/push/core/biz/PushDispatcher;)Lteam/opay/core/common/android/collection/FixedLinkedHashSet;

    move-result-object v13

    invoke-virtual {v13, v8}, Lteam/opay/core/common/android/collection/FixedLinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 19
    invoke-static {v11}, Lteam/opay/business/push/core/biz/PushDispatcher;->f(Lteam/opay/business/push/core/biz/PushDispatcher;)Landroid/content/Context;

    move-result-object v14

    const-string v2, "wss_message_received_repeat"

    new-array v3, v5, [Lkotlin/Pair;

    move-object/from16 v13, v19

    move-object v4, v15

    move-object v15, v2

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v18, v3

    invoke-virtual/range {v13 .. v18}, Lzqe;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    sget-object v0, Lik8;->c:Lik8;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push -> duplicate message, source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7, v6, v7}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 21
    :cond_b
    sget-object v13, Lr6c;->d:Lr6c;

    invoke-static {v11}, Lteam/opay/business/push/core/biz/PushDispatcher;->g(Lteam/opay/business/push/core/biz/PushDispatcher;)Lteam/opay/core/common/android/collection/FixedLinkedHashSet;

    move-result-object v14

    invoke-virtual {v13, v14}, Lr6c;->o(Ljava/util/Set;)V

    .line 22
    invoke-virtual {v0}, Lteam/opay/business/push/core/api/PushMessage;->isKitOutPushExpired$business_push_core_release()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 23
    invoke-static {v11}, Lteam/opay/business/push/core/biz/PushDispatcher;->f(Lteam/opay/business/push/core/biz/PushDispatcher;)Landroid/content/Context;

    move-result-object v14

    const-string v2, "wss_message_kickedOut_expired"

    new-array v3, v5, [Lkotlin/Pair;

    move-object/from16 v13, v19

    move-object v4, v15

    move-object v15, v2

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v18, v3

    invoke-virtual/range {v13 .. v18}, Lzqe;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 24
    sget-object v0, Lik8;->c:Lik8;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push -> KICKED_OUT message expired, source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7, v6, v7}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 25
    :cond_c
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_e

    .line 26
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    new-instance v4, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$2;

    const/16 v18, 0x0

    move-object v13, v4

    move-object v14, v11

    move-object v15, v0

    move-object/from16 v16, v10

    move-object/from16 v17, v9

    invoke-direct/range {v13 .. v18}, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$2;-><init>(Lteam/opay/business/push/core/biz/PushDispatcher;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;Ljava/lang/String;Ljr2;)V

    iput-object v12, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$2:Ljava/lang/Object;

    iput-object v7, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$3:Ljava/lang/Object;

    iput-object v7, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$4:Ljava/lang/Object;

    iput-object v7, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$5:Ljava/lang/Object;

    iput-object v7, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$6:Ljava/lang/Object;

    iput v6, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->label:I

    invoke-static {v3, v4, v1}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_d

    return-object v2

    :cond_d
    move-object v0, v12

    :goto_6
    move-object v12, v0

    goto/16 :goto_9

    .line 27
    :cond_e
    invoke-virtual {v13}, Lteam/opay/business/push/core/IPushStorage;->g()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_f

    goto :goto_7

    :cond_f
    move-object v13, v7

    :goto_7
    if-nez v13, :cond_11

    invoke-static {v11}, Lteam/opay/business/push/core/biz/PushDispatcher;->h(Lteam/opay/business/push/core/biz/PushDispatcher;)Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    move-result-object v13

    if-eqz v13, :cond_10

    invoke-interface {v13}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    move-result-object v13

    goto :goto_8

    :cond_10
    move-object v13, v7

    .line 28
    :cond_11
    :goto_8
    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 29
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    new-instance v5, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;

    const/16 v18, 0x0

    move-object v13, v5

    move-object v14, v11

    move-object v15, v0

    move-object/from16 v16, v10

    move-object/from16 v17, v9

    invoke-direct/range {v13 .. v18}, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;-><init>(Lteam/opay/business/push/core/biz/PushDispatcher;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;Ljava/lang/String;Ljr2;)V

    iput-object v12, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$2:Ljava/lang/Object;

    iput-object v7, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$3:Ljava/lang/Object;

    iput-object v7, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$4:Ljava/lang/Object;

    iput-object v7, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$5:Ljava/lang/Object;

    iput-object v7, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->L$6:Ljava/lang/Object;

    iput v3, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->label:I

    invoke-static {v4, v5, v1}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_d

    return-object v2

    .line 30
    :cond_12
    invoke-static {v11}, Lteam/opay/business/push/core/biz/PushDispatcher;->f(Lteam/opay/business/push/core/biz/PushDispatcher;)Landroid/content/Context;

    move-result-object v14

    const-string v2, "wss_message_received_diff"

    new-array v3, v5, [Lkotlin/Pair;

    move-object/from16 v13, v19

    move-object v5, v15

    move-object v15, v2

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v18, v3

    invoke-virtual/range {v13 .. v18}, Lzqe;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 31
    sget-object v0, Lik8;->c:Lik8;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push -> receiveId not match, source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", receiveId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7, v6, v7}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 32
    :cond_13
    :goto_9
    iget-object v0, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->this$0:Lteam/opay/business/push/core/biz/PushDispatcher;

    iget-object v2, v1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->$pushSource:Ljava/lang/String;

    invoke-static {v12}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 33
    sget-object v4, Lzqe;->a:Lzqe;

    invoke-static {v0}, Lteam/opay/business/push/core/biz/PushDispatcher;->f(Lteam/opay/business/push/core/biz/PushDispatcher;)Landroid/content/Context;

    move-result-object v0

    const-string v5, "wss_message_received_exception"

    invoke-virtual {v4, v0, v5, v2}, Lzqe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lik8;->c:Lik8;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "push -> msg format error! throwable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7, v6, v7}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 35
    :cond_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
