.class public final Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deferred.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0005\"\u0004\u0008\u0000\u0010\u0000\"\u000e\u0008\u0001\u0010\u0002*\u0008\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\u0008\u0002\u0010\u0003*\u00020\u0004H\u008a@\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "K",
        "",
        "T",
        "R",
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)Ljava/util/List;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.kotlin.coroutine.extension.DeferredKt$concatMap$2$1"
    f = "Deferred.kt"
    l = {
        0x4a,
        0x4a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $mapper:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_concatMap:Lb63;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb63<",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lb63;Lkotlin/jvm/functions/Function1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb63<",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->$this_concatMap:Lb63;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->$mapper:Lkotlin/jvm/functions/Function1;

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
    new-instance v0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->$this_concatMap:Lb63;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->$mapper:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;-><init>(Lb63;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
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
    iget v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->label:I

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
    iget-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->L$2:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Ljava/util/Collection;

    .line 18
    .line 19
    iget-object v3, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->L$1:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Ljava/util/Iterator;

    .line 22
    .line 23
    iget-object v4, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v4, Ljava/util/Collection;

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    iget-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lzr2;

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v1, p1

    .line 54
    check-cast v1, Lzr2;

    .line 55
    .line 56
    iget-object p1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->$this_concatMap:Lb63;

    .line 57
    .line 58
    iput-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    iput v3, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->label:I

    .line 61
    .line 62
    invoke-interface {p1, p0}, Lb63;->V0(Ljr2;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v0, :cond_3

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 70
    .line 71
    iget-object v9, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->$mapper:Lkotlin/jvm/functions/Function1;

    .line 72
    .line 73
    new-instance v10, Ljava/util/ArrayList;

    .line 74
    .line 75
    const/16 v11, 0xa

    .line 76
    .line 77
    invoke-static {p1, v11}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_4

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    new-instance v6, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1$1$1;

    .line 99
    .line 100
    const/4 v4, 0x0

    .line 101
    invoke-direct {v6, v9, v3, v4}, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljr2;)V

    .line 102
    .line 103
    .line 104
    const/4 v7, 0x3

    .line 105
    const/4 v8, 0x0

    .line 106
    const/4 v5, 0x0

    .line 107
    move-object v3, v1

    .line 108
    invoke-static/range {v3 .. v8}, Lxk1;->b(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lb63;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-interface {v10, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-static {v10, v11}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    move-object v3, v1

    .line 130
    move-object v1, p1

    .line 131
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Lb63;

    .line 142
    .line 143
    iput-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->L$0:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object v3, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->L$1:Ljava/lang/Object;

    .line 146
    .line 147
    iput-object v1, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->L$2:Ljava/lang/Object;

    .line 148
    .line 149
    iput v2, p0, Lteam/opay/kotlin/coroutine/extension/DeferredKt$concatMap$2$1;->label:I

    .line 150
    .line 151
    invoke-interface {p1, p0}, Lb63;->V0(Ljr2;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-ne p1, v0, :cond_5

    .line 156
    .line 157
    return-object v0

    .line 158
    :cond_5
    move-object v4, v1

    .line 159
    :goto_3
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-object v1, v4

    .line 163
    goto :goto_2

    .line 164
    :cond_6
    check-cast v1, Ljava/util/List;

    .line 165
    .line 166
    return-object v1
.end method
