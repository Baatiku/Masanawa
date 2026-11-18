.class final Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "QrSdkPaymentFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->f0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1$a;
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
    c = "team.opay.opb.qrcode.payment.QrSdkPaymentFragment$calculateFee$1"
    f = "QrSdkPaymentFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

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

.method public static synthetic c(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Lteam/opay/opb/qrcode/api/QueryFeeReq;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->invokeSuspend$lambda$0(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Lteam/opay/opb/qrcode/api/QueryFeeReq;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Lteam/opay/opb/qrcode/api/QueryFeeReq;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    sget-object v2, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1$a;->a:[I

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    aget v1, v2, v1

    .line 21
    .line 22
    :goto_1
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eq v1, v3, :cond_4

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    if-eq v1, v4, :cond_2

    .line 28
    .line 29
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-static {p0}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->V(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)Lteam/opay/core/common/amount/MoneyAmount;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/QueryFeeReq;->a()Lteam/opay/core/common/amount/MoneyAmount;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_6

    .line 46
    .line 47
    invoke-static {p0, v2}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->e0(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Z)V

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->U(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)Lteam/opay/opb/qrcode/api/PaymentParm;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    const-string p1, "paymentParm"

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object p1, v0

    .line 62
    :cond_3
    invoke-virtual {p2}, Lteam/opay/core/http/arch/Resource;->a()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Lteam/opay/opb/qrcode/api/QueryFeeRsp;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lteam/opay/opb/qrcode/api/PaymentParm;->s(Lteam/opay/opb/qrcode/api/QueryFeeRsp;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v3}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->Z(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Z)V

    .line 72
    .line 73
    .line 74
    invoke-static {p0, v2, v3, v0}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->F0(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;ZILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p0}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->a0(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    invoke-static {p0}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->V(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)Lteam/opay/core/common/amount/MoneyAmount;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/QueryFeeReq;->a()Lteam/opay/core/common/amount/MoneyAmount;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    invoke-static {p0, v2}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->e0(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Lteam/opay/core/http/arch/Resource;->b()Lteam/opay/core/http/arch/ApiError;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :cond_5
    invoke-static {p0, v0}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->d0(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    return-object p0
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
    new-instance v0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;-><init>(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Ljr2;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lzr2;

    .line 14
    .line 15
    invoke-static {p1}, Lkotlinx/coroutines/g;->h(Lzr2;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-static {p1, v0}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->e0(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Z)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lteam/opay/opb/qrcode/api/QueryFeeReq;

    .line 31
    .line 32
    iget-object v0, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 33
    .line 34
    invoke-static {v0}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->U(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)Lteam/opay/opb/qrcode/api/PaymentParm;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    const-string v0, "paymentParm"

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    :cond_1
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/api/PaymentParm;->l()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    const-string v0, ""

    .line 53
    .line 54
    :cond_2
    iget-object v1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 55
    .line 56
    invoke-static {v1}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->V(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)Lteam/opay/core/common/amount/MoneyAmount;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {p1, v0, v1}, Lteam/opay/opb/qrcode/api/QueryFeeReq;-><init>(Ljava/lang/String;Lteam/opay/core/common/amount/MoneyAmount;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 64
    .line 65
    invoke-static {v0}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->W(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)Lteam/opay/opb/qrcode/QRCodeViewModel;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1, p1}, Lteam/opay/opb/qrcode/QRCodeViewModel;->v(Lteam/opay/opb/qrcode/api/QueryFeeReq;)Landroidx/lifecycle/LiveData;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->b0(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Landroidx/lifecycle/LiveData;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 77
    .line 78
    invoke-static {v0}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->S(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)Landroidx/lifecycle/LiveData;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    iget-object v1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v2, "getViewLifecycleOwner(...)"

    .line 91
    .line 92
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 96
    .line 97
    new-instance v3, Lteam/opay/opb/qrcode/payment/a;

    .line 98
    .line 99
    invoke-direct {v3, v2, p1}, Lteam/opay/opb/qrcode/payment/a;-><init>(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Lteam/opay/opb/qrcode/api/QueryFeeReq;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1, v3}, Lpna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    .line 107
    return-object p1

    .line 108
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 111
    .line 112
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1
.end method
