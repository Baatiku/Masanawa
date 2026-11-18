.class final Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KycGuardianBirthCertificatViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1$a;
    }
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
    c = "team.opay.pay.kyc.task.guardian.KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1"
    f = "KycGuardianBirthCertificatViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $certificateReq:Lteam/opay/pay/kyc/customer/BirthCertificateReq;

.field final synthetic $lifecycleOwner:Lag8;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;Lteam/opay/pay/kyc/customer/BirthCertificateReq;Lag8;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;",
            "Lteam/opay/pay/kyc/customer/BirthCertificateReq;",
            "Lag8;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;->$certificateReq:Lteam/opay/pay/kyc/customer/BirthCertificateReq;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;->$lifecycleOwner:Lag8;

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

.method public static synthetic c(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;->invokeSuspend$lambda$1(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1$a;->a:[I

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    aget v0, v1, v0

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-eq v0, v1, :cond_3

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    if-eq v0, v1, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance v0, Lteam/opay/pay/kyc/base/ErrorMsg;

    .line 48
    .line 49
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    const-string v2, ""

    .line 60
    .line 61
    :cond_2
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v0, v1, v2, p1}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
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
    new-instance p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;->$certificateReq:Lteam/opay/pay/kyc/customer/BirthCertificateReq;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;->$lifecycleOwner:Lag8;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;Lteam/opay/pay/kyc/customer/BirthCertificateReq;Lag8;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/guardian/BaseGuardianViewModel;->B()Lcv7;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;->$certificateReq:Lteam/opay/pay/kyc/customer/BirthCertificateReq;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Lcv7;->V(Lteam/opay/pay/kyc/customer/BirthCertificateReq;)Lretrofit2/Call;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;->$lifecycleOwner:Lag8;

    .line 30
    .line 31
    iget-object v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;

    .line 32
    .line 33
    new-instance v2, Lteam/opay/pay/kyc/task/guardian/a;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/task/guardian/a;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method
