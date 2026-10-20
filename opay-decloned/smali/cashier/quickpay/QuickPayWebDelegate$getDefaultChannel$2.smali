.class final Lcashier/quickpay/QuickPayWebDelegate$getDefaultChannel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "QuickPayWebDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/quickpay/QuickPayWebDelegate;->getDefaultChannel(Lcom/opay/webview/WebFoundationJsData;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "<anonymous parameter 1>",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $viewModel:Lcashier/model/CashierViewModel;

.field final synthetic $webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

.field final synthetic this$0:Lcashier/quickpay/QuickPayWebDelegate;


# direct methods
.method public constructor <init>(Lcashier/quickpay/QuickPayWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lcashier/model/CashierViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/quickpay/QuickPayWebDelegate$getDefaultChannel$2;->this$0:Lcashier/quickpay/QuickPayWebDelegate;

    .line 2
    .line 3
    iput-object p2, p0, Lcashier/quickpay/QuickPayWebDelegate$getDefaultChannel$2;->$webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    .line 4
    .line 5
    iput-object p3, p0, Lcashier/quickpay/QuickPayWebDelegate$getDefaultChannel$2;->$viewModel:Lcashier/model/CashierViewModel;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcashier/quickpay/QuickPayWebDelegate$getDefaultChannel$2;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcashier/quickpay/QuickPayWebDelegate$getDefaultChannel$2;->this$0:Lcashier/quickpay/QuickPayWebDelegate;

    iget-object p2, p0, Lcashier/quickpay/QuickPayWebDelegate$getDefaultChannel$2;->$webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    iget-object v0, p0, Lcashier/quickpay/QuickPayWebDelegate$getDefaultChannel$2;->$viewModel:Lcashier/model/CashierViewModel;

    invoke-static {p1, p2, v0}, Lcashier/quickpay/QuickPayWebDelegate;->access$onMethodCallback(Lcashier/quickpay/QuickPayWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lcashier/model/CashierViewModel;)V

    return-void
.end method
