.class final Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KycGuardianFaceFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->D1(Lteam/opay/pay/kyc/base/FaceResult;)V
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
    c = "team.opay.pay.kyc.task.guardian.KycGuardianFaceFragment$uploadFace$1"
    f = "KycGuardianFaceFragment.kt"
    l = {
        0x31
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $faceResult:Lteam/opay/pay/kyc/base/FaceResult;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/base/FaceResult;Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/kyc/base/FaceResult;",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;

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
    new-instance p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;-><init>(Lteam/opay/pay/kyc/base/FaceResult;Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;->label:I

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
    goto :goto_1

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
    new-instance v7, Ljava/io/File;

    .line 28
    .line 29
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 30
    .line 31
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/FaceResult;->getShowImagePath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, ""

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    move-object p1, v1

    .line 40
    :cond_2
    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/FaceResult;->getImagePath()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    move-object v1, p1

    .line 53
    :goto_0
    invoke-static {v1}, Lixb;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v1, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;

    .line 62
    .line 63
    iget-object v4, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;

    .line 64
    .line 65
    iget-object v5, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 66
    .line 67
    const/4 v8, 0x0

    .line 68
    move-object v3, v1

    .line 69
    invoke-direct/range {v3 .. v8}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/base/FaceResult;Ljava/lang/String;Ljava/io/File;Ljr2;)V

    .line 70
    .line 71
    .line 72
    iput v2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;->label:I

    .line 73
    .line 74
    invoke-static {p1, v1, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v0, :cond_4

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p1
.end method
