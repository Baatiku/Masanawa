.class final Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NetworkCacheResult.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lteam/opay/core/http/HttpResult<",
        "+TT;>;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "it",
        "Lteam/opay/core/http/HttpResult;"
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
    c = "team.opay.core.http.cache.NetworkCacheResult$asCallbackFlow$1$1"
    f = "NetworkCacheResult.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$callbackFlow:Lf0c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf0c<",
            "Lteam/opay/core/http/HttpResult<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lf0c;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf0c<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "+TT;>;>;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;->$$this$callbackFlow:Lf0c;

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
    new-instance v0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;->$$this$callbackFlow:Lf0c;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;-><init>(Lf0c;Ljr2;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/http/HttpResult;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;->invoke(Lteam/opay/core/http/HttpResult;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lteam/opay/core/http/HttpResult;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/HttpResult<",
            "+TT;>;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;->$$this$callbackFlow:Lf0c;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;->$$this$callbackFlow:Lf0c;

    .line 22
    .line 23
    instance-of v1, p1, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v1, Lok8;->c:Lok8;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "asHttpResult -> send failed: "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v3, 0x2

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-static {v1, v2, v4, v3, v4}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/a;->J(Ljava/lang/Throwable;)Z

    .line 56
    .line 57
    .line 58
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method
