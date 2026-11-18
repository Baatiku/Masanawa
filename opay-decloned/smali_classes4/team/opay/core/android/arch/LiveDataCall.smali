.class public final Lteam/opay/core/android/arch/LiveDataCall;
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
        "Lteam/opay/core/android/arch/ApiResponse<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00040\u0003B;\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012$\u0010\t\u001a \u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u0007j\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJS\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000028\u0010\u0010\u001a4\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000e0\u000cj\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J#\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00042\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\rH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR2\u0010\t\u001a \u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u0007j\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fRN\u0010#\u001a:\u00126\u00124\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000e0\u000cj\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u000f0!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "R",
        "T",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "Lretrofit2/Call;",
        "call",
        "Lkotlin/Function1;",
        "Lteam/opay/core/android/arch/ResponseAdapter;",
        "responseAdapter",
        "<init>",
        "(Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)V",
        "Lkotlin/Function2;",
        "Lretrofit2/Response;",
        "Lteam/opay/core/android/arch/ApiErrorResponse;",
        "Lteam/opay/core/android/arch/ResponseChecker;",
        "responseChecker",
        "d",
        "(Lkotlin/jvm/functions/Function2;)Lteam/opay/core/android/arch/LiveDataCall;",
        "",
        "onActive",
        "()V",
        "response",
        "e",
        "(Lretrofit2/Response;)Lteam/opay/core/android/arch/ApiResponse;",
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
        "sdk_release"
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
            "Lteam/opay/core/android/arch/ApiErrorResponse<",
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
    iput-object p1, p0, Lteam/opay/core/android/arch/LiveDataCall;->a:Lretrofit2/Call;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/core/android/arch/LiveDataCall;->b:Lkotlin/jvm/functions/Function1;

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
    iput-object p1, p0, Lteam/opay/core/android/arch/LiveDataCall;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lteam/opay/core/android/arch/LiveDataCall;->d:Ljava/util/List;

    .line 32
    .line 33
    return-void
.end method

.method public static final synthetic b(Lteam/opay/core/android/arch/LiveDataCall;Lretrofit2/Response;)Lteam/opay/core/android/arch/ApiResponse;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/LiveDataCall;->e(Lretrofit2/Response;)Lteam/opay/core/android/arch/ApiResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lteam/opay/core/android/arch/LiveDataCall;Lteam/opay/core/android/arch/ApiResponse;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final d(Lkotlin/jvm/functions/Function2;)Lteam/opay/core/android/arch/LiveDataCall;
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
            "TR;>;-TT;+",
            "Lteam/opay/core/android/arch/ApiErrorResponse<",
            "TT;>;>;)",
            "Lteam/opay/core/android/arch/LiveDataCall<",
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
    iget-object v0, p0, Lteam/opay/core/android/arch/LiveDataCall;->d:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final e(Lretrofit2/Response;)Lteam/opay/core/android/arch/ApiResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TR;>;)",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

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
    iget-object v2, p0, Lteam/opay/core/android/arch/LiveDataCall;->b:Lkotlin/jvm/functions/Function1;

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
    if-eqz v0, :cond_c

    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/core/android/arch/LiveDataCall;->d:Ljava/util/List;

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
    invoke-interface {v4, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {v4}, Lteam/opay/core/android/arch/ApiErrorResponse;->d()Ljava/util/List;

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
    check-cast v4, Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

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
    check-cast v5, Lteam/opay/core/android/arch/ApiError;

    .line 102
    .line 103
    invoke-virtual {v5}, Lteam/opay/core/android/arch/ApiError;->getType()Lteam/opay/core/android/arch/ErrorType;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    sget-object v7, Lteam/opay/core/android/arch/ErrorType;->UNAUTHORIZED:Lteam/opay/core/android/arch/ErrorType;

    .line 108
    .line 109
    if-eq v6, v7, :cond_7

    .line 110
    .line 111
    invoke-virtual {v5}, Lteam/opay/core/android/arch/ApiError;->getType()Lteam/opay/core/android/arch/ErrorType;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    sget-object v6, Lteam/opay/core/android/arch/ErrorType;->TOKEN_TIMEOUT:Lteam/opay/core/android/arch/ErrorType;

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
    check-cast v4, Lteam/opay/core/android/arch/ApiError;

    .line 122
    .line 123
    if-eqz v4, :cond_b

    .line 124
    .line 125
    new-instance v3, Lteam/opay/core/settings/SettingsStorage;

    .line 126
    .line 127
    sget-object v5, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 128
    .line 129
    invoke-virtual {v5}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v5}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-direct {v3, v5}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Lteam/opay/core/settings/SettingsStorage;->e()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-static {v3}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_8

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_8
    invoke-virtual {v4}, Lteam/opay/core/android/arch/ApiError;->getType()Lteam/opay/core/android/arch/ErrorType;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    sget-object v5, Lteam/opay/core/android/arch/ErrorType;->TOKEN_TIMEOUT:Lteam/opay/core/android/arch/ErrorType;

    .line 156
    .line 157
    if-ne v3, v5, :cond_9

    .line 158
    .line 159
    sget-object v3, Lteam/opay/swarmfoundation/login/AuthError;->TOKEN_TIMEOUT:Lteam/opay/swarmfoundation/login/AuthError;

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_9
    sget-object v3, Lteam/opay/swarmfoundation/login/AuthError;->TOKEN_TICK_OUT:Lteam/opay/swarmfoundation/login/AuthError;

    .line 163
    .line 164
    :goto_5
    sget-object v5, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 165
    .line 166
    const-class v6, Lteam/opay/swarmfoundation/login/IAuthError;

    .line 167
    .line 168
    invoke-virtual {v5, v6}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    check-cast v5, Lteam/opay/swarmfoundation/login/IAuthError;

    .line 173
    .line 174
    if-eqz v5, :cond_b

    .line 175
    .line 176
    invoke-virtual {v4}, Lteam/opay/core/android/arch/ApiError;->getMessage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    const-string v6, ""

    .line 181
    .line 182
    if-nez v4, :cond_a

    .line 183
    .line 184
    move-object v4, v6

    .line 185
    :cond_a
    invoke-interface {v5, v3, v4, v6}, Lteam/opay/swarmfoundation/login/IAuthError;->onAuthError(Lteam/opay/swarmfoundation/login/AuthError;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :cond_b
    :goto_6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-nez v3, :cond_c

    .line 193
    .line 194
    sget-object v1, Lvu;->a:Lvu;

    .line 195
    .line 196
    invoke-virtual {v1, v2, v0}, Lvu;->b(Ljava/lang/Object;Ljava/util/List;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    :cond_c
    if-nez v1, :cond_d

    .line 201
    .line 202
    sget-object v0, Lvu;->a:Lvu;

    .line 203
    .line 204
    invoke-virtual {v0, p1, v2}, Lvu;->f(Lretrofit2/Response;Ljava/lang/Object;)Lteam/opay/core/android/arch/ApiResponse;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    :cond_d
    const-string p1, "null cannot be cast to non-null type team.opay.core.android.arch.ApiResponse<T of team.opay.core.android.arch.LiveDataCall>"

    .line 209
    .line 210
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
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
    iget-object v0, p0, Lteam/opay/core/android/arch/LiveDataCall;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object v0, p0, Lteam/opay/core/android/arch/LiveDataCall;->a:Lretrofit2/Call;

    .line 17
    .line 18
    new-instance v1, Lteam/opay/core/android/arch/LiveDataCall$a;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lteam/opay/core/android/arch/LiveDataCall$a;-><init>(Lteam/opay/core/android/arch/LiveDataCall;)V

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
