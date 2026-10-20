.class final Lteam/opay/core/http/internal/CountdownScope$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FixedIntervalPolling.kt"

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
    c = "team.opay.core.http.internal.CountdownScope$start$1"
    f = "FixedIntervalPolling.kt"
    l = {
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field label:I

.field final synthetic this$0:Lteam/opay/core/http/internal/CountdownScope;


# direct methods
.method public constructor <init>(Lteam/opay/core/http/internal/CountdownScope;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/internal/CountdownScope;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/internal/CountdownScope$start$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/http/internal/CountdownScope$start$1;->this$0:Lteam/opay/core/http/internal/CountdownScope;

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
    .locals 1
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
    new-instance p1, Lteam/opay/core/http/internal/CountdownScope$start$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/http/internal/CountdownScope$start$1;->this$0:Lteam/opay/core/http/internal/CountdownScope;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/core/http/internal/CountdownScope$start$1;-><init>(Lteam/opay/core/http/internal/CountdownScope;Ljr2;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/http/internal/CountdownScope$start$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/http/internal/CountdownScope$start$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/http/internal/CountdownScope$start$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/http/internal/CountdownScope$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/core/http/internal/CountdownScope$start$1;->label:I

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
    iget v1, p0, Lteam/opay/core/http/internal/CountdownScope$start$1;->I$1:I

    .line 13
    .line 14
    iget v3, p0, Lteam/opay/core/http/internal/CountdownScope$start$1;->I$0:I

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
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lteam/opay/core/http/internal/CountdownScope$start$1;->this$0:Lteam/opay/core/http/internal/CountdownScope;

    .line 32
    .line 33
    invoke-static {p1}, Lteam/opay/core/http/internal/CountdownScope;->a(Lteam/opay/core/http/internal/CountdownScope;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/4 v1, 0x0

    .line 38
    move v3, p1

    .line 39
    :goto_0
    const/4 p1, 0x2

    .line 40
    const/4 v4, 0x0

    .line 41
    if-ge v1, v3, :cond_3

    .line 42
    .line 43
    sget-object v5, Lok8;->c:Lok8;

    .line 44
    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v7, "scope repeat -> "

    .line 51
    .line 52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-static {v5, v6, v4, p1, v4}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput v3, p0, Lteam/opay/core/http/internal/CountdownScope$start$1;->I$0:I

    .line 66
    .line 67
    iput v1, p0, Lteam/opay/core/http/internal/CountdownScope$start$1;->I$1:I

    .line 68
    .line 69
    iput v2, p0, Lteam/opay/core/http/internal/CountdownScope$start$1;->label:I

    .line 70
    .line 71
    const-wide/16 v4, 0x3e8

    .line 72
    .line 73
    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-ne p1, v0, :cond_2

    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_2
    :goto_1
    add-int/2addr v1, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    sget-object v0, Lok8;->c:Lok8;

    .line 83
    .line 84
    const-string v1, "scope finished"

    .line 85
    .line 86
    invoke-static {v0, v1, v4, p1, v4}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lteam/opay/core/http/internal/CountdownScope$start$1;->this$0:Lteam/opay/core/http/internal/CountdownScope;

    .line 90
    .line 91
    invoke-static {p1}, Lteam/opay/core/http/internal/CountdownScope;->b(Lteam/opay/core/http/internal/CountdownScope;)Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lteam/opay/kotlin/coroutine/SafeCoroutineScope;->close()V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lteam/opay/core/http/internal/CountdownScope$start$1;->this$0:Lteam/opay/core/http/internal/CountdownScope;

    .line 99
    .line 100
    invoke-static {p1, v2}, Lteam/opay/core/http/internal/CountdownScope;->c(Lteam/opay/core/http/internal/CountdownScope;Z)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 104
    .line 105
    return-object p1
.end method
