.class final Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MessageMainActivityDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;->reqNum()V
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
    c = "team.opay.pay.message.delegate.MessageMainActivityDelegate$reqNum$1"
    f = "MessageMainActivityDelegate.kt"
    l = {
        0x57
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
            "Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;->$phone:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;->$uid:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;->this$0:Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;

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
    new-instance p1, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;->$phone:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;->$uid:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;->this$0:Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    iget v1, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;->label:I

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
    goto :goto_0

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
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v1, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;

    .line 32
    .line 33
    iget-object v3, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;->$phone:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v4, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;->$uid:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v5, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;->this$0:Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-direct {v1, v3, v4, v5, v6}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;Ljr2;)V

    .line 41
    .line 42
    .line 43
    iput v2, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;->label:I

    .line 44
    .line 45
    invoke-static {p1, v1, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p1
.end method
