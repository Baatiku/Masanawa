.class public final Lteam/opay/kotlin/coroutine/extension/FlowKt$resumeOnError$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Merge.kt"

# interfaces
.implements Lhm6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lhm6<",
        "La66<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
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
        "\u0000\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0006\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u0008\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@\u00a8\u0006\u0005"
    }
    d2 = {
        "T",
        "R",
        "La66;",
        "it",
        "",
        "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1",
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
    c = "team.opay.kotlin.coroutine.extension.FlowKt$resumeOnError$$inlined$flatMapLatest$1"
    f = "Flow.kt"
    l = {
        0xbd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $errorBlock$inlined:Lkotlin/jvm/functions/Function0;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljr2;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lteam/opay/kotlin/coroutine/extension/FlowKt$resumeOnError$$inlined$flatMapLatest$1;->$errorBlock$inlined:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    const/4 p2, 0x3

    .line 4
    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(La66;Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 2
    .param p1    # La66;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La66<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
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
    new-instance v0, Lteam/opay/kotlin/coroutine/extension/FlowKt$resumeOnError$$inlined$flatMapLatest$1;

    iget-object v1, p0, Lteam/opay/kotlin/coroutine/extension/FlowKt$resumeOnError$$inlined$flatMapLatest$1;->$errorBlock$inlined:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, p3, v1}, Lteam/opay/kotlin/coroutine/extension/FlowKt$resumeOnError$$inlined$flatMapLatest$1;-><init>(Ljr2;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, v0, Lteam/opay/kotlin/coroutine/extension/FlowKt$resumeOnError$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lteam/opay/kotlin/coroutine/extension/FlowKt$resumeOnError$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lteam/opay/kotlin/coroutine/extension/FlowKt$resumeOnError$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, La66;

    check-cast p3, Ljr2;

    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/kotlin/coroutine/extension/FlowKt$resumeOnError$$inlined$flatMapLatest$1;->invoke(La66;Ljava/lang/Object;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    iget v1, p0, Lteam/opay/kotlin/coroutine/extension/FlowKt$resumeOnError$$inlined$flatMapLatest$1;->label:I

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
    iget-object p1, p0, Lteam/opay/kotlin/coroutine/extension/FlowKt$resumeOnError$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, La66;

    .line 30
    .line 31
    new-instance v1, Lteam/opay/kotlin/coroutine/extension/FlowKt$resumeOnError$1$1;

    .line 32
    .line 33
    iget-object v3, p0, Lteam/opay/kotlin/coroutine/extension/FlowKt$resumeOnError$$inlined$flatMapLatest$1;->$errorBlock$inlined:Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    invoke-direct {v1, v3}, Lteam/opay/kotlin/coroutine/extension/FlowKt$resumeOnError$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lteam/opay/kotlin/coroutine/extension/FlowKt;->b(Lkotlin/jvm/functions/Function0;)Lv56;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput v2, p0, Lteam/opay/kotlin/coroutine/extension/FlowKt$resumeOnError$$inlined$flatMapLatest$1;->label:I

    .line 43
    .line 44
    invoke-static {p1, v1, p0}, Ly86;->t(La66;Lv56;Ljr2;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p1
.end method
