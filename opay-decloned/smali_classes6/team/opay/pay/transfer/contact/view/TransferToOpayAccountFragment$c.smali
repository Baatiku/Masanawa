.class public final Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment$c;
.super Lteam/opay/core/android/views/SafeDelayedTextWatcher;
.source "TransferToOpayAccountFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;->initView()V
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
        "team/opay/pay/transfer/contact/view/TransferToOpayAccountFragment$c",
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
.field public final synthetic e:Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment$c;->e:Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;

    .line 2
    .line 3
    const-wide/16 v0, 0x12c

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
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment$c;->e:Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lxi6;

    .line 8
    .line 9
    iget-object v0, v0, Lxi6;->A:Lteam/opay/pay/payment/betting/ParentViewPagerNestScrollView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment$c;->e:Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;

    .line 19
    .line 20
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lxi6;

    .line 25
    .line 26
    iget-object v0, v0, Lxi6;->A:Lteam/opay/pay/payment/betting/ParentViewPagerNestScrollView;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment$c;->e:Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;

    .line 32
    .line 33
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lxi6;

    .line 38
    .line 39
    iget-object v0, v0, Lxi6;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    :cond_1
    const/4 v1, 0x1

    .line 53
    :cond_2
    xor-int/lit8 p1, v1, 0x1

    .line 54
    .line 55
    invoke-static {v0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void
.end method
