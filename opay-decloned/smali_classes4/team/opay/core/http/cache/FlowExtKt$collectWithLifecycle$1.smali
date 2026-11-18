.class final Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FlowExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/http/cache/FlowExtKt;->b(Lv56;Lag8;Lkotlin/jvm/functions/Function1;)V
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
    c = "team.opay.core.http.cache.FlowExtKt$collectWithLifecycle$1"
    f = "FlowExt.kt"
    l = {
        0x24
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $lifecycleOwner:Lag8;

.field final synthetic $onCollect:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/core/http/HttpResult<",
            "+TT;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_collectWithLifecycle:Lv56;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv56<",
            "Lteam/opay/core/http/HttpResult<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lv56;Lag8;Lkotlin/jvm/functions/Function1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv56<",
            "+",
            "Lteam/opay/core/http/HttpResult<",
            "+TT;>;>;",
            "Lag8;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "+TT;>;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;->$this_collectWithLifecycle:Lv56;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;->$lifecycleOwner:Lag8;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;->$onCollect:Lkotlin/jvm/functions/Function1;

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
    .locals 4
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
    new-instance v0, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;->$this_collectWithLifecycle:Lv56;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;->$lifecycleOwner:Lag8;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;->$onCollect:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;-><init>(Lv56;Lag8;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;->label:I

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
    iget-object p1, p0, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lzr2;

    .line 30
    .line 31
    iget-object v1, p0, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;->$this_collectWithLifecycle:Lv56;

    .line 32
    .line 33
    iget-object v3, p0, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;->$lifecycleOwner:Lag8;

    .line 34
    .line 35
    invoke-interface {v3}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, p0, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;->$onCollect:Lkotlin/jvm/functions/Function1;

    .line 40
    .line 41
    iput v2, p0, Lteam/opay/core/http/cache/FlowExtKt$collectWithLifecycle$1;->label:I

    .line 42
    .line 43
    invoke-static {v1, v3, p1, v4, p0}, Lteam/opay/core/http/cache/FlowExtKt;->a(Lv56;Landroidx/lifecycle/Lifecycle;Lzr2;Lkotlin/jvm/functions/Function1;Ljr2;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-ne p1, v0, :cond_2

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p1
.end method
