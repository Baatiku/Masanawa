.class public final Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4;
.super Lteam/opay/core/android/views/SafeDelayedTextWatcher;
.source "TransferContactFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "team/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4",
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
.field public final synthetic e:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4;->e:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

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
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4;->e:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4;->e:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_4

    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4;->e:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4;->e:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 27
    .line 28
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lmi6;

    .line 33
    .line 34
    iget-object v0, v0, Lmi6;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v2, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 51
    :goto_1
    xor-int/2addr v1, v2

    .line 52
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4;->e:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 56
    .line 57
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    new-instance v4, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1;

    .line 66
    .line 67
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4;->e:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-direct {v4, p1, v0, v3}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1;-><init>(Landroid/text/Editable;Lteam/opay/pay/transfer/contact/view/TransferContactFragment;Ljr2;)V

    .line 71
    .line 72
    .line 73
    const/4 v5, 0x2

    .line 74
    const/4 v6, 0x0

    .line 75
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_2
    return-void
.end method
