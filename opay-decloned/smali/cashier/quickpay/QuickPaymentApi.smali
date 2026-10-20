.class public final Lcashier/quickpay/QuickPaymentApi;
.super Ljava/lang/Object;
.source "QuickPaymentApi.kt"

# interfaces
.implements Lcashier/net/IPaymentApi;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ#\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ#\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J#\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ#\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\'\u0010%\u001a\u00020$2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u001f\u0010)\u001a\u00020$2\u0006\u0010!\u001a\u00020 2\u0006\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008)\u0010*J%\u0010-\u001a\u00020\"2\u0006\u0010(\u001a\u00020\'2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020$0+H\u0016\u00a2\u0006\u0004\u0008-\u0010.JC\u00103\u001a\u00020$2\"\u00102\u001a\u001e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u000200\u0012\u0006\u0012\u0004\u0018\u000101\u0012\u0004\u0012\u00020$\u0018\u00010/2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 H\u0016\u00a2\u0006\u0004\u00083\u00104J\u0017\u00105\u001a\u00020$2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u00085\u00106J\u0017\u00107\u001a\u00020$2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u00087\u00106J\u000f\u00108\u001a\u000200H\u0016\u00a2\u0006\u0004\u00088\u00109R\u001b\u0010?\u001a\u00020:8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\u00a8\u0006@"
    }
    d2 = {
        "Lcashier/quickpay/QuickPaymentApi;",
        "Lcashier/net/IPaymentApi;",
        "<init>",
        "()V",
        "Lcashier/data/NewPaymentInfoRequest;",
        "body",
        "Lretrofit2/Call;",
        "Lcashier/net/ResultData;",
        "Lcashier/data/CashierInfoRsp;",
        "getPaymentInfo",
        "(Lcashier/data/NewPaymentInfoRequest;)Lretrofit2/Call;",
        "Lcashier/data/ConfirmPayReq;",
        "Lcashier/data/OrderInfo;",
        "confirmPay",
        "(Lcashier/data/ConfirmPayReq;)Lretrofit2/Call;",
        "Lcashier/data/OrderRequest;",
        "Lcashier/data/OrderResponse;",
        "getOrderStatus",
        "(Lcashier/data/OrderRequest;)Lretrofit2/Call;",
        "Lcashier/data/CloseOrderReq;",
        "",
        "closeOrder",
        "(Lcashier/data/CloseOrderReq;)Lretrofit2/Call;",
        "Lcashier/data/ClosePaymentRequest;",
        "Lcashier/data/ClosePaymentResponse;",
        "closePaymentOrder",
        "(Lcashier/data/ClosePaymentRequest;)Lretrofit2/Call;",
        "Lcashier/model/TopUpInput;",
        "verifyTopupInput",
        "(Lcashier/model/TopUpInput;)Lretrofit2/Call;",
        "Landroidx/fragment/app/DialogFragment;",
        "dialog",
        "Lcashier/model/CashierViewModel;",
        "viewModel",
        "",
        "showConfirm",
        "",
        "onDialogClose",
        "(Landroidx/fragment/app/DialogFragment;Lcashier/model/CashierViewModel;Z)V",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "onPayVerifyCancel",
        "(Lcashier/model/CashierViewModel;Landroidx/fragment/app/FragmentActivity;)V",
        "Lkotlin/Function0;",
        "callBlock",
        "onPayVerifyBack",
        "(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function0;)Z",
        "Lkotlin/Function3;",
        "",
        "",
        "onRetryFailedDismiss",
        "onFailButtonClick",
        "(Lhm6;Landroidx/fragment/app/DialogFragment;Lcashier/model/CashierViewModel;)V",
        "onFailAddCardClick",
        "(Landroidx/fragment/app/DialogFragment;)V",
        "onFailAddCardCallback",
        "getSdkLogVersion",
        "()Ljava/lang/String;",
        "Lzbc;",
        "apiService$delegate",
        "Lid8;",
        "getApiService",
        "()Lzbc;",
        "apiService",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final apiService$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcashier/quickpay/QuickPaymentApi$apiService$2;->INSTANCE:Lcashier/quickpay/QuickPaymentApi$apiService$2;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcashier/quickpay/QuickPaymentApi;->apiService$delegate:Lid8;

    .line 11
    .line 12
    return-void
.end method

.method private final getApiService()Lzbc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/quickpay/QuickPaymentApi;->apiService$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lzbc;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public closeOrder(Lcashier/data/CloseOrderReq;)Lretrofit2/Call;
    .locals 1
    .param p1    # Lcashier/data/CloseOrderReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/data/CloseOrderReq;",
            ")",
            "Lretrofit2/Call<",
            "Lcashier/net/ResultData<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "2.0"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcashier/data/CloseOrderReq;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcashier/quickpay/QuickPaymentApi;->getApiService()Lzbc;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lzbc;->closeOrder(Lcashier/data/CloseOrderReq;)Lretrofit2/Call;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public closePaymentOrder(Lcashier/data/ClosePaymentRequest;)Lretrofit2/Call;
    .locals 1
    .param p1    # Lcashier/data/ClosePaymentRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/data/ClosePaymentRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcashier/net/ResultData<",
            "Lcashier/data/ClosePaymentResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "2.0"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcashier/data/ClosePaymentRequest;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcashier/quickpay/QuickPaymentApi;->getApiService()Lzbc;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lzbc;->closePaymentOrder(Lcashier/data/ClosePaymentRequest;)Lretrofit2/Call;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public confirmPay(Lcashier/data/ConfirmPayReq;)Lretrofit2/Call;
    .locals 1
    .param p1    # Lcashier/data/ConfirmPayReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/data/ConfirmPayReq;",
            ")",
            "Lretrofit2/Call<",
            "Lcashier/net/ResultData<",
            "Lcashier/data/OrderInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "2.0"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcashier/data/ConfirmPayReq;->l(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcashier/quickpay/QuickPaymentApi;->getApiService()Lzbc;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lzbc;->confirmPay(Lcashier/data/ConfirmPayReq;)Lretrofit2/Call;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public getOrderStatus(Lcashier/data/OrderRequest;)Lretrofit2/Call;
    .locals 1
    .param p1    # Lcashier/data/OrderRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/data/OrderRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcashier/net/ResultData<",
            "Lcashier/data/OrderResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "2.0"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcashier/data/OrderRequest;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcashier/quickpay/QuickPaymentApi;->getApiService()Lzbc;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lzbc;->getOrderStatus(Lcashier/data/OrderRequest;)Lretrofit2/Call;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public getPaymentInfo(Lcashier/data/NewPaymentInfoRequest;)Lretrofit2/Call;
    .locals 1
    .param p1    # Lcashier/data/NewPaymentInfoRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/data/NewPaymentInfoRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcashier/net/ResultData<",
            "Lcashier/data/CashierInfoRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "2.0"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcashier/data/NewPaymentInfoRequest;->b(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcashier/quickpay/QuickPaymentApi;->getApiService()Lzbc;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lzbc;->getPaymentInfo(Lcashier/data/NewPaymentInfoRequest;)Lretrofit2/Call;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public getSdkLogVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "pay_v0"

    .line 2
    .line 3
    return-object v0
.end method

.method public onDialogClose(Landroidx/fragment/app/DialogFragment;Lcashier/model/CashierViewModel;Z)V
    .locals 21
    .param p1    # Landroidx/fragment/app/DialogFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcashier/model/CashierViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const-string v1, "dialog"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "viewModel"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p2 .. p2}, Lcashier/model/CashierViewModel;->p0()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v3, "0"

    .line 20
    .line 21
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_a

    .line 26
    .line 27
    if-eqz p3, :cond_0

    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "dialog.requireActivity()"

    .line 34
    .line 35
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcashier/model/PaymentManagerKt;->b(Lcashier/model/CashierViewModel;Landroidx/fragment/app/FragmentActivity;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_7

    .line 42
    .line 43
    :cond_0
    new-instance v1, Lcashier/data/CloseOrderReq;

    .line 44
    .line 45
    invoke-virtual/range {p2 .. p2}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/4 v10, 0x0

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-virtual {v3}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move-object v3, v10

    .line 62
    :goto_0
    const-string v11, ""

    .line 63
    .line 64
    if-nez v3, :cond_2

    .line 65
    .line 66
    move-object v4, v11

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move-object v4, v3

    .line 69
    :goto_1
    const/16 v8, 0x8

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    const-string v5, "C10001"

    .line 73
    .line 74
    const-string v6, ""

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    move-object v3, v1

    .line 78
    invoke-direct/range {v3 .. v9}, Lcashier/data/CloseOrderReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcashier/model/CashierViewModel;->E(Lcashier/data/CloseOrderReq;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {p2 .. p2}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    new-instance v3, Lcashier/PayResult;

    .line 91
    .line 92
    sget-object v13, Lcashier/CashierResult;->CANCEL:Lcashier/CashierResult;

    .line 93
    .line 94
    invoke-virtual/range {p2 .. p2}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    if-eqz v4, :cond_3

    .line 103
    .line 104
    invoke-virtual {v4}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    move-object v4, v10

    .line 110
    :goto_2
    if-nez v4, :cond_4

    .line 111
    .line 112
    move-object v14, v11

    .line 113
    goto :goto_3

    .line 114
    :cond_4
    move-object v14, v4

    .line 115
    :goto_3
    const/16 v19, 0x3c

    .line 116
    .line 117
    const/16 v20, 0x0

    .line 118
    .line 119
    const/4 v15, 0x0

    .line 120
    const/16 v16, 0x0

    .line 121
    .line 122
    const/16 v17, 0x0

    .line 123
    .line 124
    const/16 v18, 0x0

    .line 125
    .line 126
    move-object v12, v3

    .line 127
    invoke-direct/range {v12 .. v20}, Lcashier/PayResult;-><init>(Lcashier/CashierResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v1, v3}, Lcashier/CashierDelegate;->onPaymentResult(Lcashier/PayResult;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    sget-object v4, Lteam/opay/swarmfoundation/utils/SwarmBus;->a:Lteam/opay/swarmfoundation/utils/SwarmBus;

    .line 134
    .line 135
    new-instance v6, Lteam/opay/swarmfoundation/utils/PaymentMessage;

    .line 136
    .line 137
    invoke-virtual/range {p2 .. p2}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    goto :goto_4

    .line 152
    :cond_6
    move-object v1, v10

    .line 153
    :goto_4
    if-nez v1, :cond_7

    .line 154
    .line 155
    move-object v13, v11

    .line 156
    goto :goto_5

    .line 157
    :cond_7
    move-object v13, v1

    .line 158
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-eqz v0, :cond_8

    .line 163
    .line 164
    invoke-virtual {v0}, Lcashier/data/OrderInfo;->b()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    :cond_8
    if-nez v10, :cond_9

    .line 169
    .line 170
    move-object v14, v11

    .line 171
    goto :goto_6

    .line 172
    :cond_9
    move-object v14, v10

    .line 173
    :goto_6
    const/16 v18, 0x18

    .line 174
    .line 175
    const/16 v19, 0x0

    .line 176
    .line 177
    const/16 v15, 0xc9

    .line 178
    .line 179
    const/16 v16, 0x0

    .line 180
    .line 181
    const/16 v17, 0x0

    .line 182
    .line 183
    move-object v12, v6

    .line 184
    invoke-direct/range {v12 .. v19}, Lteam/opay/swarmfoundation/utils/PaymentMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 185
    .line 186
    .line 187
    const/4 v8, 0x4

    .line 188
    const/4 v9, 0x0

    .line 189
    const-string v5, "swarm_event_key_payment_result"

    .line 190
    .line 191
    const/4 v7, 0x0

    .line 192
    invoke-static/range {v4 .. v9}, Lteam/opay/swarmfoundation/utils/SwarmBus;->d(Lteam/opay/swarmfoundation/utils/SwarmBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-eqz v0, :cond_b

    .line 200
    .line 201
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 202
    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 206
    .line 207
    .line 208
    :cond_b
    :goto_7
    return-void
.end method

.method public onFailAddCardCallback(Landroidx/fragment/app/DialogFragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/DialogFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onFailAddCardClick(Landroidx/fragment/app/DialogFragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/DialogFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onFailButtonClick(Lhm6;Landroidx/fragment/app/DialogFragment;Lcashier/model/CashierViewModel;)V
    .locals 0
    .param p1    # Lhm6;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/DialogFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcashier/model/CashierViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhm6<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/fragment/app/DialogFragment;",
            "Lcashier/model/CashierViewModel;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p1, "dialog"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "viewModel"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPayVerifyBack(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function0;)Z
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callBlock"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcashier/quickpay/QuickPaymentApi$onPayVerifyBack$1;

    .line 12
    .line 13
    invoke-direct {v0, p2}, Lcashier/quickpay/QuickPaymentApi$onPayVerifyBack$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcashier/model/PaymentManagerKt;->a(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function0;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public onPayVerifyCancel(Lcashier/model/CashierViewModel;Landroidx/fragment/app/FragmentActivity;)V
    .locals 21
    .param p1    # Lcashier/model/CashierViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "viewModel"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "activity"

    .line 9
    .line 10
    move-object/from16 v2, p2

    .line 11
    .line 12
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcashier/data/CloseOrderReq;

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v10, 0x0

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v3, v10

    .line 34
    :goto_0
    const-string v11, ""

    .line 35
    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    move-object v4, v11

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v4, v3

    .line 41
    :goto_1
    const/16 v8, 0x8

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    const-string v5, "C10001"

    .line 45
    .line 46
    const-string v6, ""

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    move-object v3, v1

    .line 50
    invoke-direct/range {v3 .. v9}, Lcashier/data/CloseOrderReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcashier/model/CashierViewModel;->E(Lcashier/data/CloseOrderReq;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p1 .. p1}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    new-instance v3, Lcashier/PayResult;

    .line 63
    .line 64
    sget-object v13, Lcashier/CashierResult;->CANCEL:Lcashier/CashierResult;

    .line 65
    .line 66
    invoke-virtual/range {p1 .. p1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    if-eqz v4, :cond_2

    .line 75
    .line 76
    invoke-virtual {v4}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    move-object v4, v10

    .line 82
    :goto_2
    if-nez v4, :cond_3

    .line 83
    .line 84
    move-object v14, v11

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    move-object v14, v4

    .line 87
    :goto_3
    const/16 v19, 0x3c

    .line 88
    .line 89
    const/16 v20, 0x0

    .line 90
    .line 91
    const/4 v15, 0x0

    .line 92
    const/16 v16, 0x0

    .line 93
    .line 94
    const/16 v17, 0x0

    .line 95
    .line 96
    const/16 v18, 0x0

    .line 97
    .line 98
    move-object v12, v3

    .line 99
    invoke-direct/range {v12 .. v20}, Lcashier/PayResult;-><init>(Lcashier/CashierResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v1, v3}, Lcashier/CashierDelegate;->onPaymentResult(Lcashier/PayResult;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    sget-object v4, Lteam/opay/swarmfoundation/utils/SwarmBus;->a:Lteam/opay/swarmfoundation/utils/SwarmBus;

    .line 106
    .line 107
    new-instance v6, Lteam/opay/swarmfoundation/utils/PaymentMessage;

    .line 108
    .line 109
    invoke-virtual/range {p1 .. p1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_5

    .line 118
    .line 119
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    goto :goto_4

    .line 124
    :cond_5
    move-object v1, v10

    .line 125
    :goto_4
    if-nez v1, :cond_6

    .line 126
    .line 127
    move-object v13, v11

    .line 128
    goto :goto_5

    .line 129
    :cond_6
    move-object v13, v1

    .line 130
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_7

    .line 135
    .line 136
    invoke-virtual {v0}, Lcashier/data/OrderInfo;->b()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    :cond_7
    if-nez v10, :cond_8

    .line 141
    .line 142
    move-object v14, v11

    .line 143
    goto :goto_6

    .line 144
    :cond_8
    move-object v14, v10

    .line 145
    :goto_6
    const/16 v18, 0x18

    .line 146
    .line 147
    const/16 v19, 0x0

    .line 148
    .line 149
    const/16 v15, 0xc9

    .line 150
    .line 151
    const/16 v16, 0x0

    .line 152
    .line 153
    const/16 v17, 0x0

    .line 154
    .line 155
    move-object v12, v6

    .line 156
    invoke-direct/range {v12 .. v19}, Lteam/opay/swarmfoundation/utils/PaymentMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 157
    .line 158
    .line 159
    const/4 v8, 0x4

    .line 160
    const/4 v9, 0x0

    .line 161
    const-string v5, "swarm_event_key_payment_result"

    .line 162
    .line 163
    const/4 v7, 0x0

    .line 164
    invoke-static/range {v4 .. v9}, Lteam/opay/swarmfoundation/utils/SwarmBus;->d(Lteam/opay/swarmfoundation/utils/SwarmBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->finish()V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public verifyTopupInput(Lcashier/model/TopUpInput;)Lretrofit2/Call;
    .locals 1
    .param p1    # Lcashier/model/TopUpInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/model/TopUpInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcashier/net/ResultData<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "2.0"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcashier/model/TopUpInput;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcashier/quickpay/QuickPaymentApi;->getApiService()Lzbc;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lzbc;->verifyTopupInput(Lcashier/model/TopUpInput;)Lretrofit2/Call;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
