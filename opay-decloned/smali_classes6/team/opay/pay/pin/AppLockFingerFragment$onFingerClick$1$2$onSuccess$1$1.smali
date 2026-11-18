.class final Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppLockFingerFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2;->b(Ljavax/crypto/Cipher;)V
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
    c = "team.opay.pay.pin.AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1"
    f = "AppLockFingerFragment.kt"
    l = {
        0xce
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Ljavax/crypto/Cipher;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/pin/AppLockFingerFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/pin/AppLockFingerFragment;Ljavax/crypto/Cipher;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/pin/AppLockFingerFragment;",
            "Ljavax/crypto/Cipher;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;->this$0:Lteam/opay/pay/pin/AppLockFingerFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;->$it:Ljavax/crypto/Cipher;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
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
    new-instance p1, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;->this$0:Lteam/opay/pay/pin/AppLockFingerFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;->$it:Ljavax/crypto/Cipher;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;-><init>(Lteam/opay/pay/pin/AppLockFingerFragment;Ljavax/crypto/Cipher;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;->label:I

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
    :try_start_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :try_start_1
    sget-object p1, Ldfa;->a:Ldfa;

    .line 30
    .line 31
    iget-object v1, p0, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;->this$0:Lteam/opay/pay/pin/AppLockFingerFragment;

    .line 32
    .line 33
    invoke-static {v1}, Lteam/opay/pay/pin/AppLockFingerFragment;->d0(Lteam/opay/pay/pin/AppLockFingerFragment;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Ldfa;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v1, p0, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;->$it:Ljavax/crypto/Cipher;

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v3, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1$1;

    .line 58
    .line 59
    iget-object v4, p0, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;->this$0:Lteam/opay/pay/pin/AppLockFingerFragment;

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    invoke-direct {v3, v4, p1, v5}, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1$1;-><init>(Lteam/opay/pay/pin/AppLockFingerFragment;[BLjr2;)V

    .line 63
    .line 64
    .line 65
    iput v2, p0, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;->label:I

    .line 66
    .line 67
    invoke-static {v1, v3, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    if-ne p1, v0, :cond_2

    .line 72
    .line 73
    return-object v0

    .line 74
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p1
.end method
