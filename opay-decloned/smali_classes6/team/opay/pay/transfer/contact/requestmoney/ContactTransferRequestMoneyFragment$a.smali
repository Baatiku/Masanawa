.class public final Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment$a;
.super Ljava/lang/Object;
.source "ContactTransferRequestMoneyFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0010\u0008\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J1\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ1\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "team/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment$a",
        "Landroid/text/TextWatcher;",
        "Landroid/text/Editable;",
        "s",
        "",
        "afterTextChanged",
        "(Landroid/text/Editable;)V",
        "",
        "",
        "start",
        "count",
        "after",
        "beforeTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "before",
        "onTextChanged",
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
.field public final synthetic a:Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment$a;->a:Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p3, 0x0

    .line 10
    :goto_0
    const/16 p4, 0x32

    .line 11
    .line 12
    if-le p3, p4, :cond_2

    .line 13
    .line 14
    iget-object p3, p0, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment$a;->a:Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment;

    .line 15
    .line 16
    invoke-virtual {p3}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    check-cast p3, Lgd6;

    .line 21
    .line 22
    iget-object p3, p3, Lgd6;->j:Lteam/opay/pay/android/views/AmountInputText;

    .line 23
    .line 24
    invoke-virtual {p3}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "substring(...)"

    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 p1, 0x0

    .line 47
    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment$a;->a:Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment;

    .line 51
    .line 52
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lgd6;

    .line 57
    .line 58
    iget-object p1, p1, Lgd6;->j:Lteam/opay/pay/android/views/AmountInputText;

    .line 59
    .line 60
    invoke-virtual {p1}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lpf5;->b(Landroid/widget/EditText;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void
.end method
