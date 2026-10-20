.class final Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PushDispatcher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "team.opay.business.push.core.biz.PushDispatcher$dispatchMessage$1$2$3"
    f = "PushDispatcher.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $filterType:Ljava/lang/String;

.field final synthetic $it:Lteam/opay/business/push/core/api/PushMessage;

.field final synthetic $pushSource:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/business/push/core/biz/PushDispatcher;


# direct methods
.method public constructor <init>(Lteam/opay/business/push/core/biz/PushDispatcher;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/push/core/biz/PushDispatcher;",
            "Lteam/opay/business/push/core/api/PushMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;->this$0:Lteam/opay/business/push/core/biz/PushDispatcher;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;->$it:Lteam/opay/business/push/core/api/PushMessage;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;->$pushSource:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;->$filterType:Ljava/lang/String;

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
    new-instance p1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;->this$0:Lteam/opay/business/push/core/biz/PushDispatcher;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;->$it:Lteam/opay/business/push/core/api/PushMessage;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;->$pushSource:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;->$filterType:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;-><init>(Lteam/opay/business/push/core/biz/PushDispatcher;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;->this$0:Lteam/opay/business/push/core/biz/PushDispatcher;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;->$it:Lteam/opay/business/push/core/api/PushMessage;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;->$pushSource:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1$2$3;->$filterType:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1, v0, v1, v2}, Lteam/opay/business/push/core/biz/PushDispatcher;->e(Lteam/opay/business/push/core/biz/PushDispatcher;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method
