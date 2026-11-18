.class public final Lteam/opay/pay/pin/LoginInputPswFragment$a;
.super Lteam/opay/core/android/views/SafeDelayedTextWatcher;
.source "LoginInputPswFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/pin/LoginInputPswFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "team/opay/pay/pin/LoginInputPswFragment$a",
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
.field public final synthetic e:Lteam/opay/pay/pin/LoginInputPswFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/pin/LoginInputPswFragment;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lteam/opay/pay/pin/LoginInputPswFragment$a;->e:Lteam/opay/pay/pin/LoginInputPswFragment;

    .line 2
    .line 3
    const/4 v4, 0x2

    .line 4
    const/4 v5, 0x0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    invoke-direct/range {v0 .. v5}, Lteam/opay/core/android/views/SafeDelayedTextWatcher;-><init>(Lag8;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public b(Landroid/text/Editable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/pin/LoginInputPswFragment$a;->e:Lteam/opay/pay/pin/LoginInputPswFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_6

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/pay/pin/LoginInputPswFragment$a;->e:Lteam/opay/pay/pin/LoginInputPswFragment;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {v0, v1, v3, v2, v3}, Lteam/opay/pay/pin/AbstractLoginFragment;->q0(Lteam/opay/pay/pin/AbstractLoginFragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/pin/LoginInputPswFragment$a;->e:Lteam/opay/pay/pin/LoginInputPswFragment;

    .line 27
    .line 28
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lae6;

    .line 33
    .line 34
    iget-object v0, v0, Lae6;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    const-string v2, "loginPwdShow"

    .line 37
    .line 38
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x1

    .line 46
    if-lez v2, :cond_2

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v2, 0x0

    .line 51
    :goto_0
    invoke-static {v0, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v2, 0x6

    .line 66
    if-ne v0, v2, :cond_4

    .line 67
    .line 68
    :goto_1
    sget v0, Lteam/opay/pay/R$drawable;->min_f8f8fb_12:I

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    sget v0, Lteam/opay/pay/R$drawable;->pink_f8f8fb_12:I

    .line 72
    .line 73
    :goto_2
    iget-object v2, p0, Lteam/opay/pay/pin/LoginInputPswFragment$a;->e:Lteam/opay/pay/pin/LoginInputPswFragment;

    .line 74
    .line 75
    invoke-virtual {v2}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lae6;

    .line 80
    .line 81
    iget-object v2, v2, Lae6;->i:Lcom/google/android/material/button/MaterialButton;

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-lez p1, :cond_5

    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    :cond_5
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lteam/opay/pay/pin/LoginInputPswFragment$a;->e:Lteam/opay/pay/pin/LoginInputPswFragment;

    .line 94
    .line 95
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lae6;

    .line 100
    .line 101
    iget-object p1, p1, Lae6;->j:Lteam/opay/pay/android/views/NoAutoFillEditText;

    .line 102
    .line 103
    iget-object v1, p0, Lteam/opay/pay/pin/LoginInputPswFragment$a;->e:Lteam/opay/pay/pin/LoginInputPswFragment;

    .line 104
    .line 105
    invoke-virtual {v1}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1, v0}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    :goto_3
    return-void
.end method
