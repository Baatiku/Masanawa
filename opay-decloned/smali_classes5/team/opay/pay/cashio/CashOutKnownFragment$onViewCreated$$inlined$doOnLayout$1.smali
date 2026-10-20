.class public final Lteam/opay/pay/cashio/CashOutKnownFragment$onViewCreated$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/cashio/CashOutKnownFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a8\u0006\u000f\u00b8\u0006\u0010"
    }
    d2 = {
        "androidx/core/view/ViewKt$doOnNextLayout$1",
        "Landroid/view/View$OnLayoutChangeListener;",
        "onLayoutChange",
        "",
        "view",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "core-ktx_release",
        "androidx/core/view/ViewKt$doOnLayout$$inlined$doOnNextLayout$1"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/cashio/CashOutKnownFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/cashio/CashOutKnownFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashio/CashOutKnownFragment$onViewCreated$$inlined$doOnLayout$1;->a:Lteam/opay/pay/cashio/CashOutKnownFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/pay/cashio/CashOutKnownFragment$onViewCreated$$inlined$doOnLayout$1;->a:Lteam/opay/pay/cashio/CashOutKnownFragment;

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Loc6;

    .line 16
    .line 17
    iget-object p1, p1, Loc6;->f:Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/pay/android/views/NoticeAmountInputView;->n()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lteam/opay/pay/cashio/CashOutKnownFragment$onViewCreated$$inlined$doOnLayout$1;->a:Lteam/opay/pay/cashio/CashOutKnownFragment;

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Loc6;

    .line 29
    .line 30
    iget-object p1, p1, Loc6;->f:Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/pay/android/views/NoticeAmountInputView;->getInputText()Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lteam/opay/pay/cashio/CashOutKnownFragment$onViewCreated$$inlined$doOnLayout$1;->a:Lteam/opay/pay/cashio/CashOutKnownFragment;

    .line 41
    .line 42
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Loc6;

    .line 47
    .line 48
    iget-object p1, p1, Loc6;->f:Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 49
    .line 50
    invoke-virtual {p1}, Lteam/opay/pay/android/views/NoticeAmountInputView;->getInputText()Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p2, p0, Lteam/opay/pay/cashio/CashOutKnownFragment$onViewCreated$$inlined$doOnLayout$1;->a:Lteam/opay/pay/cashio/CashOutKnownFragment;

    .line 55
    .line 56
    invoke-static {p2}, Lteam/opay/pay/cashio/CashOutKnownFragment;->k1(Lteam/opay/pay/cashio/CashOutKnownFragment;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;->setNoticeText(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
