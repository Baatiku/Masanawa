.class public final Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deferred.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lb63<",
        "Ljava/lang/Object;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001\"\u0004\u0008\u0002\u0010\u0002*\u00020\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "T1",
        "T2",
        "R",
        "Lzr2;",
        "Lb63;",
        "<anonymous>",
        "(Lzr2;)Lb63;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.kotlin.coroutine.extension.DeferredKt$zip$2"
    f = "Deferred.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $coroutineStart:Lkotlinx/coroutines/CoroutineStart;

.field final synthetic $source1:Lb63;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb63<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $source2:Lb63;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb63<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $zipper:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;Lb63;Lb63;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineStart;",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lb63<",
            "Ljava/lang/Object;",
            ">;",
            "Lb63<",
            "Ljava/lang/Object;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->$coroutineStart:Lkotlinx/coroutines/CoroutineStart;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->$zipper:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->$source1:Lb63;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->$source2:Lb63;

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
    .locals 7
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
    new-instance v6, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->$coroutineStart:Lkotlinx/coroutines/CoroutineStart;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->$zipper:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->$source1:Lb63;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->$source2:Lb63;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;-><init>(Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;Lb63;Lb63;Ljr2;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
            "Lb63<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lzr2;

    .line 15
    .line 16
    iget-object v2, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->$coroutineStart:Lkotlinx/coroutines/CoroutineStart;

    .line 17
    .line 18
    new-instance v3, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;

    .line 19
    .line 20
    iget-object p1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->$zipper:Lkotlin/jvm/functions/Function2;

    .line 21
    .line 22
    iget-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->$source1:Lb63;

    .line 23
    .line 24
    iget-object v4, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->$source2:Lb63;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-direct {v3, p1, v1, v4, v5}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;-><init>(Lkotlin/jvm/functions/Function2;Lb63;Lb63;Ljr2;)V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static/range {v0 .. v5}, Lxk1;->b(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lb63;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method
