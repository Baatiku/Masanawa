.class final Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KycGuardianVerifyFaceViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->I(Lag8;Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;)V
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
    c = "team.opay.pay.kyc.task.guardian.KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1"
    f = "KycGuardianVerifyFaceViewModel.kt"
    l = {
        0x3d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $guardianInfo:Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

.field final synthetic $idNumber:Ljava/lang/String;

.field final synthetic $rsp:Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;

.field final synthetic $startTimeMs:J

.field label:I

.field final synthetic this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;


# direct methods
.method public constructor <init>(JLteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;",
            "Ljava/lang/String;",
            "Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;",
            "Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->$startTimeMs:J

    .line 2
    .line 3
    iput-object p3, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;

    .line 4
    .line 5
    iput-object p4, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->$idNumber:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->$guardianInfo:Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 8
    .line 9
    iput-object p6, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->$rsp:Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 8
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
    new-instance p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;

    .line 2
    .line 3
    iget-wide v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->$startTimeMs:J

    .line 4
    .line 5
    iget-object v3, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;

    .line 6
    .line 7
    iget-object v4, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->$idNumber:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->$guardianInfo:Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 10
    .line 11
    iget-object v6, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->$rsp:Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v7, p2

    .line 15
    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;-><init>(JLteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;Ljr2;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->label:I

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
    const/16 p1, 0xbb8

    .line 28
    .line 29
    int-to-long v3, p1

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    iget-wide v7, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->$startTimeMs:J

    .line 35
    .line 36
    sub-long/2addr v5, v7

    .line 37
    sub-long/2addr v3, v5

    .line 38
    iput v2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->label:I

    .line 39
    .line 40
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-ne p1, v0, :cond_2

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;

    .line 48
    .line 49
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->$idNumber:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->$guardianInfo:Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 52
    .line 53
    iget-object v2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;->$rsp:Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;

    .line 54
    .line 55
    invoke-static {p1, v0, v1, v2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->C(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)V

    .line 56
    .line 57
    .line 58
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p1
.end method
