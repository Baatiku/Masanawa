.class public interface abstract Lcashier/net/IPaymentApi;
.super Ljava/lang/Object;
.source "IPaymentApi.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008`\u0018\u00002\u00020\u0001J#\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J#\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00050\u00042\u0006\u0010\u0003\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ#\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00050\u00042\u0006\u0010\u0003\u001a\u00020\rH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J#\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0011H&\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J#\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0015H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J#\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0019H&\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\'\u0010#\u001a\u00020\"2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 H&\u00a2\u0006\u0004\u0008#\u0010$J\u001f\u0010\'\u001a\u00020\"2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020%H&\u00a2\u0006\u0004\u0008\'\u0010(J%\u0010+\u001a\u00020 2\u0006\u0010&\u001a\u00020%2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\"0)H&\u00a2\u0006\u0004\u0008+\u0010,JC\u00101\u001a\u00020\"2\"\u00100\u001a\u001e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020.\u0012\u0006\u0012\u0004\u0018\u00010/\u0012\u0004\u0012\u00020\"\u0018\u00010-2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001eH&\u00a2\u0006\u0004\u00081\u00102J\u0017\u00103\u001a\u00020\"2\u0006\u0010\u001d\u001a\u00020\u001cH&\u00a2\u0006\u0004\u00083\u00104J\u0017\u00105\u001a\u00020\"2\u0006\u0010\u001d\u001a\u00020\u001cH&\u00a2\u0006\u0004\u00085\u00104J\u000f\u00106\u001a\u00020.H&\u00a2\u0006\u0004\u00086\u00107\u00a8\u00068"
    }
    d2 = {
        "Lcashier/net/IPaymentApi;",
        "Ljava/io/Serializable;",
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


# virtual methods
.method public abstract closeOrder(Lcashier/data/CloseOrderReq;)Lretrofit2/Call;
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
.end method

.method public abstract closePaymentOrder(Lcashier/data/ClosePaymentRequest;)Lretrofit2/Call;
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
.end method

.method public abstract confirmPay(Lcashier/data/ConfirmPayReq;)Lretrofit2/Call;
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
.end method

.method public abstract getOrderStatus(Lcashier/data/OrderRequest;)Lretrofit2/Call;
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
.end method

.method public abstract getPaymentInfo(Lcashier/data/NewPaymentInfoRequest;)Lretrofit2/Call;
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
.end method

.method public abstract getSdkLogVersion()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract onDialogClose(Landroidx/fragment/app/DialogFragment;Lcashier/model/CashierViewModel;Z)V
    .param p1    # Landroidx/fragment/app/DialogFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcashier/model/CashierViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onFailAddCardCallback(Landroidx/fragment/app/DialogFragment;)V
    .param p1    # Landroidx/fragment/app/DialogFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onFailAddCardClick(Landroidx/fragment/app/DialogFragment;)V
    .param p1    # Landroidx/fragment/app/DialogFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onFailButtonClick(Lhm6;Landroidx/fragment/app/DialogFragment;Lcashier/model/CashierViewModel;)V
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
.end method

.method public abstract onPayVerifyBack(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function0;)Z
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
.end method

.method public abstract onPayVerifyCancel(Lcashier/model/CashierViewModel;Landroidx/fragment/app/FragmentActivity;)V
    .param p1    # Lcashier/model/CashierViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract verifyTopupInput(Lcashier/model/TopUpInput;)Lretrofit2/Call;
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
.end method
