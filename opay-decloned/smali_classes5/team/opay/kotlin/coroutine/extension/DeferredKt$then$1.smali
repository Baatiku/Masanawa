.class public final Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;
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
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00028\u0001\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "T",
        "R",
        "Lzr2;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.kotlin.coroutine.extension.DeferredKt$then$1"
    f = "Deferred.kt"
    l = {
        0x17,
        0x17
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $block:Lhm6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhm6<",
            "Lzr2;",
            "Ljava/lang/Object;",
            "Ljr2<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_then:Lb63;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb63<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lhm6;Lb63;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhm6<",
            "-",
            "Lzr2;",
            "Ljava/lang/Object;",
            "-",
            "Ljr2<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lb63<",
            "Ljava/lang/Object;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->$block:Lhm6;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->$this_then:Lb63;

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
    new-instance v0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->$block:Lhm6;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->$this_then:Lb63;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;-><init>(Lhm6;Lb63;Ljr2;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    iget-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->L$1:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lzr2;

    .line 30
    .line 31
    iget-object v3, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Lhm6;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    move-object v1, p1

    .line 45
    check-cast v1, Lzr2;

    .line 46
    .line 47
    iget-object p1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->$block:Lhm6;

    .line 48
    .line 49
    iget-object v4, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->$this_then:Lb63;

    .line 50
    .line 51
    iput-object p1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    iput-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->L$1:Ljava/lang/Object;

    .line 54
    .line 55
    iput v3, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->label:I

    .line 56
    .line 57
    invoke-interface {v4, p0}, Lb63;->V0(Ljr2;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-ne v3, v0, :cond_3

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_3
    move-object v5, v3

    .line 65
    move-object v3, p1

    .line 66
    move-object p1, v5

    .line 67
    :goto_0
    const/4 v4, 0x0

    .line 68
    iput-object v4, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    iput-object v4, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->L$1:Ljava/lang/Object;

    .line 71
    .line 72
    iput v2, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->label:I

    .line 73
    .line 74
    invoke-interface {v3, v1, p1, p0}, Lhm6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v0, :cond_4

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_4
    :goto_1
    return-object p1
.end method

.method public final invokeSuspend$$forInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->L$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lzr2;

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->$block:Lhm6;

    .line 6
    .line 7
    iget-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$then$1;->$this_then:Lb63;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, p0}, Lb63;->V0(Ljr2;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1, v1, p0}, Lhm6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method
