.class public final Lteam/opay/pay/wallet/FullAddMoneyFragment$b;
.super Lteam/opay/core/android/views/SafeDelayedTextWatcher;
.source "FullAddMoneyFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/wallet/FullAddMoneyFragment;->y1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/pay/wallet/FullAddMoneyFragment$b",
        "Lteam/opay/core/android/views/SafeDelayedTextWatcher;",
        "Landroid/text/Editable;",
        "s",
        "",
        "b",
        "(Landroid/text/Editable;)V",
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
.field public final synthetic e:Lteam/opay/pay/wallet/FullAddMoneyFragment;

.field public final synthetic f:Lteam/opay/pay/android/views/AmountEditText;


# direct methods
.method public constructor <init>(Lteam/opay/pay/wallet/FullAddMoneyFragment;Lteam/opay/pay/android/views/AmountEditText;Lag8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/wallet/FullAddMoneyFragment$b;->e:Lteam/opay/pay/wallet/FullAddMoneyFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/wallet/FullAddMoneyFragment$b;->f:Lteam/opay/pay/android/views/AmountEditText;

    .line 4
    .line 5
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 p1, 0x12c

    .line 9
    .line 10
    invoke-direct {p0, p3, p1, p2}, Lteam/opay/core/android/views/SafeDelayedTextWatcher;-><init>(Lag8;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public b(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lteam/opay/pay/wallet/FullAddMoneyFragment$b;->e:Lteam/opay/pay/wallet/FullAddMoneyFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/wallet/FullAddMoneyFragment$b;->f:Lteam/opay/pay/android/views/AmountEditText;

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/android/views/AmountEditText;->getFormatText()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->s0(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lteam/opay/pay/wallet/FullAddMoneyFragment$b;->e:Lteam/opay/pay/wallet/FullAddMoneyFragment;

    .line 13
    .line 14
    invoke-static {p1}, Lteam/opay/pay/wallet/FullAddMoneyFragment;->l1(Lteam/opay/pay/wallet/FullAddMoneyFragment;)Lteam/opay/pay/wallet/NewAddMoneyViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent$AMOUNT_CHANGE;

    .line 19
    .line 20
    iget-object v1, p0, Lteam/opay/pay/wallet/FullAddMoneyFragment$b;->f:Lteam/opay/pay/android/views/AmountEditText;

    .line 21
    .line 22
    invoke-virtual {v1}, Lteam/opay/pay/android/views/AmountEditText;->getFormatText()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent$AMOUNT_CHANGE;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->X(Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
