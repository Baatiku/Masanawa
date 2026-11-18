.class final Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;
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
    c = "team.opay.pay.kyc.task.guardian.KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2"
    f = "KycGuardianVerifyFaceViewModel.kt"
    l = {
        0x49
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Lteam/opay/core/android/arch/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $startTimeMs:J

.field label:I

.field final synthetic this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;


# direct methods
.method public constructor <init>(JLteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;Lteam/opay/core/android/arch/Resource;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;->$startTimeMs:J

    .line 2
    .line 3
    iput-object p3, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;

    .line 4
    .line 5
    iput-object p4, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;->$it:Lteam/opay/core/android/arch/Resource;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
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
    new-instance p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;

    .line 2
    .line 3
    iget-wide v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;->$startTimeMs:J

    .line 4
    .line 5
    iget-object v3, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;

    .line 6
    .line 7
    iget-object v4, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;->$it:Lteam/opay/core/android/arch/Resource;

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    move-object v5, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;-><init>(JLteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;Lteam/opay/core/android/arch/Resource;Ljr2;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;->label:I

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
    iget-wide v7, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;->$startTimeMs:J

    .line 35
    .line 36
    sub-long/2addr v5, v7

    .line 37
    sub-long/2addr v3, v5

    .line 38
    iput v2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;->label:I

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
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;

    .line 48
    .line 49
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;->$it:Lteam/opay/core/android/arch/Resource;

    .line 50
    .line 51
    invoke-virtual {v0}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, ""

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    move-object v0, v1

    .line 60
    :cond_3
    iget-object v2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;->$it:Lteam/opay/core/android/arch/Resource;

    .line 61
    .line 62
    invoke-virtual {v2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    move-object v1, v2

    .line 70
    :goto_1
    invoke-static {p1, v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->B(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p1
.end method
