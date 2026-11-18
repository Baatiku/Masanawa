.class public final Lteam/opay/core/http/arch/LiveDataCall;
.super Landroidx/lifecycle/LiveData;
.source "LiveDataCall.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "Lteam/opay/core/http/arch/ApiResponse<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00040\u0003B;\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012$\u0010\t\u001a \u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u0007j\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJS\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000028\u0010\u0010\u001a4\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000e0\u000cj\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J/\u0010\u0019\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00010\u00042\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\rH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR2\u0010\t\u001a \u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u0007j\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!RN\u0010%\u001a:\u00126\u00124\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000e0\u000cj\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u000f0#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010$\u00a8\u0006&"
    }
    d2 = {
        "Lteam/opay/core/http/arch/LiveDataCall;",
        "R",
        "T",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/ApiResponse;",
        "Lretrofit2/Call;",
        "call",
        "Lkotlin/Function1;",
        "Lteam/opay/core/http/arch/ResponseAdapter;",
        "responseAdapter",
        "<init>",
        "(Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)V",
        "Lkotlin/Function2;",
        "Lretrofit2/Response;",
        "Lteam/opay/core/http/arch/ApiErrorResponse;",
        "Lteam/opay/core/http/arch/ResponseChecker;",
        "responseChecker",
        "d",
        "(Lkotlin/jvm/functions/Function2;)Lteam/opay/core/http/arch/LiveDataCall;",
        "",
        "onActive",
        "()V",
        "Lokhttp3/Request;",
        "request",
        "response",
        "e",
        "(Lokhttp3/Request;Lretrofit2/Response;)Lteam/opay/core/http/arch/ApiResponse;",
        "a",
        "Lretrofit2/Call;",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "c",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "started",
        "",
        "Ljava/util/List;",
        "responseCheckers",
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


# instance fields
.field public final a:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TR;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function2<",
            "Lretrofit2/Response<",
            "TR;>;TT;",
            "Lteam/opay/core/http/arch/ApiErrorResponse<",
            "TT;>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TR;+TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "responseAdapter"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/core/http/arch/LiveDataCall;->a:Lretrofit2/Call;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/core/http/arch/LiveDataCall;->b:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lteam/opay/core/http/arch/LiveDataCall;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lteam/opay/core/http/arch/LiveDataCall;->d:Ljava/util/List;

    .line 32
    .line 33
    return-void
.end method

.method public static final synthetic b(Lteam/opay/core/http/arch/LiveDataCall;Lokhttp3/Request;Lretrofit2/Response;)Lteam/opay/core/http/arch/ApiResponse;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/http/arch/LiveDataCall;->e(Lokhttp3/Request;Lretrofit2/Response;)Lteam/opay/core/http/arch/ApiResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lteam/opay/core/http/arch/LiveDataCall;Lteam/opay/core/http/arch/ApiResponse;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final d(Lkotlin/jvm/functions/Function2;)Lteam/opay/core/http/arch/LiveDataCall;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lretrofit2/Response<",
            "TR;>;-TT;",
            "Lteam/opay/core/http/arch/ApiErrorResponse<",
            "TT;>;>;)",
            "Lteam/opay/core/http/arch/LiveDataCall<",
            "TR;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "responseChecker"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/http/arch/LiveDataCall;->d:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final e(Lokhttp3/Request;Lretrofit2/Response;)Lteam/opay/core/http/arch/ApiResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Lretrofit2/Response<",
            "TR;>;)",
            "Lteam/opay/core/http/arch/ApiResponse<",
            "+TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lteam/opay/core/http/arch/LiveDataCall;->b:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v2, v1

    .line 16
    :goto_0
    if-eqz v0, :cond_9

    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/core/http/arch/LiveDataCall;->d:Ljava/util/List;

    .line 19
    .line 20
    new-instance v3, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_3

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 40
    .line 41
    invoke-interface {v4, p2, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lteam/opay/core/http/arch/ApiErrorResponse;

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {v4}, Lteam/opay/core/http/arch/ApiErrorResponse;->c()Lteam/opay/core/http/arch/ApiError;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move-object v4, v1

    .line 55
    :goto_2
    if-eqz v4, :cond_1

    .line 56
    .line 57
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Lteam/opay/core/http/arch/ApiError;

    .line 81
    .line 82
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_6

    .line 95
    .line 96
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    move-object v5, v4

    .line 101
    check-cast v5, Lteam/opay/core/http/arch/ApiError;

    .line 102
    .line 103
    invoke-virtual {v5}, Lteam/opay/core/http/arch/ApiError;->e()Lteam/opay/core/common/base/ErrorType;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    sget-object v7, Lteam/opay/core/common/base/ErrorType;->TOKEN_EXPIRED:Lteam/opay/core/common/base/ErrorType;

    .line 108
    .line 109
    if-eq v6, v7, :cond_7

    .line 110
    .line 111
    invoke-virtual {v5}, Lteam/opay/core/http/arch/ApiError;->e()Lteam/opay/core/common/base/ErrorType;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    sget-object v6, Lteam/opay/core/common/base/ErrorType;->FORCED_UPGRADE:Lteam/opay/core/common/base/ErrorType;

    .line 116
    .line 117
    if-ne v5, v6, :cond_5

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_6
    move-object v4, v1

    .line 121
    :cond_7
    :goto_4
    check-cast v4, Lteam/opay/core/http/arch/ApiError;

    .line 122
    .line 123
    if-eqz v4, :cond_8

    .line 124
    .line 125
    sget-object v0, La80;->a:La80;

    .line 126
    .line 127
    invoke-virtual {v4}, Lteam/opay/core/http/arch/ApiError;->f()Lteam/opay/core/common/base/HttpError;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, La80;->c(Lteam/opay/core/common/base/HttpError;)V

    .line 132
    .line 133
    .line 134
    sget-object v0, Luu;->a:Luu;

    .line 135
    .line 136
    invoke-virtual {v4}, Lteam/opay/core/http/arch/ApiError;->c()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {v4}, Lteam/opay/core/http/arch/ApiError;->b()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v4}, Lteam/opay/core/http/arch/ApiError;->e()Lteam/opay/core/common/base/ErrorType;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    const-string v6, ""

    .line 149
    .line 150
    invoke-virtual {v4, v6, v1, v3, v5}, Lteam/opay/core/http/arch/ApiError;->a(Ljava/lang/String;ILjava/lang/String;Lteam/opay/core/common/base/ErrorType;)Lteam/opay/core/http/arch/ApiError;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v2, v1}, Luu;->a(Ljava/lang/Object;Lteam/opay/core/http/arch/ApiError;)Lteam/opay/core/http/arch/ApiErrorResponse;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    goto :goto_5

    .line 159
    :cond_8
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Lteam/opay/core/http/arch/ApiError;

    .line 164
    .line 165
    if-eqz v0, :cond_9

    .line 166
    .line 167
    sget-object v1, Luu;->a:Luu;

    .line 168
    .line 169
    invoke-virtual {v1, v2, v0}, Luu;->a(Ljava/lang/Object;Lteam/opay/core/http/arch/ApiError;)Lteam/opay/core/http/arch/ApiErrorResponse;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    :cond_9
    :goto_5
    if-nez v1, :cond_a

    .line 174
    .line 175
    sget-object v0, Luu;->a:Luu;

    .line 176
    .line 177
    invoke-virtual {v0, p1, p2, v2}, Luu;->d(Lokhttp3/Request;Lretrofit2/Response;Ljava/lang/Object;)Lteam/opay/core/http/arch/ApiResponse;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    :cond_a
    return-object v1
.end method

.method public onActive()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onActive()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/http/arch/LiveDataCall;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/core/http/arch/LiveDataCall;->a:Lretrofit2/Call;

    .line 17
    .line 18
    new-instance v1, Lteam/opay/core/http/arch/LiveDataCall$a;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lteam/opay/core/http/arch/LiveDataCall$a;-><init>(Lteam/opay/core/http/arch/LiveDataCall;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
