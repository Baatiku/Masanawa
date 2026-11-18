.class final Lteam/opay/core/android/arch/CancellableNetworkAction$postAuthError$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CancellableNetworkAction.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/android/arch/CancellableNetworkAction;->o(Lteam/opay/core/android/arch/ApiError;)Lkotlinx/coroutines/l;
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
    c = "team.opay.core.android.arch.CancellableNetworkAction$postAuthError$1"
    f = "CancellableNetworkAction.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $error:Lteam/opay/core/android/arch/ApiError;

.field label:I


# direct methods
.method public constructor <init>(Lteam/opay/core/android/arch/ApiError;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/android/arch/ApiError;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/android/arch/CancellableNetworkAction$postAuthError$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$postAuthError$1;->$error:Lteam/opay/core/android/arch/ApiError;

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
    new-instance p1, Lteam/opay/core/android/arch/CancellableNetworkAction$postAuthError$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$postAuthError$1;->$error:Lteam/opay/core/android/arch/ApiError;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/core/android/arch/CancellableNetworkAction$postAuthError$1;-><init>(Lteam/opay/core/android/arch/ApiError;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/arch/CancellableNetworkAction$postAuthError$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/arch/CancellableNetworkAction$postAuthError$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/android/arch/CancellableNetworkAction$postAuthError$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/android/arch/CancellableNetworkAction$postAuthError$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$postAuthError$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$postAuthError$1;->$error:Lteam/opay/core/android/arch/ApiError;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/core/android/arch/ApiError;->getType()Lteam/opay/core/android/arch/ErrorType;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, v0

    .line 22
    :goto_0
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->TOKEN_TIMEOUT:Lteam/opay/core/android/arch/ErrorType;

    .line 23
    .line 24
    if-ne p1, v1, :cond_1

    .line 25
    .line 26
    sget-object p1, Lteam/opay/swarmfoundation/login/AuthError;->TOKEN_TIMEOUT:Lteam/opay/swarmfoundation/login/AuthError;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    sget-object p1, Lteam/opay/swarmfoundation/login/AuthError;->TOKEN_TICK_OUT:Lteam/opay/swarmfoundation/login/AuthError;

    .line 30
    .line 31
    :goto_1
    sget-object v1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 32
    .line 33
    const-class v2, Lteam/opay/swarmfoundation/login/IAuthError;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lteam/opay/swarmfoundation/login/IAuthError;

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    iget-object v2, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$postAuthError$1;->$error:Lteam/opay/core/android/arch/ApiError;

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2}, Lteam/opay/core/android/arch/ApiError;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_2
    const-string v2, ""

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    move-object v0, v2

    .line 56
    :cond_3
    invoke-interface {v1, p1, v0, v2}, Lteam/opay/swarmfoundation/login/IAuthError;->onAuthError(Lteam/opay/swarmfoundation/login/AuthError;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method
