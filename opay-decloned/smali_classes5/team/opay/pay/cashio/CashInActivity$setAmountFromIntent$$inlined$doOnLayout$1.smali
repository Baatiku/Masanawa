.class public final Lteam/opay/pay/cashio/CashInActivity$setAmountFromIntent$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/cashio/CashInActivity;->e1(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
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
.field public final synthetic a:Lteam/opay/pay/cashio/CashInActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/cashio/CashInActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashio/CashInActivity$setAmountFromIntent$$inlined$doOnLayout$1;->a:Lteam/opay/pay/cashio/CashInActivity;

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
    iget-object p1, p0, Lteam/opay/pay/cashio/CashInActivity$setAmountFromIntent$$inlined$doOnLayout$1;->a:Lteam/opay/pay/cashio/CashInActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lteam/opay/pay/cashio/CashInActivity;->Y(Lteam/opay/pay/cashio/CashInActivity;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/cashio/CashInActivity$setAmountFromIntent$$inlined$doOnLayout$1;->a:Lteam/opay/pay/cashio/CashInActivity;

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/pay/cashio/CashInActivity;->E0()Lhe;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p1, p1, Lhe;->l:Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 31
    .line 32
    const-string p2, "inputAmount"

    .line 33
    .line 34
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Landroidx/core/view/a;->V(Landroid/view/View;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lteam/opay/pay/cashio/CashInActivity$setAmountFromIntent$$inlined$doOnLayout$1;->a:Lteam/opay/pay/cashio/CashInActivity;

    .line 50
    .line 51
    invoke-virtual {p1}, Lteam/opay/pay/cashio/CashInActivity;->E0()Lhe;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p1, p1, Lhe;->l:Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 56
    .line 57
    invoke-virtual {p1}, Lteam/opay/pay/android/views/NoticeAmountInputView;->n()V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lteam/opay/pay/cashio/CashInActivity$setAmountFromIntent$$inlined$doOnLayout$1;->a:Lteam/opay/pay/cashio/CashInActivity;

    .line 61
    .line 62
    invoke-virtual {p1}, Lteam/opay/pay/cashio/CashInActivity;->E0()Lhe;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p1, p1, Lhe;->l:Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 67
    .line 68
    invoke-virtual {p1}, Lteam/opay/pay/android/views/NoticeAmountInputView;->getInputText()Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p2, p0, Lteam/opay/pay/cashio/CashInActivity$setAmountFromIntent$$inlined$doOnLayout$1;->a:Lteam/opay/pay/cashio/CashInActivity;

    .line 73
    .line 74
    invoke-static {p2}, Lteam/opay/pay/cashio/CashInActivity;->Y(Lteam/opay/pay/cashio/CashInActivity;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lteam/opay/pay/cashio/CashInActivity$setAmountFromIntent$$inlined$doOnLayout$1;->a:Lteam/opay/pay/cashio/CashInActivity;

    .line 82
    .line 83
    invoke-virtual {p1}, Lteam/opay/pay/cashio/CashInActivity;->E0()Lhe;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p1, p1, Lhe;->l:Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 88
    .line 89
    invoke-virtual {p1}, Lteam/opay/pay/android/views/NoticeAmountInputView;->getInputText()Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const/4 p2, 0x0

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    new-instance p2, Lteam/opay/pay/cashio/CashInActivity$setAmountFromIntent$lambda$31$$inlined$doOnLayout$1;

    .line 99
    .line 100
    iget-object p3, p0, Lteam/opay/pay/cashio/CashInActivity$setAmountFromIntent$$inlined$doOnLayout$1;->a:Lteam/opay/pay/cashio/CashInActivity;

    .line 101
    .line 102
    invoke-direct {p2, p3}, Lteam/opay/pay/cashio/CashInActivity$setAmountFromIntent$lambda$31$$inlined$doOnLayout$1;-><init>(Lteam/opay/pay/cashio/CashInActivity;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/cashio/CashInActivity$setAmountFromIntent$$inlined$doOnLayout$1;->a:Lteam/opay/pay/cashio/CashInActivity;

    .line 110
    .line 111
    invoke-virtual {p1}, Lteam/opay/pay/cashio/CashInActivity;->E0()Lhe;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object p1, p1, Lhe;->g:Landroid/widget/TextView;

    .line 116
    .line 117
    sget p2, Lteam/opay/pay/R$string;->osdk_enter_amount:I

    .line 118
    .line 119
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    :goto_1
    return-void
.end method
