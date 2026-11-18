.class public final Lcashier/net/CashLiveCallKt;
.super Ljava/lang/Object;
.source "CashLiveCall.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u001aO\u0010\t\u001a\u00020\u0008\"\u0004\u0008\u0000\u0010\u0000*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020\u00012\u0014\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u001aS\u0010\r\u001a\u00020\u0008\"\u0004\u0008\u0000\u0010\u00002\u0012\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020\u000b2\u0014\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001a\u001b\u0010\u0012\u001a\u00020\u00052\n\u0010\u0011\u001a\u00060\u000fj\u0002`\u0010H\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a\u001b\u0010\u0014\u001a\u00020\u00052\n\u0010\u0011\u001a\u00060\u000fj\u0002`\u0010H\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0013\u001a?\u0010\u0016\u001a\u00020\u0008\"\u0004\u0008\u0000\u0010\u00002\u0014\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u00020\u00032\u000e\u0010\u0015\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0002H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\"\"\u0010\u001d\u001a\u00020\u00058\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\"\"\u0010!\u001a\u00020\u00058\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0018\u001a\u0004\u0008\u001f\u0010\u001a\"\u0004\u0008 \u0010\u001c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\""
    }
    d2 = {
        "T",
        "Lretrofit2/Call;",
        "Lcashier/net/ResultData;",
        "Landroidx/lifecycle/MutableLiveData;",
        "liveData",
        "",
        "successCode",
        "targetUrl",
        "",
        "a",
        "(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;)V",
        "Lretrofit2/Response;",
        "response",
        "e",
        "(Lretrofit2/Response;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Ljr2;)Ljava/lang/Object;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "t",
        "c",
        "(Ljava/lang/Exception;)Ljava/lang/String;",
        "d",
        "data",
        "f",
        "(Landroidx/lifecycle/MutableLiveData;Lcashier/net/ResultData;Ljr2;)Ljava/lang/Object;",
        "Ljava/lang/String;",
        "getNET_ERROR_MSG",
        "()Ljava/lang/String;",
        "setNET_ERROR_MSG",
        "(Ljava/lang/String;)V",
        "NET_ERROR_MSG",
        "b",
        "getOK_TIMEOUT_MSG",
        "setOK_TIMEOUT_MSG",
        "OK_TIMEOUT_MSG",
        "cashier_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "Please check your internet connection and try again."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Ljava/lang/String; = "Your request timed out due to an unstable internet connection."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final a(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "Lcashier/net/ResultData<",
            "TT;>;>;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcashier/net/ResultData<",
            "+TT;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "liveData"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "successCode"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "targetUrl"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lkotlinx/coroutines/g;->a(Lkotlin/coroutines/CoroutineContext;)Lzr2;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v0, Lcashier/net/CashLiveCallKt$fetch$1;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    move-object v2, v0

    .line 33
    move-object v3, p0

    .line 34
    move-object v4, p1

    .line 35
    move-object v5, p2

    .line 36
    move-object v6, p3

    .line 37
    invoke-direct/range {v2 .. v7}, Lcashier/net/CashLiveCallKt$fetch$1;-><init>(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Ljr2;)V

    .line 38
    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    move-object v4, v0

    .line 45
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static synthetic b(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const-string p2, "00000"

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const-string p3, ""

    .line 12
    .line 13
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcashier/net/CashLiveCallKt;->a(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final c(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "t"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "timeout"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {p0, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 v0, 0x1

    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v2, "neterror"

    .line 26
    .line 27
    :goto_0
    return-object v2
.end method

.method public static final d(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "t"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "timeout"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {p0, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 v0, 0x1

    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    sget-object p0, Lcashier/net/CashLiveCallKt;->b:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object p0, Lcashier/net/CashLiveCallKt;->a:Ljava/lang/String;

    .line 28
    .line 29
    :goto_0
    return-object p0
.end method

.method public static final e(Lretrofit2/Response;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Ljr2;)Ljava/lang/Object;
    .locals 6
    .param p0    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Response<",
            "Lcashier/net/ResultData<",
            "TT;>;>;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcashier/net/ResultData<",
            "+TT;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    instance-of v0, p4, Lcashier/net/CashLiveCallKt$onCallResponse$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcashier/net/CashLiveCallKt$onCallResponse$1;

    .line 7
    .line 8
    iget v1, v0, Lcashier/net/CashLiveCallKt$onCallResponse$1;->label:I

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
    iput v1, v0, Lcashier/net/CashLiveCallKt$onCallResponse$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcashier/net/CashLiveCallKt$onCallResponse$1;

    .line 21
    .line 22
    invoke-direct {v0, p4}, Lcashier/net/CashLiveCallKt$onCallResponse$1;-><init>(Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcashier/net/CashLiveCallKt$onCallResponse$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcashier/net/CashLiveCallKt$onCallResponse$1;->label:I

    .line 32
    .line 33
    const-string v3, "ERROR"

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Lcashier/net/CashLiveCallKt$onCallResponse$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lcashier/net/ResultData;

    .line 43
    .line 44
    iget-object p1, v0, Lcashier/net/CashLiveCallKt$onCallResponse$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    invoke-static {p4}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_2
    invoke-static {p4}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    .line 65
    .line 66
    .line 67
    move-result p4

    .line 68
    const/4 v2, 0x0

    .line 69
    if-eqz p4, :cond_a

    .line 70
    .line 71
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lcashier/net/ResultData;

    .line 76
    .line 77
    if-eqz p0, :cond_b

    .line 78
    .line 79
    invoke-virtual {p0}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_6

    .line 88
    .line 89
    invoke-virtual {p0}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const-string p3, "EMPTY"

    .line 94
    .line 95
    if-nez p2, :cond_3

    .line 96
    .line 97
    invoke-virtual {p0, p3}, Lcashier/net/ResultData;->e(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    instance-of p2, p2, Ljava/util/List;

    .line 106
    .line 107
    const-string p4, "SUCCESS"

    .line 108
    .line 109
    if-eqz p2, :cond_5

    .line 110
    .line 111
    invoke-virtual {p0}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-nez p2, :cond_4

    .line 122
    .line 123
    invoke-virtual {p0, p3}, Lcashier/net/ResultData;->e(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_4
    invoke-virtual {p0, p4}, Lcashier/net/ResultData;->e(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    invoke-virtual {p0, p4}, Lcashier/net/ResultData;->e(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_6
    invoke-virtual {p0}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    const-string p4, "unauthenticated_logout"

    .line 140
    .line 141
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p4

    .line 145
    if-eqz p4, :cond_7

    .line 146
    .line 147
    sget-object p2, Lteam/opay/swarmfoundation/login/AuthError;->TOKEN_TICK_OUT:Lteam/opay/swarmfoundation/login/AuthError;

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_7
    const-string p4, "unauthenticated"

    .line 151
    .line 152
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-eqz p2, :cond_8

    .line 157
    .line 158
    sget-object p2, Lteam/opay/swarmfoundation/login/AuthError;->TOKEN_TIMEOUT:Lteam/opay/swarmfoundation/login/AuthError;

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_8
    move-object p2, v2

    .line 162
    :goto_1
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 163
    .line 164
    .line 165
    move-result-object p4

    .line 166
    new-instance v5, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;

    .line 167
    .line 168
    invoke-direct {v5, p2, p0, p3, v2}, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;-><init>(Lteam/opay/swarmfoundation/login/AuthError;Lcashier/net/ResultData;Ljava/lang/String;Ljr2;)V

    .line 169
    .line 170
    .line 171
    iput-object p1, v0, Lcashier/net/CashLiveCallKt$onCallResponse$1;->L$0:Ljava/lang/Object;

    .line 172
    .line 173
    iput-object p0, v0, Lcashier/net/CashLiveCallKt$onCallResponse$1;->L$1:Ljava/lang/Object;

    .line 174
    .line 175
    iput v4, v0, Lcashier/net/CashLiveCallKt$onCallResponse$1;->label:I

    .line 176
    .line 177
    invoke-static {p4, v5, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    if-ne p2, v1, :cond_9

    .line 182
    .line 183
    return-object v1

    .line 184
    :cond_9
    :goto_2
    invoke-virtual {p0, v3}, Lcashier/net/ResultData;->e(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :goto_3
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lretrofit2/Response;->message()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p3

    .line 200
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    .line 204
    .line 205
    .line 206
    move-result p3

    .line 207
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    new-instance p3, Lcashier/net/ResultData;

    .line 215
    .line 216
    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-direct {p3, v3, p0, p2, v2}, Lcashier/net/ResultData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    :cond_b
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 231
    .line 232
    return-object p0
.end method

.method public static final f(Landroidx/lifecycle/MutableLiveData;Lcashier/net/ResultData;Ljr2;)Ljava/lang/Object;
    .locals 3
    .param p0    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcashier/net/ResultData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcashier/net/ResultData<",
            "+TT;>;>;",
            "Lcashier/net/ResultData<",
            "+TT;>;",
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
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcashier/net/CashLiveCallKt$postData$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcashier/net/CashLiveCallKt$postData$2;-><init>(Landroidx/lifecycle/MutableLiveData;Lcashier/net/ResultData;Ljr2;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p2}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-ne p0, p1, :cond_0

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method
