.class final Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UpdateApiService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/update/network/UpdateApiService;->b(Landroid/content/Context;Ljava/util/Map;)Landroidx/lifecycle/LiveData;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.update.network.UpdateApiService$checkUpdate$1"
    f = "UpdateApiService.kt"
    l = {
        0x4c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $liveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/update/network/UpdateResultData<",
            "Lteam/opay/pay/update/bean/UpdateVerCheckRsp;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $mutableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Landroidx/lifecycle/MutableLiveData;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/update/network/UpdateResultData<",
            "Lteam/opay/pay/update/bean/UpdateVerCheckRsp;",
            ">;>;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;->$context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;->$mutableMap:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

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
    new-instance p1, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;->$mutableMap:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;-><init>(Landroid/content/Context;Ljava/util/Map;Landroidx/lifecycle/MutableLiveData;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;->label:I

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
    sget-object p1, Lteam/opay/pay/update/network/UpdateApiService;->a:Lteam/opay/pay/update/network/UpdateApiService;

    .line 28
    .line 29
    iget-object v1, p0, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;->$context:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v3, p0, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;->$mutableMap:Ljava/util/Map;

    .line 32
    .line 33
    iget-object v4, p0, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    iput v2, p0, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;->label:I

    .line 36
    .line 37
    invoke-static {p1, v1, v3, v4, p0}, Lteam/opay/pay/update/network/UpdateApiService;->a(Lteam/opay/pay/update/network/UpdateApiService;Landroid/content/Context;Ljava/util/Map;Landroidx/lifecycle/MutableLiveData;Ljr2;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p1
.end method
