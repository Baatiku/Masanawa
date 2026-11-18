.class final Lteam/opay/core/common/FontCache$preGetFont$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/common/FontCache;->l(Landroid/content/Context;)V
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
    c = "team.opay.core.common.FontCache$preGetFont$1"
    f = "AppDelegate.kt"
    l = {
        0x55,
        0x58,
        0x59,
        0x5c,
        0x5d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $appContext:Landroid/content/Context;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/common/FontCache$preGetFont$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/common/FontCache$preGetFont$1;->$appContext:Landroid/content/Context;

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
    new-instance p1, Lteam/opay/core/common/FontCache$preGetFont$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/common/FontCache$preGetFont$1;->$appContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/core/common/FontCache$preGetFont$1;-><init>(Landroid/content/Context;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/FontCache$preGetFont$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/FontCache$preGetFont$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/common/FontCache$preGetFont$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/common/FontCache$preGetFont$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/core/common/FontCache$preGetFont$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    const/4 v3, 0x4

    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x2

    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    if-eq v1, v5, :cond_4

    .line 17
    .line 18
    if-eq v1, v8, :cond_3

    .line 19
    .line 20
    if-eq v1, v4, :cond_2

    .line 21
    .line 22
    if-eq v1, v3, :cond_1

    .line 23
    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    :try_start_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto/16 :goto_8

    .line 33
    .line 34
    :catch_0
    move-exception p1

    .line 35
    goto/16 :goto_6

    .line 36
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

    .line 45
    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :try_start_2
    sget-object p1, Lnk8;->c:Lnk8;

    .line 65
    .line 66
    const-string v1, "FontCache: Starting font preloading"

    .line 67
    .line 68
    invoke-static {p1, v1, v7, v8, v7}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lteam/opay/core/common/FontCache;->a:Lteam/opay/core/common/FontCache;

    .line 72
    .line 73
    iget-object v1, p0, Lteam/opay/core/common/FontCache$preGetFont$1;->$appContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lteam/opay/core/common/FontCache;->b()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    iput v5, p0, Lteam/opay/core/common/FontCache$preGetFont$1;->label:I

    .line 83
    .line 84
    invoke-static {p1, v1, v9, p0}, Lteam/opay/core/common/FontCache;->f(Lteam/opay/core/common/FontCache;Landroid/content/Context;Ljava/util/List;Ljr2;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-ne p1, v0, :cond_6

    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_6
    :goto_0
    iput v8, p0, Lteam/opay/core/common/FontCache$preGetFont$1;->label:I

    .line 92
    .line 93
    const-wide/16 v9, 0x3e8

    .line 94
    .line 95
    invoke-static {v9, v10, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-ne p1, v0, :cond_7

    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_7
    :goto_1
    sget-object p1, Lteam/opay/core/common/FontCache;->a:Lteam/opay/core/common/FontCache;

    .line 103
    .line 104
    iget-object v1, p0, Lteam/opay/core/common/FontCache$preGetFont$1;->$appContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lteam/opay/core/common/FontCache;->d()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    iput v4, p0, Lteam/opay/core/common/FontCache$preGetFont$1;->label:I

    .line 114
    .line 115
    invoke-static {p1, v1, v5, p0}, Lteam/opay/core/common/FontCache;->f(Lteam/opay/core/common/FontCache;Landroid/content/Context;Ljava/util/List;Ljr2;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-ne p1, v0, :cond_8

    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_8
    :goto_2
    iput v3, p0, Lteam/opay/core/common/FontCache$preGetFont$1;->label:I

    .line 123
    .line 124
    const-wide/16 v3, 0x7d0

    .line 125
    .line 126
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-ne p1, v0, :cond_9

    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_9
    :goto_3
    sget-object p1, Lteam/opay/core/common/FontCache;->a:Lteam/opay/core/common/FontCache;

    .line 134
    .line 135
    iget-object v1, p0, Lteam/opay/core/common/FontCache$preGetFont$1;->$appContext:Landroid/content/Context;

    .line 136
    .line 137
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-static {}, Lteam/opay/core/common/FontCache;->c()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    iput v2, p0, Lteam/opay/core/common/FontCache$preGetFont$1;->label:I

    .line 145
    .line 146
    invoke-static {p1, v1, v3, p0}, Lteam/opay/core/common/FontCache;->f(Lteam/opay/core/common/FontCache;Landroid/content/Context;Ljava/util/List;Ljr2;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-ne p1, v0, :cond_a

    .line 151
    .line 152
    return-object v0

    .line 153
    :cond_a
    :goto_4
    sget-object p1, Lnk8;->c:Lnk8;

    .line 154
    .line 155
    const-string v0, "FontCache: All fonts loaded"

    .line 156
    .line 157
    invoke-static {p1, v0, v7, v8, v7}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    .line 159
    .line 160
    :goto_5
    invoke-static {}, Lteam/opay/core/common/FontCache;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    .line 166
    .line 167
    goto :goto_7

    .line 168
    :goto_6
    :try_start_3
    sget-object v0, Lnk8;->c:Lnk8;

    .line 169
    .line 170
    const-string v1, "FontCache: Initialization failed"

    .line 171
    .line 172
    invoke-virtual {v0, v1, p1}, Lteam/opay/core/common/GenericLogger;->i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    .line 174
    .line 175
    goto :goto_5

    .line 176
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 177
    .line 178
    return-object p1

    .line 179
    :goto_8
    invoke-static {}, Lteam/opay/core/common/FontCache;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 184
    .line 185
    .line 186
    throw p1
.end method
