.class public final Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$a;
.super Ljava/lang/Object;
.source "OpayTransferSendMoneyFragmentV2.kt"

# interfaces
.implements Lteam/opay/pay/android/views/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J3\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u001a\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00060\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "team/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$a",
        "Lteam/opay/pay/android/views/e;",
        "",
        "h",
        "()Z",
        "valid",
        "",
        "g",
        "(Z)V",
        "",
        "accountNumber",
        "Lkotlin/Function2;",
        "Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;",
        "callback",
        "d",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V",
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
.field public final synthetic a:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$a;->a:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/android/views/e$a;->g(Lteam/opay/pay/android/views/e;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/views/e$a;->f(Lteam/opay/pay/android/views/e;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/views/e$a;->d(Lteam/opay/pay/android/views/e;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public d(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "accountNumber"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$a;->a:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 12
    .line 13
    invoke-static {v0}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;->M1(Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->j1(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCHING:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-interface {p2, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$a;->a:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 27
    .line 28
    invoke-static {p2}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;->P1(Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;)Lteam/opay/core/settings/SettingsStorage;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->h()Lteam/opay/core/api/Country;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v0, p1}, Lxob;->h(Lteam/opay/core/api/Country;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p2, p1}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;->V1(Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$a;->a:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 48
    .line 49
    invoke-static {p1}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;->K1(Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$a;->a:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 53
    .line 54
    invoke-static {p1}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;->O1(Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/views/e$a;->e(Lteam/opay/pay/android/views/e;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public f(Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/views/e$a;->c(Lteam/opay/pay/android/views/e;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public g(Z)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/views/e$a;->i(Lteam/opay/pay/android/views/e;Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$a;->a:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;->R1(Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$a;->a:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    invoke-static {v0, v1}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;->V1(Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$a;->a:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;->S1(Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$a;->a:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 28
    .line 29
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lwg6;

    .line 34
    .line 35
    iget-object v0, v0, Lwg6;->i:Landroidx/constraintlayout/widget/Group;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$a;->a:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 43
    .line 44
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lwg6;

    .line 49
    .line 50
    iget-object v0, v0, Lwg6;->b:Lcom/google/android/material/button/MaterialButton;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$a;->a:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 59
    .line 60
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lwg6;

    .line 65
    .line 66
    iget-object v0, v0, Lwg6;->b:Lcom/google/android/material/button/MaterialButton;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    sget v1, Lteam/opay/pay/R$string;->confirm:I

    .line 71
    .line 72
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$a;->a:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 80
    .line 81
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;->Y1()V

    .line 82
    .line 83
    .line 84
    :cond_3
    if-nez p1, :cond_4

    .line 85
    .line 86
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$a;->a:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 87
    .line 88
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lwg6;

    .line 93
    .line 94
    iget-object p1, p1, Lwg6;->g:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 95
    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    invoke-virtual {p1}, Lteam/opay/pay/transfer/SpiltOrderView;->i()V

    .line 99
    .line 100
    .line 101
    :cond_4
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
