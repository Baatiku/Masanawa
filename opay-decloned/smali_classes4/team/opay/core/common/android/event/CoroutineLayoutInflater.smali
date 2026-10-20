.class public final Lteam/opay/core/common/android/event/CoroutineLayoutInflater;
.super Ljava/lang/Object;
.source "CoroutineLayoutInflater.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/common/android/event/CoroutineLayoutInflater$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00182\u00020\u0001:\u0001\u0019B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J&\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\t\u001a\u00020\u00082\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0086@\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/core/common/android/event/CoroutineLayoutInflater;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "dispatcher",
        "<init>",
        "(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "",
        "resId",
        "Landroid/view/ViewGroup;",
        "parent",
        "Landroid/view/View;",
        "b",
        "(ILandroid/view/ViewGroup;Ljr2;)Ljava/lang/Object;",
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Lteam/opay/core/common/android/event/BasicInflater;",
        "c",
        "Lteam/opay/core/common/android/event/BasicInflater;",
        "inflater",
        "d",
        "Companion",
        "common-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final d:Lteam/opay/core/common/android/event/CoroutineLayoutInflater$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/common/android/event/BasicInflater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater;->d:Lteam/opay/core/common/android/event/CoroutineLayoutInflater$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 4
    new-instance p2, Lteam/opay/core/common/android/event/BasicInflater;

    invoke-direct {p2, p1}, Lteam/opay/core/common/android/event/BasicInflater;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater;->c:Lteam/opay/core/common/android/event/BasicInflater;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 5
    invoke-static {}, Lni3;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lteam/opay/core/common/android/event/CoroutineLayoutInflater;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-void
.end method

.method public static final synthetic a(Lteam/opay/core/common/android/event/CoroutineLayoutInflater;)Lteam/opay/core/common/android/event/BasicInflater;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater;->c:Lteam/opay/core/common/android/event/BasicInflater;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(ILandroid/view/ViewGroup;Ljr2;)Ljava/lang/Object;
    .locals 12
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/ViewGroup;",
            "Ljr2<",
            "-",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;

    .line 7
    .line 8
    iget v1, v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;->label:I

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
    iput v1, v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;-><init>(Lteam/opay/core/common/android/event/CoroutineLayoutInflater;Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    invoke-static {p3}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    iget p1, v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;->I$0:I

    .line 55
    .line 56
    iget-object p2, v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;->L$1:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p2, Landroid/view/ViewGroup;

    .line 59
    .line 60
    iget-object v2, v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Lteam/opay/core/common/android/event/CoroutineLayoutInflater;

    .line 63
    .line 64
    invoke-static {p3}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    move v9, p1

    .line 68
    move-object v10, p2

    .line 69
    move-object v8, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-static {p3}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object p3, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 75
    .line 76
    new-instance v2, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$view$1;

    .line 77
    .line 78
    invoke-direct {v2, p0, p1, p2, v5}, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$view$1;-><init>(Lteam/opay/core/common/android/event/CoroutineLayoutInflater;ILandroid/view/ViewGroup;Ljr2;)V

    .line 79
    .line 80
    .line 81
    iput-object p0, v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object p2, v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;->L$1:Ljava/lang/Object;

    .line 84
    .line 85
    iput p1, v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;->I$0:I

    .line 86
    .line 87
    iput v4, v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;->label:I

    .line 88
    .line 89
    invoke-static {p3, v2, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    if-ne p3, v1, :cond_4

    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_4
    move-object v8, p0

    .line 97
    move v9, p1

    .line 98
    move-object v10, p2

    .line 99
    :goto_1
    move-object v7, p3

    .line 100
    check-cast v7, Landroid/view/View;

    .line 101
    .line 102
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->g1()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance p2, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;

    .line 111
    .line 112
    const/4 v11, 0x0

    .line 113
    move-object v6, p2

    .line 114
    invoke-direct/range {v6 .. v11}, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;-><init>(Landroid/view/View;Lteam/opay/core/common/android/event/CoroutineLayoutInflater;ILandroid/view/ViewGroup;Ljr2;)V

    .line 115
    .line 116
    .line 117
    iput-object v5, v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;->L$0:Ljava/lang/Object;

    .line 118
    .line 119
    iput-object v5, v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;->L$1:Ljava/lang/Object;

    .line 120
    .line 121
    iput v3, v0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$1;->label:I

    .line 122
    .line 123
    invoke-static {p1, p2, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    if-ne p3, v1, :cond_5

    .line 128
    .line 129
    return-object v1

    .line 130
    :cond_5
    :goto_2
    const-string p1, "withContext(...)"

    .line 131
    .line 132
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-object p3
.end method
