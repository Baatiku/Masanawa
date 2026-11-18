.class final Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Flow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lf0c<",
        "Ljava/lang/Object;",
        ">;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "T",
        "Lf0c;",
        "",
        "<anonymous>",
        "(Lf0c;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.kotlin.coroutine.extension.FlowKt$mergeFlows$1"
    f = "Flow.kt"
    l = {
        0x34
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $flows:[Lv56;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lv56<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>([Lv56;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lv56<",
            "Ljava/lang/Object;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1;->$flows:[Lv56;

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
    new-instance v0, Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1;->$flows:[Lv56;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1;-><init>([Lv56;Ljr2;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Lf0c;Ljr2;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lf0c;
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
            "Lf0c<",
            "Ljava/lang/Object;",
            ">;",
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
    invoke-virtual {p0, p1, p2}, Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lf0c;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1;->invoke(Lf0c;Ljr2;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1;->label:I

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
    iget-object p1, p0, Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lf0c;

    .line 30
    .line 31
    new-instance v1, Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1$1;

    .line 32
    .line 33
    iget-object v3, p0, Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1;->$flows:[Lv56;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v1, v3, p1, v4}, Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1$1;-><init>([Lv56;Lf0c;Ljr2;)V

    .line 37
    .line 38
    .line 39
    iput v2, p0, Lteam/opay/kotlin/coroutine/extension/FlowKt$mergeFlows$1;->label:I

    .line 40
    .line 41
    invoke-static {v1, p0}, Lkotlinx/coroutines/g;->f(Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p1
.end method
