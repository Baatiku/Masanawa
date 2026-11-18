.class public final Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$initView$lambda$9$$inlined$doAfterTextChanged$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0010"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "text",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "core-ktx_release",
        "androidx/core/widget/TextViewKt$doAfterTextChanged$$inlined$addTextChangedListener$default$1"
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
.field public final synthetic a:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$initView$lambda$9$$inlined$doAfterTextChanged$1;->a:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

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
    .locals 1
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$initView$lambda$9$$inlined$doAfterTextChanged$1;->a:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 4
    .line 5
    invoke-static {v0}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->X(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$initView$lambda$9$$inlined$doAfterTextChanged$1;->a:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 9
    .line 10
    invoke-static {v0}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->Q(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)Lkac;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lkac;->i:Lteam/opay/opb/qrcode/widget/MoneyInputView;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/widget/MoneyInputView;->setAmountMark(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$initView$lambda$9$$inlined$doAfterTextChanged$1;->a:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-static {p1, v0}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->c0(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
