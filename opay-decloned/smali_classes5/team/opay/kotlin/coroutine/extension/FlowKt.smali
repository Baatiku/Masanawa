.class public final Lteam/opay/kotlin/coroutine/extension/FlowKt;
.super Ljava/lang/Object;
.source "Flow.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u001a\"\u0010\u0002\u001a\u0004\u0018\u00018\u0000\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001H\u0086@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\'\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\u0008\u0000\u0010\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "T",
        "Lv56;",
        "a",
        "(Lv56;Ljr2;)Ljava/lang/Object;",
        "Lkotlin/Function0;",
        "",
        "block",
        "b",
        "(Lkotlin/jvm/functions/Function0;)Lv56;",
        "kotlin-coroutine-extension_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lv56;Ljr2;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lv56;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lv56<",
            "+TT;>;",
            "Ljr2<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lteam/opay/kotlin/coroutine/extension/FlowKt$awaitFirst$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lteam/opay/kotlin/coroutine/extension/FlowKt$awaitFirst$1;

    .line 7
    .line 8
    iget v1, v0, Lteam/opay/kotlin/coroutine/extension/FlowKt$awaitFirst$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lteam/opay/kotlin/coroutine/extension/FlowKt$awaitFirst$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lteam/opay/kotlin/coroutine/extension/FlowKt$awaitFirst$1;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lteam/opay/kotlin/coroutine/extension/FlowKt$awaitFirst$1;-><init>(Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lteam/opay/kotlin/coroutine/extension/FlowKt$awaitFirst$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lteam/opay/kotlin/coroutine/extension/FlowKt$awaitFirst$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lteam/opay/kotlin/coroutine/extension/FlowKt$awaitFirst$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 58
    .line 59
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v3}, Ly86;->a0(Lv56;I)Lv56;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    new-instance v2, Lteam/opay/kotlin/coroutine/extension/FlowKt$a;

    .line 67
    .line 68
    invoke-direct {v2, p1}, Lteam/opay/kotlin/coroutine/extension/FlowKt$a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, v0, Lteam/opay/kotlin/coroutine/extension/FlowKt$awaitFirst$1;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    iput v3, v0, Lteam/opay/kotlin/coroutine/extension/FlowKt$awaitFirst$1;->label:I

    .line 74
    .line 75
    invoke-interface {p0, v2, v0}, Lv56;->collect(La66;Ljr2;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-ne p0, v1, :cond_3

    .line 80
    .line 81
    return-object v1

    .line 82
    :cond_3
    move-object p0, p1

    .line 83
    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 84
    .line 85
    return-object p0
.end method

.method public static final b(Lkotlin/jvm/functions/Function0;)Lv56;
    .locals 2
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lv56<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/kotlin/coroutine/extension/FlowKt$flowError$1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lteam/opay/kotlin/coroutine/extension/FlowKt$flowError$1;-><init>(Lkotlin/jvm/functions/Function0;Ljr2;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ly86;->G(Lkotlin/jvm/functions/Function2;)Lv56;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
