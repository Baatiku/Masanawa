.class final Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RetrieveFaceFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->I0(Lteam/opay/pay/kyc/base/FaceResult;)V
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
    c = "team.opay.pay.kyc.upgrade2.task.RetrieveFaceFragment$uploadFace$1"
    f = "RetrieveFaceFragment.kt"
    l = {
        0xb0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $faceResult:Lteam/opay/pay/kyc/base/FaceResult;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/base/FaceResult;Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/kyc/base/FaceResult;",
            "Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;

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
    new-instance p1, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;-><init>(Lteam/opay/pay/kyc/base/FaceResult;Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;->label:I

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
    new-instance p1, Ljava/io/File;

    .line 28
    .line 29
    iget-object v1, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 30
    .line 31
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/FaceResult;->getShowImagePath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v3, ""

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    move-object v1, v3

    .line 40
    :cond_2
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lteam/opay/pay/kyc/customer/FindFaceInfoReq;

    .line 44
    .line 45
    iget-object v4, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 46
    .line 47
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/FaceResult;->getImagePath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-nez v4, :cond_3

    .line 52
    .line 53
    move-object v4, v3

    .line 54
    :cond_3
    invoke-static {v4}, Lixb;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const-string v6, "getName(...)"

    .line 63
    .line 64
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v6, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 68
    .line 69
    invoke-virtual {v6}, Lteam/opay/pay/kyc/base/FaceResult;->getTraceId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    if-nez v6, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    move-object v3, v6

    .line 77
    :goto_0
    invoke-direct {v1, v4, v5, v3}, Lteam/opay/pay/kyc/customer/FindFaceInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    new-instance v4, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1$1;

    .line 85
    .line 86
    iget-object v5, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    invoke-direct {v4, v5, v1, p1, v6}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1$1;-><init>(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Lteam/opay/pay/kyc/customer/FindFaceInfoReq;Ljava/io/File;Ljr2;)V

    .line 90
    .line 91
    .line 92
    iput v2, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;->label:I

    .line 93
    .line 94
    invoke-static {v3, v4, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-ne p1, v0, :cond_5

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 102
    .line 103
    return-object p1
.end method
