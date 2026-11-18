.class final Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KycGuardianFaceFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "team.opay.pay.kyc.task.guardian.KycGuardianFaceFragment$uploadFace$1$1"
    f = "KycGuardianFaceFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $faceResult:Lteam/opay/pay/kyc/base/FaceResult;

.field final synthetic $faceString:Ljava/lang/String;

.field final synthetic $file:Ljava/io/File;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/base/FaceResult;Ljava/lang/String;Ljava/io/File;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;",
            "Lteam/opay/pay/kyc/base/FaceResult;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->$faceString:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->$file:Ljava/io/File;

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
    new-instance p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->$faceString:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->$file:Ljava/io/File;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;Lteam/opay/pay/kyc/base/FaceResult;Ljava/lang/String;Ljava/io/File;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->L()Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/FaceResult;->getTraceId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, ""

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    move-object v0, v1

    .line 32
    :cond_0
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->k(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;

    .line 36
    .line 37
    invoke-static {p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->K1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;)Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;

    .line 42
    .line 43
    invoke-virtual {v0}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->s0()Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->z(Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;

    .line 55
    .line 56
    invoke-static {p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;->K1(Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;)Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const-string p1, "getViewLifecycleOwner(...)"

    .line 67
    .line 68
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v4, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->$faceString:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v5, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->$file:Ljava/io/File;

    .line 74
    .line 75
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment;

    .line 76
    .line 77
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->L()Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceFragment$uploadFace$1$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 86
    .line 87
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/FaceResult;->getTraceId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-nez p1, :cond_1

    .line 92
    .line 93
    move-object v7, v1

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    move-object v7, p1

    .line 96
    :goto_0
    invoke-virtual/range {v2 .. v7}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;->D(Lag8;Ljava/lang/String;Ljava/io/File;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    return-object p1

    .line 102
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 105
    .line 106
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method
