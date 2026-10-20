.class final Lcashier/net/CashLiveCallKt$onCallResponse$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CashLiveCall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/net/CashLiveCallKt;->e(Lretrofit2/Response;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Ljr2;)Ljava/lang/Object;
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
    c = "cashier.net.CashLiveCallKt$onCallResponse$2$1"
    f = "CashLiveCall.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $authError:Lteam/opay/swarmfoundation/login/AuthError;

.field final synthetic $it:Lcashier/net/ResultData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcashier/net/ResultData<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $targetUrl:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(Lteam/opay/swarmfoundation/login/AuthError;Lcashier/net/ResultData;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/swarmfoundation/login/AuthError;",
            "Lcashier/net/ResultData<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lcashier/net/CashLiveCallKt$onCallResponse$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;->$authError:Lteam/opay/swarmfoundation/login/AuthError;

    .line 2
    .line 3
    iput-object p2, p0, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;->$it:Lcashier/net/ResultData;

    .line 4
    .line 5
    iput-object p3, p0, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;->$targetUrl:Ljava/lang/String;

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
    new-instance p1, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;->$authError:Lteam/opay/swarmfoundation/login/AuthError;

    .line 4
    .line 5
    iget-object v1, p0, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;->$it:Lcashier/net/ResultData;

    .line 6
    .line 7
    iget-object v2, p0, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;->$targetUrl:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;-><init>(Lteam/opay/swarmfoundation/login/AuthError;Lcashier/net/ResultData;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    iget v0, p0, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;->$authError:Lteam/opay/swarmfoundation/login/AuthError;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    sget-object p1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 16
    .line 17
    const-class v0, Lteam/opay/swarmfoundation/login/IAuthError;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lteam/opay/swarmfoundation/login/IAuthError;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;->$authError:Lteam/opay/swarmfoundation/login/AuthError;

    .line 28
    .line 29
    iget-object v1, p0, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;->$it:Lcashier/net/ResultData;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcashier/net/ResultData;->c()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    const-string v1, ""

    .line 38
    .line 39
    :cond_0
    iget-object v2, p0, Lcashier/net/CashLiveCallKt$onCallResponse$2$1;->$targetUrl:Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {p1, v0, v1, v2}, Lteam/opay/swarmfoundation/login/IAuthError;->onAuthError(Lteam/opay/swarmfoundation/login/AuthError;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method
