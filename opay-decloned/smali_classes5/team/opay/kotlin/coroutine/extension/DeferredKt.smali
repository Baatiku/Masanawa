.class public final Lteam/opay/kotlin/coroutine/extension/DeferredKt;
.super Ljava/lang/Object;
.source "Deferred.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u001a,\u0010\u0004\u001a\u0004\u0018\u00018\u0000\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H\u0086@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "T",
        "Lb63;",
        "",
        "timeout",
        "a",
        "(Lb63;JLjr2;)Ljava/lang/Object;",
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
.method public static final a(Lb63;JLjr2;)Ljava/lang/Object;
    .locals 8
    .param p0    # Lb63;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb63<",
            "+TT;>;J",
            "Ljr2<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lteam/opay/kotlin/coroutine/extension/DeferredKt$awaitOrNull$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$awaitOrNull$1;

    .line 7
    .line 8
    iget v1, v0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$awaitOrNull$1;->label:I

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
    iput v1, v0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$awaitOrNull$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$awaitOrNull$1;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$awaitOrNull$1;-><init>(Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$awaitOrNull$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$awaitOrNull$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v5, :cond_1

    .line 39
    .line 40
    if-ne v2, v4, :cond_2

    .line 41
    .line 42
    :cond_1
    :try_start_0
    invoke-static {p3}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_3
    invoke-static {p3}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const-wide/16 v6, 0x0

    .line 60
    .line 61
    cmp-long p3, p1, v6

    .line 62
    .line 63
    if-lez p3, :cond_4

    .line 64
    .line 65
    :try_start_1
    new-instance p3, Lteam/opay/kotlin/coroutine/extension/DeferredKt$awaitOrNull$2;

    .line 66
    .line 67
    invoke-direct {p3, p0, v3}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$awaitOrNull$2;-><init>(Lb63;Ljr2;)V

    .line 68
    .line 69
    .line 70
    iput v5, v0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$awaitOrNull$1;->label:I

    .line 71
    .line 72
    invoke-static {p1, p2, p3, v0}, Lkotlinx/coroutines/TimeoutKt;->c(JLkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    if-ne p3, v1, :cond_5

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_4
    iput v4, v0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$awaitOrNull$1;->label:I

    .line 80
    .line 81
    invoke-interface {p0, v0}, Lb63;->V0(Ljr2;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    if-ne p3, v1, :cond_5

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_5
    :goto_1
    move-object v3, p3

    .line 89
    goto :goto_3

    .line 90
    :goto_2
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_3
    return-object v3
.end method
