.class public final Lteam/opay/core/http/cache/NetworkCacheResult;
.super Ljava/lang/Object;
.source "NetworkCacheResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/http/cache/NetworkCacheResult$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\u0018\u0000 \u001c*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\u001dB#\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\r0\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001d\u0010\u0010\u001a\u000c\u0012\u0008\u0012\u0006\u0008\u0002\u0018\u00018\u00000\rH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011JB\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\n2(\u0010\u0015\u001a$\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0012H\u0082@\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R \u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u0082\u0002\u0004\n\u0002\u00089\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/core/http/cache/NetworkCacheResult;",
        "T",
        "",
        "Lretrofit2/Call;",
        "Lteam/opay/core/http/HttpResponse;",
        "apiCall",
        "Lteam/opay/core/http/cache/CacheConfig;",
        "config",
        "<init>",
        "(Lretrofit2/Call;Lteam/opay/core/http/cache/CacheConfig;)V",
        "Ljava/lang/reflect/Type;",
        "type",
        "Lv56;",
        "Lteam/opay/core/http/HttpResult;",
        "d",
        "(Ljava/lang/reflect/Type;)Lv56;",
        "f",
        "(Ljr2;)Ljava/lang/Object;",
        "Lkotlin/Function2;",
        "Ljr2;",
        "",
        "emit",
        "e",
        "(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;",
        "a",
        "Lretrofit2/Call;",
        "b",
        "Lteam/opay/core/http/cache/CacheConfig;",
        "c",
        "Companion",
        "common-http_release"
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
.field public static final c:Lteam/opay/core/http/cache/NetworkCacheResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lteam/opay/core/http/ResultMeta;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lteam/opay/core/http/ResultMeta;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Lteam/opay/core/http/ResultMeta;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lteam/opay/core/http/HttpResponse<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/core/http/cache/CacheConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lteam/opay/core/http/cache/NetworkCacheResult$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/http/cache/NetworkCacheResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/http/cache/NetworkCacheResult;->c:Lteam/opay/core/http/cache/NetworkCacheResult$Companion;

    .line 8
    .line 9
    new-instance v0, Lteam/opay/core/http/ResultMeta;

    .line 10
    .line 11
    sget-object v10, Lteam/opay/core/http/DataSource;->CACHE:Lteam/opay/core/http/DataSource;

    .line 12
    .line 13
    const/16 v8, 0xc

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    move-object v2, v0

    .line 21
    move-object v3, v10

    .line 22
    invoke-direct/range {v2 .. v9}, Lteam/opay/core/http/ResultMeta;-><init>(Lteam/opay/core/http/DataSource;ZJLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lteam/opay/core/http/cache/NetworkCacheResult;->d:Lteam/opay/core/http/ResultMeta;

    .line 26
    .line 27
    new-instance v0, Lteam/opay/core/http/ResultMeta;

    .line 28
    .line 29
    const/16 v7, 0xc

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    const-wide/16 v4, 0x0

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    move-object v1, v0

    .line 37
    move-object v2, v10

    .line 38
    invoke-direct/range {v1 .. v8}, Lteam/opay/core/http/ResultMeta;-><init>(Lteam/opay/core/http/DataSource;ZJLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lteam/opay/core/http/cache/NetworkCacheResult;->e:Lteam/opay/core/http/ResultMeta;

    .line 42
    .line 43
    new-instance v0, Lteam/opay/core/http/ResultMeta;

    .line 44
    .line 45
    sget-object v12, Lteam/opay/core/http/DataSource;->UNKNOWN:Lteam/opay/core/http/DataSource;

    .line 46
    .line 47
    const/16 v17, 0xc

    .line 48
    .line 49
    const/16 v18, 0x0

    .line 50
    .line 51
    const/4 v13, 0x1

    .line 52
    const-wide/16 v14, 0x0

    .line 53
    .line 54
    const/16 v16, 0x0

    .line 55
    .line 56
    move-object v11, v0

    .line 57
    invoke-direct/range {v11 .. v18}, Lteam/opay/core/http/ResultMeta;-><init>(Lteam/opay/core/http/DataSource;ZJLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lteam/opay/core/http/cache/NetworkCacheResult;->f:Lteam/opay/core/http/ResultMeta;

    .line 61
    .line 62
    return-void
.end method

.method public constructor <init>(Lretrofit2/Call;Lteam/opay/core/http/cache/CacheConfig;)V
    .locals 1
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/http/cache/CacheConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lteam/opay/core/http/HttpResponse<",
            "TT;>;>;",
            "Lteam/opay/core/http/cache/CacheConfig;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "apiCall"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "config"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/core/http/cache/NetworkCacheResult;->a:Lretrofit2/Call;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/core/http/cache/NetworkCacheResult;->b:Lteam/opay/core/http/cache/CacheConfig;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic a(Lteam/opay/core/http/cache/NetworkCacheResult;Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/core/http/cache/NetworkCacheResult;->e(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lteam/opay/core/http/cache/NetworkCacheResult;)Lretrofit2/Call;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/http/cache/NetworkCacheResult;->a:Lretrofit2/Call;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lteam/opay/core/http/cache/NetworkCacheResult;)Lteam/opay/core/http/cache/CacheConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/http/cache/NetworkCacheResult;->b:Lteam/opay/core/http/cache/CacheConfig;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final d(Ljava/lang/reflect/Type;)Lv56;
    .locals 2
    .param p1    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lv56<",
            "Lteam/opay/core/http/HttpResult<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lteam/opay/core/http/cache/NetworkCacheResult$asCallbackFlow$1;-><init>(Lteam/opay/core/http/cache/NetworkCacheResult;Ljava/lang/reflect/Type;Ljr2;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ly86;->f(Lkotlin/jvm/functions/Function2;)Lv56;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1, v0}, Ly86;->K(Lv56;Lkotlin/coroutines/CoroutineContext;)Lv56;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final e(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "+TT;>;-",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    instance-of v3, v2, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;

    .line 13
    .line 14
    iget v4, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;-><init>(Lteam/opay/core/http/cache/NetworkCacheResult;Ljr2;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget v5, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->label:I

    .line 38
    .line 39
    const-string v6, "network_else_cache"

    .line 40
    .line 41
    const-string v7, "cache_and_network"

    .line 42
    .line 43
    const/4 v8, 0x2

    .line 44
    const/4 v9, 0x0

    .line 45
    packed-switch v5, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v1

    .line 56
    :pswitch_0
    iget-object v1, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$2:Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v4, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v4, Ljava/lang/String;

    .line 61
    .line 62
    iget-object v3, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Lteam/opay/core/http/cache/NetworkCacheResult;

    .line 65
    .line 66
    invoke-static {v2}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_7

    .line 70
    .line 71
    :pswitch_1
    iget-object v1, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$3:Ljava/lang/Object;

    .line 72
    .line 73
    iget-object v5, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$2:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v5, Ljava/lang/String;

    .line 76
    .line 77
    iget-object v10, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 80
    .line 81
    iget-object v11, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v11, Lteam/opay/core/http/cache/NetworkCacheResult;

    .line 84
    .line 85
    invoke-static {v2}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_5

    .line 89
    .line 90
    :pswitch_2
    iget-object v1, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$3:Ljava/lang/Object;

    .line 91
    .line 92
    iget-object v5, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$2:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v5, Ljava/lang/String;

    .line 95
    .line 96
    iget-object v10, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$1:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 99
    .line 100
    iget-object v11, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v11, Lteam/opay/core/http/cache/NetworkCacheResult;

    .line 103
    .line 104
    invoke-static {v2}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    move-object v2, v1

    .line 108
    move-object v1, v10

    .line 109
    goto/16 :goto_4

    .line 110
    .line 111
    :pswitch_3
    invoke-static {v2}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_2

    .line 115
    .line 116
    :pswitch_4
    invoke-static {v2}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_1

    .line 120
    .line 121
    :pswitch_5
    invoke-static {v2}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object v2, v0, Lteam/opay/core/http/cache/NetworkCacheResult;->a:Lretrofit2/Call;

    .line 125
    .line 126
    iget-object v5, v0, Lteam/opay/core/http/cache/NetworkCacheResult;->b:Lteam/opay/core/http/cache/CacheConfig;

    .line 127
    .line 128
    invoke-virtual {v5}, Lteam/opay/core/http/cache/CacheConfig;->g()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-static {v2, v5}, Lpm1;->a(Lretrofit2/Call;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    iget-object v2, v0, Lteam/opay/core/http/cache/NetworkCacheResult;->b:Lteam/opay/core/http/cache/CacheConfig;

    .line 137
    .line 138
    move-object/from16 v10, p1

    .line 139
    .line 140
    invoke-virtual {v2, v5, v2, v10}, Lteam/opay/core/http/cache/CacheConfig;->c(Ljava/lang/String;Lteam/opay/core/http/cache/CacheConfig;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    sget-object v10, Lok8;->c:Lok8;

    .line 145
    .line 146
    new-instance v11, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v12, "asHttpResult -> cacheData: "

    .line 152
    .line 153
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    invoke-static {v10, v11, v9, v8, v9}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iget-object v10, v0, Lteam/opay/core/http/cache/NetworkCacheResult;->b:Lteam/opay/core/http/cache/CacheConfig;

    .line 167
    .line 168
    invoke-virtual {v10}, Lteam/opay/core/http/cache/CacheConfig;->b()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    sparse-switch v11, :sswitch_data_0

    .line 177
    .line 178
    .line 179
    goto/16 :goto_3

    .line 180
    .line 181
    :sswitch_0
    const-string v11, "network"

    .line 182
    .line 183
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-eqz v10, :cond_8

    .line 188
    .line 189
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 190
    .line 191
    .line 192
    goto/16 :goto_3

    .line 193
    .line 194
    :sswitch_1
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    if-nez v10, :cond_1

    .line 199
    .line 200
    goto/16 :goto_3

    .line 201
    .line 202
    :cond_1
    if-eqz v2, :cond_8

    .line 203
    .line 204
    new-instance v10, Lteam/opay/core/http/HttpResult$Success;

    .line 205
    .line 206
    sget-object v11, Lteam/opay/core/http/cache/NetworkCacheResult;->d:Lteam/opay/core/http/ResultMeta;

    .line 207
    .line 208
    invoke-direct {v10, v2, v11}, Lteam/opay/core/http/HttpResult$Success;-><init>(Ljava/lang/Object;Lteam/opay/core/http/ResultMeta;)V

    .line 209
    .line 210
    .line 211
    iput-object v0, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$0:Ljava/lang/Object;

    .line 212
    .line 213
    iput-object v1, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$1:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object v5, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$2:Ljava/lang/Object;

    .line 216
    .line 217
    iput-object v2, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$3:Ljava/lang/Object;

    .line 218
    .line 219
    const/4 v11, 0x4

    .line 220
    iput v11, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->label:I

    .line 221
    .line 222
    invoke-interface {v1, v10, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    if-ne v10, v4, :cond_8

    .line 227
    .line 228
    return-object v4

    .line 229
    :sswitch_2
    const-string v11, "cache"

    .line 230
    .line 231
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    if-nez v10, :cond_2

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_2
    if-eqz v2, :cond_3

    .line 239
    .line 240
    new-instance v5, Lteam/opay/core/http/HttpResult$Success;

    .line 241
    .line 242
    sget-object v6, Lteam/opay/core/http/cache/NetworkCacheResult;->e:Lteam/opay/core/http/ResultMeta;

    .line 243
    .line 244
    invoke-direct {v5, v2, v6}, Lteam/opay/core/http/HttpResult$Success;-><init>(Ljava/lang/Object;Lteam/opay/core/http/ResultMeta;)V

    .line 245
    .line 246
    .line 247
    const/4 v2, 0x1

    .line 248
    iput v2, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->label:I

    .line 249
    .line 250
    invoke-interface {v1, v5, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    if-ne v1, v4, :cond_4

    .line 255
    .line 256
    return-object v4

    .line 257
    :cond_3
    new-instance v2, Lteam/opay/core/http/HttpResult$UnknownError;

    .line 258
    .line 259
    new-instance v5, Ljava/lang/NullPointerException;

    .line 260
    .line 261
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    .line 262
    .line 263
    .line 264
    sget-object v6, Lteam/opay/core/http/cache/NetworkCacheResult;->f:Lteam/opay/core/http/ResultMeta;

    .line 265
    .line 266
    invoke-direct {v2, v5, v6}, Lteam/opay/core/http/HttpResult$UnknownError;-><init>(Ljava/lang/Throwable;Lteam/opay/core/http/ResultMeta;)V

    .line 267
    .line 268
    .line 269
    iput v8, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->label:I

    .line 270
    .line 271
    invoke-interface {v1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    if-ne v1, v4, :cond_4

    .line 276
    .line 277
    return-object v4

    .line 278
    :cond_4
    :goto_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 279
    .line 280
    return-object v1

    .line 281
    :sswitch_3
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v10

    .line 285
    if-nez v10, :cond_5

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_5
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :sswitch_4
    const-string v11, "cache_else_network"

    .line 293
    .line 294
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v10

    .line 298
    if-nez v10, :cond_6

    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_6
    if-eqz v2, :cond_8

    .line 302
    .line 303
    new-instance v5, Lteam/opay/core/http/HttpResult$Success;

    .line 304
    .line 305
    sget-object v6, Lteam/opay/core/http/cache/NetworkCacheResult;->e:Lteam/opay/core/http/ResultMeta;

    .line 306
    .line 307
    invoke-direct {v5, v2, v6}, Lteam/opay/core/http/HttpResult$Success;-><init>(Ljava/lang/Object;Lteam/opay/core/http/ResultMeta;)V

    .line 308
    .line 309
    .line 310
    const/4 v2, 0x3

    .line 311
    iput v2, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->label:I

    .line 312
    .line 313
    invoke-interface {v1, v5, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    if-ne v1, v4, :cond_7

    .line 318
    .line 319
    return-object v4

    .line 320
    :cond_7
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 321
    .line 322
    return-object v1

    .line 323
    :cond_8
    :goto_3
    move-object v11, v0

    .line 324
    :goto_4
    iput-object v11, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$0:Ljava/lang/Object;

    .line 325
    .line 326
    iput-object v1, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$1:Ljava/lang/Object;

    .line 327
    .line 328
    iput-object v5, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$2:Ljava/lang/Object;

    .line 329
    .line 330
    iput-object v2, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$3:Ljava/lang/Object;

    .line 331
    .line 332
    const/4 v10, 0x5

    .line 333
    iput v10, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->label:I

    .line 334
    .line 335
    invoke-virtual {v11, v3}, Lteam/opay/core/http/cache/NetworkCacheResult;->f(Ljr2;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v10

    .line 339
    if-ne v10, v4, :cond_9

    .line 340
    .line 341
    return-object v4

    .line 342
    :cond_9
    move-object/from16 v16, v10

    .line 343
    .line 344
    move-object v10, v1

    .line 345
    move-object v1, v2

    .line 346
    move-object/from16 v2, v16

    .line 347
    .line 348
    :goto_5
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 349
    .line 350
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getOrNull()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v12

    .line 354
    sget-object v13, Lok8;->c:Lok8;

    .line 355
    .line 356
    new-instance v14, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    const-string v15, "asHttpResult -> networkData: "

    .line 362
    .line 363
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v14

    .line 373
    invoke-static {v13, v14, v9, v8, v9}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    iget-object v8, v11, Lteam/opay/core/http/cache/NetworkCacheResult;->b:Lteam/opay/core/http/cache/CacheConfig;

    .line 377
    .line 378
    invoke-virtual {v8}, Lteam/opay/core/http/cache/CacheConfig;->b()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v8

    .line 382
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v6

    .line 386
    if-eqz v6, :cond_d

    .line 387
    .line 388
    if-nez v12, :cond_c

    .line 389
    .line 390
    if-nez v1, :cond_a

    .line 391
    .line 392
    goto :goto_6

    .line 393
    :cond_a
    new-instance v2, Lteam/opay/core/http/HttpResult$Success;

    .line 394
    .line 395
    sget-object v6, Lteam/opay/core/http/cache/NetworkCacheResult;->e:Lteam/opay/core/http/ResultMeta;

    .line 396
    .line 397
    invoke-direct {v2, v1, v6}, Lteam/opay/core/http/HttpResult$Success;-><init>(Ljava/lang/Object;Lteam/opay/core/http/ResultMeta;)V

    .line 398
    .line 399
    .line 400
    iput-object v11, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$0:Ljava/lang/Object;

    .line 401
    .line 402
    iput-object v5, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$1:Ljava/lang/Object;

    .line 403
    .line 404
    iput-object v12, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$2:Ljava/lang/Object;

    .line 405
    .line 406
    iput-object v9, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$3:Ljava/lang/Object;

    .line 407
    .line 408
    const/4 v1, 0x7

    .line 409
    iput v1, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->label:I

    .line 410
    .line 411
    invoke-interface {v10, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    if-ne v1, v4, :cond_b

    .line 416
    .line 417
    return-object v4

    .line 418
    :cond_b
    move-object v4, v5

    .line 419
    move-object v3, v11

    .line 420
    move-object v1, v12

    .line 421
    goto :goto_7

    .line 422
    :cond_c
    :goto_6
    iput-object v11, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$0:Ljava/lang/Object;

    .line 423
    .line 424
    iput-object v5, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$1:Ljava/lang/Object;

    .line 425
    .line 426
    iput-object v12, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$2:Ljava/lang/Object;

    .line 427
    .line 428
    iput-object v9, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$3:Ljava/lang/Object;

    .line 429
    .line 430
    const/4 v1, 0x6

    .line 431
    iput v1, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->label:I

    .line 432
    .line 433
    invoke-interface {v10, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    if-ne v1, v4, :cond_b

    .line 438
    .line 439
    return-object v4

    .line 440
    :cond_d
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-eqz v1, :cond_e

    .line 445
    .line 446
    iput-object v11, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$0:Ljava/lang/Object;

    .line 447
    .line 448
    iput-object v5, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$1:Ljava/lang/Object;

    .line 449
    .line 450
    iput-object v12, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$2:Ljava/lang/Object;

    .line 451
    .line 452
    iput-object v9, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$3:Ljava/lang/Object;

    .line 453
    .line 454
    const/16 v1, 0x8

    .line 455
    .line 456
    iput v1, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->label:I

    .line 457
    .line 458
    invoke-interface {v10, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    if-ne v1, v4, :cond_b

    .line 463
    .line 464
    return-object v4

    .line 465
    :cond_e
    iput-object v11, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$0:Ljava/lang/Object;

    .line 466
    .line 467
    iput-object v5, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$1:Ljava/lang/Object;

    .line 468
    .line 469
    iput-object v12, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$2:Ljava/lang/Object;

    .line 470
    .line 471
    iput-object v9, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->L$3:Ljava/lang/Object;

    .line 472
    .line 473
    const/16 v1, 0x9

    .line 474
    .line 475
    iput v1, v3, Lteam/opay/core/http/cache/NetworkCacheResult$dispatchResult$1;->label:I

    .line 476
    .line 477
    invoke-interface {v10, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    if-ne v1, v4, :cond_b

    .line 482
    .line 483
    return-object v4

    .line 484
    :goto_7
    if-eqz v1, :cond_f

    .line 485
    .line 486
    iget-object v2, v3, Lteam/opay/core/http/cache/NetworkCacheResult;->b:Lteam/opay/core/http/cache/CacheConfig;

    .line 487
    .line 488
    invoke-virtual {v2, v4, v1}, Lteam/opay/core/http/cache/CacheConfig;->h(Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    .line 490
    .line 491
    :cond_f
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 492
    .line 493
    return-object v1

    .line 494
    nop

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :sswitch_data_0
    .sparse-switch
        0x73c2c5 -> :sswitch_4
        0xfe83ad -> :sswitch_3
        0x5a0af82 -> :sswitch_2
        0x67ea8e89 -> :sswitch_1
        0x6de15a2e -> :sswitch_0
    .end sparse-switch
.end method

.method public final f(Ljr2;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/cache/NetworkCacheResult;->a:Lretrofit2/Call;

    .line 2
    .line 3
    invoke-interface {v0}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Ljr2;)Ljr2;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Ljr2;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->B()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lteam/opay/core/http/cache/NetworkCacheResult$a;

    .line 21
    .line 22
    invoke-direct {v2, p0, v1}, Lteam/opay/core/http/cache/NetworkCacheResult$a;-><init>(Lteam/opay/core/http/cache/NetworkCacheResult;Lzv1;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lteam/opay/core/http/cache/NetworkCacheResult$b;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lteam/opay/core/http/cache/NetworkCacheResult$b;-><init>(Lretrofit2/Call;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v2}, Lzv1;->t(Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->r()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-ne v0, v1, :cond_0

    .line 45
    .line 46
    invoke-static {p1}, Lp33;->c(Ljr2;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-ne v0, p1, :cond_1

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    check-cast v0, Lteam/opay/core/http/HttpResult;

    .line 57
    .line 58
    return-object v0
.end method
