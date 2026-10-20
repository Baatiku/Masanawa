.class public final Lteam/opay/pay/module/dialog/OtpStateDialogFragment;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "OtpStateDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/module/dialog/OtpStateDialogFragment$Companion;,
        Lteam/opay/pay/module/dialog/OtpStateDialogFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Loxa;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 !2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ!\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0004R*\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR*\u0010 \u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0017\u001a\u0004\u0008\u001e\u0010\u0019\"\u0004\u0008\u001f\u0010\u001b\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/pay/module/dialog/OtpStateDialogFragment;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Loxa;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/core/android/arch/Status;",
        "state",
        "",
        "stateDesc",
        "T",
        "(Lteam/opay/core/android/arch/Status;Ljava/lang/String;)V",
        "P",
        "Q",
        "O",
        "Lkotlin/Function0;",
        "j",
        "Lkotlin/jvm/functions/Function0;",
        "getOnSuccess",
        "()Lkotlin/jvm/functions/Function0;",
        "S",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onSuccess",
        "k",
        "getOnFailure",
        "setOnFailure",
        "onFailure",
        "l",
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
.field public static final l:Lteam/opay/pay/module/dialog/OtpStateDialogFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public j:Lkotlin/jvm/functions/Function0;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/module/dialog/OtpStateDialogFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/module/dialog/OtpStateDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->l:Lteam/opay/pay/module/dialog/OtpStateDialogFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/module/dialog/OtpStateDialogFragment$1;->INSTANCE:Lteam/opay/pay/module/dialog/OtpStateDialogFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic M(Lteam/opay/pay/module/dialog/OtpStateDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->R(Lteam/opay/pay/module/dialog/OtpStateDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/pay/module/dialog/OtpStateDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->U(Lteam/opay/pay/module/dialog/OtpStateDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final R(Lteam/opay/pay/module/dialog/OtpStateDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->j:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final U(Lteam/opay/pay/module/dialog/OtpStateDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->k:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public final O()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Loxa;

    .line 6
    .line 7
    iget-object v0, v0, Loxa;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 10
    .line 11
    .line 12
    const-string v1, "lottie/osdk_lottie_otp_faile.json"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final P()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Loxa;

    .line 6
    .line 7
    iget-object v0, v0, Loxa;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 8
    .line 9
    const-string v1, "lottie/osdk_lottie_otp_loading.json"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final Q()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Loxa;

    .line 6
    .line 7
    iget-object v0, v0, Loxa;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 8
    .line 9
    const-string v1, "lottie/osdk_lottie_otp_success.json"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "getViewLifecycleOwner(...)"

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Ls2b;

    .line 31
    .line 32
    invoke-direct {v2, p0}, Ls2b;-><init>(Lteam/opay/pay/module/dialog/OtpStateDialogFragment;)V

    .line 33
    .line 34
    .line 35
    const-wide/16 v3, 0x3e8

    .line 36
    .line 37
    invoke-static {v0, v1, v3, v4, v2}, Lteam/opay/core/android/ViewKt;->j(Lcom/airbnb/lottie/LottieAnimationView;Lag8;JLkotlin/jvm/functions/Function0;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final S(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->j:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final T(Lteam/opay/core/android/arch/Status;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lteam/opay/core/android/arch/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_8

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_8

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    sget v0, Lteam/opay/pay/R$string;->osdk_checking:I

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "getString(...)"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lteam/opay/pay/module/dialog/OtpStateDialogFragment$a;->a:[I

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    aget p1, v0, p1

    .line 44
    .line 45
    const-string v0, "stateRetry"

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    const-string v2, ""

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    if-eq p1, v3, :cond_5

    .line 52
    .line 53
    const/4 v4, 0x2

    .line 54
    if-eq p1, v4, :cond_3

    .line 55
    .line 56
    const/4 v4, 0x3

    .line 57
    if-ne p1, v4, :cond_2

    .line 58
    .line 59
    sget p1, Lteam/opay/pay/R$string;->auth_failed:I

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-nez p2, :cond_1

    .line 66
    .line 67
    move-object p2, v2

    .line 68
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->O()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Loxa;

    .line 76
    .line 77
    iget-object v2, v2, Loxa;->d:Lcom/google/android/material/button/MaterialButton;

    .line 78
    .line 79
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v4, Lr2b;

    .line 83
    .line 84
    invoke-direct {v4, p0}, Lr2b;-><init>(Lteam/opay/pay/module/dialog/OtpStateDialogFragment;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v2, v4}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 88
    .line 89
    .line 90
    const/4 v2, 0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 93
    .line 94
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_3
    sget p1, Lteam/opay/pay/R$string;->osdk_succeeded:I

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-nez p2, :cond_4

    .line 105
    .line 106
    move-object p2, v2

    .line 107
    :cond_4
    invoke-virtual {p0}, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->Q()V

    .line 108
    .line 109
    .line 110
    :goto_0
    const/4 v2, 0x0

    .line 111
    goto :goto_1

    .line 112
    :cond_5
    sget p1, Lteam/opay/pay/R$string;->osdk_check_with_dot:I

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-nez p2, :cond_6

    .line 119
    .line 120
    move-object p2, v2

    .line 121
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->P()V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :goto_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Loxa;

    .line 130
    .line 131
    iget-object v4, v4, Loxa;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    .line 133
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Loxa;

    .line 141
    .line 142
    iget-object p1, p1, Loxa;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 143
    .line 144
    const-string v4, "stateDescription"

    .line 145
    .line 146
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-lez v4, :cond_7

    .line 154
    .line 155
    const/4 v1, 0x1

    .line 156
    :cond_7
    invoke-static {p1, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Loxa;

    .line 164
    .line 165
    iget-object p1, p1, Loxa;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Loxa;

    .line 175
    .line 176
    iget-object p1, p1, Loxa;->d:Lcom/google/android/material/button/MaterialButton;

    .line 177
    .line 178
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-static {p1, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 182
    .line 183
    .line 184
    :cond_8
    :goto_2
    return-void
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
    invoke-super {p0, p1, p2}, Lteam/opay/core/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p2, "show_loading_desc"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 p2, 0x1

    .line 22
    if-ne p1, p2, :cond_0

    .line 23
    .line 24
    sget p1, Lteam/opay/pay/R$string;->osdk_otp_verify_auto_filled_loading:I

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p1, ""

    .line 32
    .line 33
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object p2, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 37
    .line 38
    invoke-virtual {p0, p2, p1}, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->T(Lteam/opay/core/android/arch/Status;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
