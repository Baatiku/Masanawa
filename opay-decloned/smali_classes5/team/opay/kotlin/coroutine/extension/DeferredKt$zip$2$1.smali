.class public final Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deferred.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u00028\u0002\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001\"\u0004\u0008\u0002\u0010\u0002*\u00020\u0003H\u008a@"
    }
    d2 = {
        "T1",
        "T2",
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
    c = "team.opay.kotlin.coroutine.extension.DeferredKt$zip$2$1"
    f = "Deferred.kt"
    l = {
        0x55,
        0x55
    }
    m = "invokeSuspend"
.end annotation


# instance fields
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

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lb63;Lb63;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->$zipper:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->$source1:Lb63;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->$source2:Lb63;

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
    new-instance p1, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->$zipper:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->$source1:Lb63;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->$source2:Lb63;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;-><init>(Lkotlin/jvm/functions/Function2;Lb63;Lb63;Ljr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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
    iget v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->label:I

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
    iget-object v0, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->L$1:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    iget-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->$zipper:Lkotlin/jvm/functions/Function2;

    .line 45
    .line 46
    iget-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->$source1:Lb63;

    .line 47
    .line 48
    iput-object p1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    iput v3, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->label:I

    .line 51
    .line 52
    invoke-interface {v1, p0}, Lb63;->V0(Ljr2;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-ne v1, v0, :cond_3

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_3
    move-object v4, v1

    .line 60
    move-object v1, p1

    .line 61
    move-object p1, v4

    .line 62
    :goto_0
    iget-object v3, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->$source2:Lb63;

    .line 63
    .line 64
    iput-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object p1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->L$1:Ljava/lang/Object;

    .line 67
    .line 68
    iput v2, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$zip$2$1;->label:I

    .line 69
    .line 70
    invoke-interface {v3, p0}, Lb63;->V0(Ljr2;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-ne v2, v0, :cond_4

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_4
    move-object v0, p1

    .line 78
    move-object p1, v2

    .line 79
    :goto_1
    invoke-interface {v1, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method
