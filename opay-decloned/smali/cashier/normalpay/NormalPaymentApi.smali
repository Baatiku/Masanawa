.class public final Lcashier/normalpay/NormalPaymentApi;
.super Ljava/lang/Object;
.source "NormalPaymentApi.kt"

# interfaces
.implements Lcashier/net/IPaymentApi;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ#\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ#\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J#\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ#\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\'\u0010%\u001a\u00020$2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u001f\u0010)\u001a\u00020$2\u0006\u0010!\u001a\u00020 2\u0006\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008)\u0010*J%\u0010-\u001a\u00020\"2\u0006\u0010(\u001a\u00020\'2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020$0+H\u0016\u00a2\u0006\u0004\u0008-\u0010.JC\u00103\u001a\u00020$2\"\u00102\u001a\u001e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u000200\u0012\u0006\u0012\u0004\u0018\u000101\u0012\u0004\u0012\u00020$\u0018\u00010/2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 H\u0016\u00a2\u0006\u0004\u00083\u00104J\u0017\u00105\u001a\u00020$2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u00085\u00106J\u0017\u00107\u001a\u00020$2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u00087\u00106J\u000f\u00108\u001a\u000200H\u0016\u00a2\u0006\u0004\u00088\u00109R\u001b\u0010?\u001a\u00020:8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\u00a8\u0006@"
    }
    d2 = {
        "Lcashier/normalpay/NormalPaymentApi;",
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
        "La62;",
        "apiService$delegate",
        "Lid8;",
        "getApiService",
        "()La62;",
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
    sget-object v0, Lcashier/normalpay/NormalPaymentApi$apiService$2;->INSTANCE:Lcashier/normalpay/NormalPaymentApi$apiService$2;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcashier/normalpay/NormalPaymentApi;->apiService$delegate:Lid8;

    .line 11
    .line 12
    return-void
.end method

.method private final getApiService()La62;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/normalpay/NormalPaymentApi;->apiService$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, La62;

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
    invoke-direct {p0}, Lcashier/normalpay/NormalPaymentApi;->getApiService()La62;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, La62;->closeOrder(Lcashier/data/CloseOrderReq;)Lretrofit2/Call;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
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
    invoke-direct {p0}, Lcashier/normalpay/NormalPaymentApi;->getApiService()La62;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, La62;->closePaymentOrder(Lcashier/data/ClosePaymentRequest;)Lretrofit2/Call;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
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
    invoke-direct {p0}, Lcashier/normalpay/NormalPaymentApi;->getApiService()La62;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, La62;->confirmPay(Lcashier/data/ConfirmPayReq;)Lretrofit2/Call;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
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
    invoke-direct {p0}, Lcashier/normalpay/NormalPaymentApi;->getApiService()La62;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, La62;->getOrderStatus(Lcashier/data/OrderRequest;)Lretrofit2/Call;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
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
    invoke-direct {p0}, Lcashier/normalpay/NormalPaymentApi;->getApiService()La62;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, La62;->getPaymentInfo(Lcashier/data/NewPaymentInfoRequest;)Lretrofit2/Call;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getSdkLogVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public onDialogClose(Landroidx/fragment/app/DialogFragment;Lcashier/model/CashierViewModel;Z)V
    .locals 0
    .param p1    # Landroidx/fragment/app/DialogFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcashier/model/CashierViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p3, "dialog"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "viewModel"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 12
    .line 13
    .line 14
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
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onFailButtonClick(Lhm6;Landroidx/fragment/app/DialogFragment;Lcashier/model/CashierViewModel;)V
    .locals 2
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
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewModel"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p3}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcashier/data/FailedInfo;->c()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const-string v1, ""

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p3}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {p3}, Lcashier/data/FailedInfo;->a()Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-interface {p1, v0, v1, p3}, Lhm6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 39
    .line 40
    .line 41
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
    const-string p1, "callBlock"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public onPayVerifyCancel(Lcashier/model/CashierViewModel;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1
    .param p1    # Lcashier/model/CashierViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "activity"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
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
    invoke-direct {p0}, Lcashier/normalpay/NormalPaymentApi;->getApiService()La62;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, La62;->verifyTopupInput(Lcashier/model/TopUpInput;)Lretrofit2/Call;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
