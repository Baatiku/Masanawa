.class final Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KycGuardianBirthCertificatViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;->J(Lag8;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;)V
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
    c = "team.opay.pay.kyc.task.guardian.KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1"
    f = "KycGuardianBirthCertificatViewModel.kt"
    l = {
        0x2a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $lifecycleOwner:Lag8;

.field final synthetic $req:Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Lag8;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;",
            "Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;",
            "Lag8;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->$req:Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->$lifecycleOwner:Lag8;

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
    new-instance p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->$req:Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->$lifecycleOwner:Lag8;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Lag8;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->label:I

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
    goto/16 :goto_6

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;->F()Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object p1, v1

    .line 43
    :goto_0
    const-string v3, ""

    .line 44
    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    move-object p1, v3

    .line 48
    :cond_3
    invoke-static {p1}, Ljmf;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    new-instance p1, Lteam/opay/pay/kyc/customer/BirthCertificateReq;

    .line 53
    .line 54
    iget-object v4, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->$req:Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 55
    .line 56
    invoke-virtual {v4}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->d()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-nez v4, :cond_4

    .line 61
    .line 62
    move-object v5, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    move-object v5, v4

    .line 65
    :goto_1
    iget-object v4, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->$req:Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 66
    .line 67
    invoke-virtual {v4}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->g()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-nez v4, :cond_5

    .line 72
    .line 73
    move-object v6, v3

    .line 74
    goto :goto_2

    .line 75
    :cond_5
    move-object v6, v4

    .line 76
    :goto_2
    iget-object v4, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->$req:Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 77
    .line 78
    invoke-virtual {v4}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->e()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-nez v4, :cond_6

    .line 83
    .line 84
    move-object v7, v3

    .line 85
    goto :goto_3

    .line 86
    :cond_6
    move-object v7, v4

    .line 87
    :goto_3
    iget-object v3, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->$req:Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 88
    .line 89
    invoke-virtual {v3}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->f()Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-eqz v3, :cond_7

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    :goto_4
    move-wide v8, v3

    .line 100
    goto :goto_5

    .line 101
    :cond_7
    const-wide/16 v3, 0x0

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :goto_5
    move-object v4, p1

    .line 105
    invoke-direct/range {v4 .. v10}, Lteam/opay/pay/kyc/customer/BirthCertificateReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    new-instance v4, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;

    .line 113
    .line 114
    iget-object v5, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;

    .line 115
    .line 116
    iget-object v6, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->$lifecycleOwner:Lag8;

    .line 117
    .line 118
    invoke-direct {v4, v5, p1, v6, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1$1;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;Lteam/opay/pay/kyc/customer/BirthCertificateReq;Lag8;Ljr2;)V

    .line 119
    .line 120
    .line 121
    iput v2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel$uploadBirthCertificate$1;->label:I

    .line 122
    .line 123
    invoke-static {v3, v4, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-ne p1, v0, :cond_8

    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_8
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 131
    .line 132
    return-object p1
.end method
