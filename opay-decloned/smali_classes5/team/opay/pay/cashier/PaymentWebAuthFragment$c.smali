.class public final Lteam/opay/pay/cashier/PaymentWebAuthFragment$c;
.super Landroid/webkit/WebChromeClient;
.source "PaymentWebAuthFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/cashier/PaymentWebAuthFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/pay/cashier/PaymentWebAuthFragment$c",
        "Landroid/webkit/WebChromeClient;",
        "Landroid/webkit/WebView;",
        "view",
        "",
        "newProgress",
        "",
        "onProgressChanged",
        "(Landroid/webkit/WebView;I)V",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/cashier/PaymentWebAuthFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/cashier/PaymentWebAuthFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/PaymentWebAuthFragment$c;->a:Lteam/opay/pay/cashier/PaymentWebAuthFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lteam/opay/pay/cashier/PaymentWebAuthFragment$c;->a:Lteam/opay/pay/cashier/PaymentWebAuthFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/pay/cashier/PaymentWebAuthFragment$c;->a:Lteam/opay/pay/cashier/PaymentWebAuthFragment;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lteam/opay/pay/cashier/PaymentWebAuthFragment$c;->a:Lteam/opay/pay/cashier/PaymentWebAuthFragment;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/cashier/PaymentWebAuthFragment$c;->a:Lteam/opay/pay/cashier/PaymentWebAuthFragment;

    .line 27
    .line 28
    invoke-virtual {p1}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lqeb;

    .line 33
    .line 34
    iget-object p1, p1, Lqeb;->d:Lteam/opay/core/android/views/PulseLoaderView;

    .line 35
    .line 36
    const-string v0, "webAuthProgress"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/16 v0, 0x64

    .line 42
    .line 43
    if-eq p2, v0, :cond_1

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v1, 0x0

    .line 48
    :goto_0
    invoke-static {p1, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 49
    .line 50
    .line 51
    if-ne p2, v0, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lteam/opay/pay/cashier/PaymentWebAuthFragment$c;->a:Lteam/opay/pay/cashier/PaymentWebAuthFragment;

    .line 54
    .line 55
    invoke-static {p1}, Lteam/opay/pay/cashier/PaymentWebAuthFragment;->Y(Lteam/opay/pay/cashier/PaymentWebAuthFragment;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    sget-object p1, Lwke;->a:Lwke;

    .line 62
    .line 63
    invoke-virtual {p1}, Lwke;->a()V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_1
    return-void
.end method
