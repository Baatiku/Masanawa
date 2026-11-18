.class final Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VerifyFaceFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "team.opay.pay.account.verify.VerifyFaceFragment$validation$1$1"
    f = "VerifyFaceFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $faceResult:Lteam/opay/pay/kyc/base/FaceResult;

.field final synthetic $request:Lteam/opay/pay/account/verify/ValidationRequest;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/account/verify/VerifyFaceFragment;Lteam/opay/pay/account/verify/ValidationRequest;Lteam/opay/pay/kyc/base/FaceResult;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/VerifyFaceFragment;",
            "Lteam/opay/pay/account/verify/ValidationRequest;",
            "Lteam/opay/pay/kyc/base/FaceResult;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;->$request:Lteam/opay/pay/account/verify/ValidationRequest;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

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

.method public static synthetic c(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;->invokeSuspend$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 3
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
    new-instance p1, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;->$request:Lteam/opay/pay/account/verify/ValidationRequest;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;-><init>(Lteam/opay/pay/account/verify/VerifyFaceFragment;Lteam/opay/pay/account/verify/ValidationRequest;Lteam/opay/pay/kyc/base/FaceResult;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;->$request:Lteam/opay/pay/account/verify/ValidationRequest;

    .line 18
    .line 19
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 20
    .line 21
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/BaseVerifyFaceFragment;->B0()Lteam/opay/pay/account/verify/ValidationType;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 26
    .line 27
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/FaceResult;->getTraceId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    const-string p1, ""

    .line 34
    .line 35
    :cond_0
    move-object v5, p1

    .line 36
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 37
    .line 38
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/BaseVerifyFaceFragment;->C0()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    xor-int/lit8 v7, p1, 0x1

    .line 43
    .line 44
    new-instance v9, Lteam/opay/pay/account/verify/e;

    .line 45
    .line 46
    invoke-direct {v9}, Lteam/opay/pay/account/verify/e;-><init>()V

    .line 47
    .line 48
    .line 49
    const/16 v10, 0xa8

    .line 50
    .line 51
    const/4 v11, 0x0

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    invoke-static/range {v0 .. v11}, Lteam/opay/pay/account/verify/VerifyViewModel;->P0(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/ValidationRequest;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/ValidationType;ZLjava/lang/String;Ljava/lang/String;ZLhm6;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method
