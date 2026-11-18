.class final Lcashier/net/CashLiveCallKt$fetch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CashLiveCall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/net/CashLiveCallKt;->a(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010\u0000*\u00020\u0001H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "T",
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Ln33;
    c = "cashier.net.CashLiveCallKt$fetch$1"
    f = "CashLiveCall.kt"
    l = {
        0x1e,
        0x21
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $liveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcashier/net/ResultData<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic $successCode:Ljava/lang/String;

.field final synthetic $targetUrl:Ljava/lang/String;

.field final synthetic $this_fetch:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcashier/net/ResultData<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcashier/net/ResultData<",
            "TT;>;>;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcashier/net/ResultData<",
            "+TT;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lcashier/net/CashLiveCallKt$fetch$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcashier/net/CashLiveCallKt$fetch$1;->$this_fetch:Lretrofit2/Call;

    .line 2
    .line 3
    iput-object p2, p0, Lcashier/net/CashLiveCallKt$fetch$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    iput-object p3, p0, Lcashier/net/CashLiveCallKt$fetch$1;->$successCode:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcashier/net/CashLiveCallKt$fetch$1;->$targetUrl:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 6
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
    new-instance p1, Lcashier/net/CashLiveCallKt$fetch$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcashier/net/CashLiveCallKt$fetch$1;->$this_fetch:Lretrofit2/Call;

    .line 4
    .line 5
    iget-object v2, p0, Lcashier/net/CashLiveCallKt$fetch$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    iget-object v3, p0, Lcashier/net/CashLiveCallKt$fetch$1;->$successCode:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcashier/net/CashLiveCallKt$fetch$1;->$targetUrl:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcashier/net/CashLiveCallKt$fetch$1;-><init>(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Ljr2;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lcashier/net/CashLiveCallKt$fetch$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcashier/net/CashLiveCallKt$fetch$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcashier/net/CashLiveCallKt$fetch$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcashier/net/CashLiveCallKt$fetch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    iget v1, p0, Lcashier/net/CashLiveCallKt$fetch$1;->label:I

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
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget-object p1, p0, Lcashier/net/CashLiveCallKt$fetch$1;->$this_fetch:Lretrofit2/Call;

    .line 37
    .line 38
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v1, "response"

    .line 43
    .line 44
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcashier/net/CashLiveCallKt$fetch$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    iget-object v4, p0, Lcashier/net/CashLiveCallKt$fetch$1;->$successCode:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v5, p0, Lcashier/net/CashLiveCallKt$fetch$1;->$targetUrl:Ljava/lang/String;

    .line 52
    .line 53
    iput v3, p0, Lcashier/net/CashLiveCallKt$fetch$1;->label:I

    .line 54
    .line 55
    invoke-static {p1, v1, v4, v5, p0}, Lcashier/net/CashLiveCallKt;->e(Lretrofit2/Response;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Ljr2;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    if-ne p1, v0, :cond_3

    .line 60
    .line 61
    return-object v0

    .line 62
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcashier/net/CashLiveCallKt$fetch$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

    .line 66
    .line 67
    new-instance v3, Lcashier/net/ResultData;

    .line 68
    .line 69
    invoke-static {p1}, Lcashier/net/CashLiveCallKt;->c(Ljava/lang/Exception;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {p1}, Lcashier/net/CashLiveCallKt;->d(Ljava/lang/Exception;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const/4 v5, 0x0

    .line 78
    const-string v6, "ERROR"

    .line 79
    .line 80
    invoke-direct {v3, v6, v4, p1, v5}, Lcashier/net/ResultData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iput v2, p0, Lcashier/net/CashLiveCallKt$fetch$1;->label:I

    .line 84
    .line 85
    invoke-static {v1, v3, p0}, Lcashier/net/CashLiveCallKt;->f(Landroidx/lifecycle/MutableLiveData;Lcashier/net/ResultData;Ljr2;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-ne p1, v0, :cond_3

    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p1
.end method
