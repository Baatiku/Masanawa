.class public final Lcashier/ui/PayPinErrorTipDialog;
.super Lcashier/ui/Hilt_PayPinErrorTipDialog;
.source "PayPinErrorTipDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J-\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J!\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0003R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R$\u0010\u001e\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR*\u0010&\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001b\u0010,\u001a\u00020\'8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\u00a8\u0006-"
    }
    d2 = {
        "Lcashier/ui/PayPinErrorTipDialog;",
        "Lcashier/ui/BaseDFragment;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "",
        "onDestroyView",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "I",
        "Lk8b;",
        "i",
        "Lk8b;",
        "binding",
        "Lcashier/ui/PayPinError;",
        "j",
        "Lcashier/ui/PayPinError;",
        "getPinErrorData",
        "()Lcashier/ui/PayPinError;",
        "L",
        "(Lcashier/ui/PayPinError;)V",
        "pinErrorData",
        "Lkotlin/Function0;",
        "k",
        "Lkotlin/jvm/functions/Function0;",
        "J",
        "()Lkotlin/jvm/functions/Function0;",
        "M",
        "(Lkotlin/jvm/functions/Function0;)V",
        "retryClick",
        "Lcashier/model/CashierViewModel;",
        "l",
        "Lid8;",
        "K",
        "()Lcashier/model/CashierViewModel;",
        "viewModel",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public i:Lk8b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lcashier/ui/PayPinError;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcashier/ui/Hilt_PayPinErrorTipDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcashier/model/CashierViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcashier/ui/PayPinErrorTipDialog$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcashier/ui/PayPinErrorTipDialog$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcashier/ui/PayPinErrorTipDialog$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcashier/ui/PayPinErrorTipDialog$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->c(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcashier/ui/PayPinErrorTipDialog;->l:Lid8;

    .line 25
    .line 26
    return-void
.end method

.method public static final synthetic G(Lcashier/ui/PayPinErrorTipDialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/ui/PayPinErrorTipDialog;->I()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H(Lcashier/ui/PayPinErrorTipDialog;)Lcashier/model/CashierViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcashier/ui/PayPinErrorTipDialog;->K()Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final K()Lcashier/model/CashierViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/ui/PayPinErrorTipDialog;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcashier/model/CashierViewModel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final I()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcashier/ui/PayPinErrorTipDialog;->K()Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v2, Lcashier/PoolType;->FORGET_PAYMENT_PIN:Lcashier/PoolType;

    .line 12
    .line 13
    new-instance v4, Lcashier/ui/PayPinErrorTipDialog$forgetPin$1;

    .line 14
    .line 15
    invoke-direct {v4, p0}, Lcashier/ui/PayPinErrorTipDialog$forgetPin$1;-><init>(Lcashier/ui/PayPinErrorTipDialog;)V

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lcashier/CashierDelegate$a;->c(Lcashier/CashierDelegate;Lcashier/PoolType;Lcashier/PoolResponse;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final J()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/ui/PayPinErrorTipDialog;->k:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L(Lcashier/ui/PayPinError;)V
    .locals 0
    .param p1    # Lcashier/ui/PayPinError;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->j:Lcashier/ui/PayPinError;

    .line 2
    .line 3
    return-void
.end method

.method public final M(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->k:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-static {p1, p2, p3}, Lk8b;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lk8b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->i:Lk8b;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lk8b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcashier/ui/PayPinErrorTipDialog;->i:Lk8b;

    .line 6
    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcashier/ui/BaseDFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->j:Lcashier/ui/PayPinError;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object p2, p0, Lcashier/ui/PayPinErrorTipDialog;->i:Lk8b;

    .line 14
    .line 15
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p2, Lk8b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcashier/ui/PayPinError;->b()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcashier/ui/PayPinError;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string v0, "200425"

    .line 32
    .line 33
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const-string v0, "binding!!.btnRetry"

    .line 38
    .line 39
    const-string v1, "binding!!.btnForgot1"

    .line 40
    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lcashier/ui/PayPinError;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "20003"

    .line 48
    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->i:Lk8b;

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p1, Lk8b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 62
    .line 63
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget-object v2, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcashier/model/CashierViewModel$Companion;->i()Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    xor-int/lit8 p2, p2, 0x1

    .line 73
    .line 74
    invoke-static {p1, p2}, Ld0g;->t(Landroid/view/View;Z)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->i:Lk8b;

    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p1, Lk8b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    sget p2, Lteam/opay/pay/cashier/R$string;->pay_pin_incorrect:I

    .line 85
    .line 86
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->i:Lk8b;

    .line 94
    .line 95
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p1, Lk8b;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 99
    .line 100
    sget p2, Lteam/opay/pay/cashier/R$mipmap;->pay_ic_account_error:I

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->i:Lk8b;

    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p1, Lk8b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 111
    .line 112
    sget p2, Lteam/opay/pay/cashier/R$string;->pay_forget_pin:I

    .line 113
    .line 114
    invoke-static {p2}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->i:Lk8b;

    .line 122
    .line 123
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p1, Lk8b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 127
    .line 128
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-instance p2, Lcashier/ui/PayPinErrorTipDialog$onViewCreated$1$3;

    .line 132
    .line 133
    invoke-direct {p2, p0}, Lcashier/ui/PayPinErrorTipDialog$onViewCreated$1$3;-><init>(Lcashier/ui/PayPinErrorTipDialog;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p1, p2}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->i:Lk8b;

    .line 140
    .line 141
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p1, Lk8b;->c:Lcom/google/android/material/button/MaterialButton;

    .line 145
    .line 146
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance p2, Lcashier/ui/PayPinErrorTipDialog$onViewCreated$1$4;

    .line 150
    .line 151
    invoke-direct {p2, p0}, Lcashier/ui/PayPinErrorTipDialog$onViewCreated$1$4;-><init>(Lcashier/ui/PayPinErrorTipDialog;)V

    .line 152
    .line 153
    .line 154
    invoke-static {p1, p2}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 155
    .line 156
    .line 157
    const/4 v6, 0x6

    .line 158
    const/4 v7, 0x0

    .line 159
    const-string v3, "pin_error_unreach_show"

    .line 160
    .line 161
    const/4 v4, 0x0

    .line 162
    const/4 v5, 0x0

    .line 163
    invoke-static/range {v2 .. v7}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :cond_1
    :goto_0
    iget-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->i:Lk8b;

    .line 169
    .line 170
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p1, Lk8b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 174
    .line 175
    sget p2, Lteam/opay/pay/cashier/R$string;->pay_account_locked:I

    .line 176
    .line 177
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->i:Lk8b;

    .line 185
    .line 186
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p1, Lk8b;->c:Lcom/google/android/material/button/MaterialButton;

    .line 190
    .line 191
    sget p2, Lteam/opay/pay/cashier/R$string;->pay_reset_pin:I

    .line 192
    .line 193
    invoke-static {p2}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->i:Lk8b;

    .line 201
    .line 202
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p1, Lk8b;->c:Lcom/google/android/material/button/MaterialButton;

    .line 206
    .line 207
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    sget-object v2, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 211
    .line 212
    invoke-virtual {v2}, Lcashier/model/CashierViewModel$Companion;->i()Z

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    xor-int/lit8 p2, p2, 0x1

    .line 217
    .line 218
    invoke-static {p1, p2}, Ld0g;->t(Landroid/view/View;Z)V

    .line 219
    .line 220
    .line 221
    iget-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->i:Lk8b;

    .line 222
    .line 223
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p1, Lk8b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 227
    .line 228
    sget p2, Lteam/opay/pay/cashier/R$string;->pay_cancel:I

    .line 229
    .line 230
    invoke-static {p2}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->i:Lk8b;

    .line 238
    .line 239
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    iget-object p1, p1, Lk8b;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 243
    .line 244
    sget p2, Lteam/opay/pay/cashier/R$mipmap;->pay_ic_account_locked:I

    .line 245
    .line 246
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->i:Lk8b;

    .line 250
    .line 251
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    iget-object p1, p1, Lk8b;->c:Lcom/google/android/material/button/MaterialButton;

    .line 255
    .line 256
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    new-instance p2, Lcashier/ui/PayPinErrorTipDialog$onViewCreated$1$1;

    .line 260
    .line 261
    invoke-direct {p2, p0}, Lcashier/ui/PayPinErrorTipDialog$onViewCreated$1$1;-><init>(Lcashier/ui/PayPinErrorTipDialog;)V

    .line 262
    .line 263
    .line 264
    invoke-static {p1, p2}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 265
    .line 266
    .line 267
    iget-object p1, p0, Lcashier/ui/PayPinErrorTipDialog;->i:Lk8b;

    .line 268
    .line 269
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    iget-object p1, p1, Lk8b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 273
    .line 274
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    new-instance p2, Lcashier/ui/PayPinErrorTipDialog$onViewCreated$1$2;

    .line 278
    .line 279
    invoke-direct {p2, p0}, Lcashier/ui/PayPinErrorTipDialog$onViewCreated$1$2;-><init>(Lcashier/ui/PayPinErrorTipDialog;)V

    .line 280
    .line 281
    .line 282
    invoke-static {p1, p2}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 283
    .line 284
    .line 285
    const/4 v6, 0x6

    .line 286
    const/4 v7, 0x0

    .line 287
    const-string v3, "pin_error_reach_show"

    .line 288
    .line 289
    const/4 v4, 0x0

    .line 290
    const/4 v5, 0x0

    .line 291
    invoke-static/range {v2 .. v7}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_2
    const/4 p1, 0x0

    .line 298
    :goto_2
    if-nez p1, :cond_3

    .line 299
    .line 300
    invoke-virtual {p0}, Lcashier/ui/BaseDFragment;->dismiss()V

    .line 301
    .line 302
    .line 303
    :cond_3
    return-void
.end method
