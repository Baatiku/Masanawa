.class final Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NetworkCacheResult.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/http/cache/NetworkCacheResult;->d(Ljava/lang/reflect/Type;)Lv56;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lf0c<",
        "-",
        "Lteam/opay/core/http/HttpResult<",
        "+TT;>;>;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "T",
        "Lf0c;",
        "Lteam/opay/core/http/HttpResult;",
        "",
        "<anonymous>",
        "(Lf0c;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.core.http.cache.NetworkCacheResult$asCallbackFlow$1"
    f = "NetworkCacheResult.kt"
    l = {
        0x7f,
        0x85
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $type:Ljava/lang/reflect/Type;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/core/http/cache/NetworkCacheResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/cache/NetworkCacheResult<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/http/cache/NetworkCacheResult;Ljava/lang/reflect/Type;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/cache/NetworkCacheResult<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->this$0:Lteam/opay/core/http/cache/NetworkCacheResult;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->$type:Ljava/lang/reflect/Type;

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

.method public static synthetic c(Lteam/opay/core/http/cache/NetworkCacheResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->invokeSuspend$lambda$0(Lteam/opay/core/http/cache/NetworkCacheResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lteam/opay/core/http/cache/NetworkCacheResult;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-static {p0}, Lteam/opay/core/http/cache/NetworkCacheResult;->b(Lteam/opay/core/http/cache/NetworkCacheResult;)Lretrofit2/Call;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lteam/opay/core/http/cache/NetworkCacheResult;->b(Lteam/opay/core/http/cache/NetworkCacheResult;)Lretrofit2/Call;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Lretrofit2/Call;->cancel()V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p0, Lok8;->c:Lok8;

    .line 19
    .line 20
    const-string v0, "asHttpResult -> close, cancel api request"

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p0, v0, v2, v1, v2}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 3
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
    new-instance v0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->this$0:Lteam/opay/core/http/cache/NetworkCacheResult;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->$type:Ljava/lang/reflect/Type;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;-><init>(Lteam/opay/core/http/cache/NetworkCacheResult;Ljava/lang/reflect/Type;Ljr2;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final invoke(Lf0c;Ljr2;)Ljava/lang/Object;
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lf0c;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->invoke(Lf0c;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    iget-object v1, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lf0c;

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v1, p1

    .line 42
    check-cast v1, Lf0c;

    .line 43
    .line 44
    iget-object p1, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->this$0:Lteam/opay/core/http/cache/NetworkCacheResult;

    .line 45
    .line 46
    iget-object v5, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->$type:Ljava/lang/reflect/Type;

    .line 47
    .line 48
    new-instance v6, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;

    .line 49
    .line 50
    invoke-direct {v6, v1, v2}, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1$1;-><init>(Lf0c;Ljr2;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    iput v4, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->label:I

    .line 56
    .line 57
    invoke-static {p1, v5, v6, p0}, Lteam/opay/core/http/cache/NetworkCacheResult;->a(Lteam/opay/core/http/cache/NetworkCacheResult;Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-ne p1, v0, :cond_3

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_3
    :goto_0
    iget-object p1, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->this$0:Lteam/opay/core/http/cache/NetworkCacheResult;

    .line 65
    .line 66
    new-instance v4, Lteam/opay/core/http/cache/a;

    .line 67
    .line 68
    invoke-direct {v4, p1}, Lteam/opay/core/http/cache/a;-><init>(Lteam/opay/core/http/cache/NetworkCacheResult;)V

    .line 69
    .line 70
    .line 71
    iput-object v2, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    iput v3, p0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;->label:I

    .line 74
    .line 75
    invoke-static {v1, v4, p0}, Lkotlinx/coroutines/channels/ProduceKt;->a(Lf0c;Lkotlin/jvm/functions/Function0;Ljr2;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v0, :cond_4

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
    return-object p1
.end method
