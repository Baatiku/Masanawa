.class public final Lteam/opay/pay/home/security/PINResultFragment;
.super Lteam/opay/pay/home/security/Hilt_PINResultFragment;
.source "PINResultFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/security/PINResultFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/home/security/Hilt_PINResultFragment<",
        "Loza;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00162\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0004R\u001b\u0010\u0015\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/pay/home/security/PINResultFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Loza;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "onBackPressed",
        "()Z",
        "R",
        "Lteam/opay/pay/home/security/SecretSecurityViewModel;",
        "o",
        "Lid8;",
        "Q",
        "()Lteam/opay/pay/home/security/SecretSecurityViewModel;",
        "payPinViewModel",
        "p",
        "Companion",
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


# static fields
.field public static final p:Lteam/opay/pay/home/security/PINResultFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/security/PINResultFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/security/PINResultFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/security/PINResultFragment;->p:Lteam/opay/pay/home/security/PINResultFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/home/security/PINResultFragment$1;->INSTANCE:Lteam/opay/pay/home/security/PINResultFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/security/Hilt_PINResultFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/home/security/SecretSecurityViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/home/security/PINResultFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/home/security/PINResultFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/home/security/PINResultFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/home/security/PINResultFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/home/security/PINResultFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/home/security/PINResultFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/home/security/PINResultFragment;->o:Lid8;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/home/security/PINResultFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/PINResultFragment;->S(Lteam/opay/pay/home/security/PINResultFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/home/security/PINResultFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/PINResultFragment;->T(Lteam/opay/pay/home/security/PINResultFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final Q()Lteam/opay/pay/home/security/SecretSecurityViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/PINResultFragment;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/security/SecretSecurityViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final S(Lteam/opay/pay/home/security/PINResultFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/PINResultFragment;->R()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/home/security/PINResultFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/PINResultFragment;->R()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final R()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/security/PINResultFragment;->Q()Lteam/opay/pay/home/security/SecretSecurityViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->J()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-direct {p0}, Lteam/opay/pay/home/security/PINResultFragment;->Q()Lteam/opay/pay/home/security/SecretSecurityViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->a0(Z)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lteam/opay/pay/home/security/PINResultFragment;->Q()Lteam/opay/pay/home/security/SecretSecurityViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->E()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    if-eq v0, v3, :cond_1

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    if-eq v0, v3, :cond_0

    .line 35
    .line 36
    const/4 v3, 0x4

    .line 37
    if-eq v0, v3, :cond_2

    .line 38
    .line 39
    invoke-direct {p0}, Lteam/opay/pay/home/security/PINResultFragment;->Q()Lteam/opay/pay/home/security/SecretSecurityViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, v2}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->h0(I)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lteam/opay/pay/home/security/paypin/PayPinEvent;

    .line 53
    .line 54
    invoke-direct {v1, v2}, Lteam/opay/pay/home/security/paypin/PayPinEvent;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_1
    sget-object v0, Lgre;->a:Lgre;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const-string v4, "pay_password_window_ok_click"

    .line 78
    .line 79
    new-array v2, v2, [Lkotlin/Pair;

    .line 80
    .line 81
    invoke-virtual {v0, v3, v4, v2}, Lgre;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v2, Lteam/opay/pay/home/security/paypin/PayPinEvent;

    .line 89
    .line 90
    invoke-direct {v2, v1}, Lteam/opay/pay/home/security/paypin/PayPinEvent;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-static {v0}, Lum8;->g(Landroid/app/Activity;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v3, Lteam/opay/pay/home/security/paypin/PayPinEvent;

    .line 111
    .line 112
    invoke-direct {v3, v1}, Lteam/opay/pay/home/security/paypin/PayPinEvent;-><init>(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    sget-object v4, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 119
    .line 120
    new-instance v6, Lteam/opay/pay/home/security/paypin/PayPinEvent;

    .line 121
    .line 122
    invoke-direct {v6, v2}, Lteam/opay/pay/home/security/paypin/PayPinEvent;-><init>(I)V

    .line 123
    .line 124
    .line 125
    const/4 v8, 0x4

    .line 126
    const/4 v9, 0x0

    .line 127
    const-string v5, "pin_reset_success_key"

    .line 128
    .line 129
    const/4 v7, 0x0

    .line 130
    invoke-static/range {v4 .. v9}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    new-instance v2, Lteam/opay/pay/home/security/paypin/PayPinEvent;

    .line 148
    .line 149
    invoke-direct {v2, v1}, Lteam/opay/pay/home/security/paypin/PayPinEvent;-><init>(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    sget-object v3, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 156
    .line 157
    new-instance v5, Lteam/opay/pay/home/security/paypin/PayPinEvent;

    .line 158
    .line 159
    invoke-direct {v5, v1}, Lteam/opay/pay/home/security/paypin/PayPinEvent;-><init>(I)V

    .line 160
    .line 161
    .line 162
    const/4 v7, 0x4

    .line 163
    const/4 v8, 0x0

    .line 164
    const-string v4, "pin_reset_success_key"

    .line 165
    .line 166
    const/4 v6, 0x0

    .line 167
    invoke-static/range {v3 .. v8}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-eqz v0, :cond_4

    .line 175
    .line 176
    const/4 v1, -0x1

    .line 177
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 178
    .line 179
    .line 180
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    if-eqz v0, :cond_5

    .line 185
    .line 186
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 187
    .line 188
    .line 189
    :cond_5
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/PINResultFragment;->R()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Loza;

    .line 14
    .line 15
    iget-object p1, p1, Loza;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 16
    .line 17
    new-instance p2, Lp4b;

    .line 18
    .line 19
    invoke-direct {p2, p0}, Lp4b;-><init>(Lteam/opay/pay/home/security/PINResultFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Loza;

    .line 30
    .line 31
    iget-object p1, p1, Loza;->d:Landroidx/appcompat/widget/AppCompatButton;

    .line 32
    .line 33
    const-string p2, "resultOk"

    .line 34
    .line 35
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p2, Lq4b;

    .line 39
    .line 40
    invoke-direct {p2, p0}, Lq4b;-><init>(Lteam/opay/pay/home/security/PINResultFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Loza;

    .line 51
    .line 52
    iget-object p1, p1, Loza;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    invoke-direct {p0}, Lteam/opay/pay/home/security/PINResultFragment;->Q()Lteam/opay/pay/home/security/SecretSecurityViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->K()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lteam/opay/pay/home/security/PINResultFragment;->Q()Lteam/opay/pay/home/security/SecretSecurityViewModel;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->E()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/4 p2, 0x2

    .line 74
    if-ne p1, p2, :cond_0

    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Loza;

    .line 81
    .line 82
    iget-object p1, p1, Loza;->d:Landroidx/appcompat/widget/AppCompatButton;

    .line 83
    .line 84
    sget p2, Lteam/opay/pay/R$string;->account_click_login:I

    .line 85
    .line 86
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    :cond_0
    return-void
.end method
