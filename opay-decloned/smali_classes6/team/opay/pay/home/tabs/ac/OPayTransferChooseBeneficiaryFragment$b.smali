.class public final Lteam/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment$b;
.super Lteam/opay/core/android/views/SafeDelayedTextWatcher;
.source "OPayTransferChooseBeneficiaryFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment;->initView()V
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
        "team/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment$b",
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
.field public final synthetic e:Lteam/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment$b;->e:Lteam/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment;

    .line 2
    .line 3
    const-wide/16 v0, 0x64

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1}, Lteam/opay/core/android/views/SafeDelayedTextWatcher;-><init>(Lag8;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment$b;->e:Lteam/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment$b;->e:Lteam/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment$b;->e:Lteam/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment$b;->e:Lteam/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment;

    .line 27
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
    if-nez p1, :cond_2

    .line 35
    .line 36
    :cond_1
    const-string p1, ""

    .line 37
    .line 38
    :cond_2
    invoke-static {v0, p1}, Lteam/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment;->c0(Lteam/opay/pay/home/tabs/ac/OPayTransferChooseBeneficiaryFragment;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_0
    return-void
.end method
