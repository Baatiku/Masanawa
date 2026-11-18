.class public final Lteam/opay/pay/cashio/CashIOBottomSheetView$b;
.super Landroid/webkit/WebChromeClient;
.source "CashIOBottomSheetView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/cashio/CashIOBottomSheetView;->i(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J#\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/pay/cashio/CashIOBottomSheetView$b",
        "Landroid/webkit/WebChromeClient;",
        "Landroid/webkit/WebView;",
        "view",
        "",
        "title",
        "",
        "onReceivedTitle",
        "(Landroid/webkit/WebView;Ljava/lang/String;)V",
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
.field public final synthetic a:Lteam/opay/pay/cashio/CashIOBottomSheetView;


# direct methods
.method public constructor <init>(Lteam/opay/pay/cashio/CashIOBottomSheetView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashio/CashIOBottomSheetView$b;->a:Lteam/opay/pay/cashio/CashIOBottomSheetView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lteam/opay/pay/cashio/CashIOBottomSheetView$b;->a:Lteam/opay/pay/cashio/CashIOBottomSheetView;

    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/cashio/CashIOBottomSheetView;->f()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lteam/opay/pay/cashio/CashIOBottomSheetView$b;->a:Lteam/opay/pay/cashio/CashIOBottomSheetView;

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/pay/cashio/CashIOBottomSheetView;->e()Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const-string p2, ""

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/cashio/CashIOBottomSheetView$b;->a:Lteam/opay/pay/cashio/CashIOBottomSheetView;

    .line 27
    .line 28
    invoke-virtual {p1}, Lteam/opay/pay/cashio/CashIOBottomSheetView;->e()Landroid/widget/TextView;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method
