.class public final Lcom/opay/team/newhome/me/MeBannerSecurityFragment;
.super Lcom/opay/team/newhome/me/Hilt_MeBannerSecurityFragment;
.source "MeBannerSecurityFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/me/MeBannerSecurityFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/opay/team/newhome/me/Hilt_MeBannerSecurityFragment<",
        "Lyf6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00162\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0015\u001a\u0004\u0018\u00010\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/opay/team/newhome/me/MeBannerSecurityFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lyf6;",
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
        "securityStatus",
        "V",
        "(Ljava/lang/String;)V",
        "Lteam/opay/pay/api/MeSecurityRsp;",
        "o",
        "Lid8;",
        "R",
        "()Lteam/opay/pay/api/MeSecurityRsp;",
        "security",
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
.field public static final p:Lcom/opay/team/newhome/me/MeBannerSecurityFragment$Companion;
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
    new-instance v0, Lcom/opay/team/newhome/me/MeBannerSecurityFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/me/MeBannerSecurityFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/me/MeBannerSecurityFragment;->p:Lcom/opay/team/newhome/me/MeBannerSecurityFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/team/newhome/me/MeBannerSecurityFragment$1;->INSTANCE:Lcom/opay/team/newhome/me/MeBannerSecurityFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/opay/team/newhome/me/Hilt_MeBannerSecurityFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Le29;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Le29;-><init>(Lcom/opay/team/newhome/me/MeBannerSecurityFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/opay/team/newhome/me/MeBannerSecurityFragment;->o:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic O(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/opay/team/newhome/me/MeBannerSecurityFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/me/MeBannerSecurityFragment;->T(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/opay/team/newhome/me/MeBannerSecurityFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lcom/opay/team/newhome/me/MeBannerSecurityFragment;)Lteam/opay/pay/api/MeSecurityRsp;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/me/MeBannerSecurityFragment;->U(Lcom/opay/team/newhome/me/MeBannerSecurityFragment;)Lteam/opay/pay/api/MeSecurityRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lcom/google/android/material/button/MaterialButton;Lcom/opay/team/newhome/me/MeBannerSecurityFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/me/MeBannerSecurityFragment;->S(Lcom/google/android/material/button/MaterialButton;Lcom/opay/team/newhome/me/MeBannerSecurityFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final S(Lcom/google/android/material/button/MaterialButton;Lcom/opay/team/newhome/me/MeBannerSecurityFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "getContext(...)"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/opay/team/newhome/me/MeBannerSecurityFragment;->R()Lteam/opay/pay/api/MeSecurityRsp;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/api/MeSecurityRsp;->getButtonJumpUrl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    const-string p1, ""

    .line 25
    .line 26
    :cond_1
    invoke-static {p0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    sget-object p0, Lx7b;->a:Lx7b;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    new-array p1, p1, [Lkotlin/Pair;

    .line 33
    .line 34
    const-string v0, "Me_Safety_Security_center_entrance_button_click"

    .line 35
    .line 36
    invoke-virtual {p0, v0, p1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method public static final T(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/opay/team/newhome/me/MeBannerSecurityFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "getContext(...)"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/opay/team/newhome/me/MeBannerSecurityFragment;->R()Lteam/opay/pay/api/MeSecurityRsp;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/api/MeSecurityRsp;->getJumpUrl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    const-string p1, ""

    .line 25
    .line 26
    :cond_1
    invoke-static {p0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    sget-object p0, Lx7b;->a:Lx7b;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    new-array p1, p1, [Lkotlin/Pair;

    .line 33
    .line 34
    const-string v0, "Me_Safety_Security_center_entrance_click"

    .line 35
    .line 36
    invoke-virtual {p0, v0, p1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method public static final U(Lcom/opay/team/newhome/me/MeBannerSecurityFragment;)Lteam/opay/pay/api/MeSecurityRsp;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "key_security_rsp"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lteam/opay/pay/api/MeSecurityRsp;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final R()Lteam/opay/pay/api/MeSecurityRsp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/me/MeBannerSecurityFragment;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/api/MeSecurityRsp;

    .line 8
    .line 9
    return-object v0
.end method

.method public final V(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "DISABLED"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget p1, Lteam/opay/pay/R$drawable;->osdk_ripple_me_security_frozen:I

    .line 10
    .line 11
    sget v0, Lteam/opay/pay/R$color;->black_85:I

    .line 12
    .line 13
    sget v1, Lteam/opay/pay/R$color;->black_65:I

    .line 14
    .line 15
    sget v2, Lteam/opay/pay/R$color;->osdk_color_FF9100:I

    .line 16
    .line 17
    sget v3, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const-string v0, "RECOMMEND"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    sget p1, Lteam/opay/pay/R$drawable;->osdk_ripple_me_security_tips:I

    .line 29
    .line 30
    sget v0, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 31
    .line 32
    sget v3, Lteam/opay/pay/R$color;->color_00B876:I

    .line 33
    .line 34
    :goto_0
    move v1, v0

    .line 35
    move v2, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    sget p1, Lteam/opay/pay/R$drawable;->osdk_ripple_1dce9f_r12:I

    .line 38
    .line 39
    sget v0, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 40
    .line 41
    sget v3, Lteam/opay/pay/R$color;->color_00B876:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :goto_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lyf6;

    .line 49
    .line 50
    iget-object v4, v4, Lyf6;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    .line 52
    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lyf6;

    .line 60
    .line 61
    iget-object p1, p1, Lyf6;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v4, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lyf6;

    .line 79
    .line 80
    iget-object p1, p1, Lyf6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lyf6;

    .line 98
    .line 99
    iget-object p1, p1, Lyf6;->e:Lcom/google/android/material/button/MaterialButton;

    .line 100
    .line 101
    const-string v0, "securityDetect"

    .line 102
    .line 103
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p1, v2}, Lteam/opay/core/android/ViewKt;->n(Lcom/google/android/material/button/MaterialButton;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lyf6;

    .line 114
    .line 115
    iget-object p1, p1, Lyf6;->e:Lcom/google/android/material/button/MaterialButton;

    .line 116
    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    .line 127
    .line 128
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/opay/team/newhome/me/MeBannerSecurityFragment;->R()Lteam/opay/pay/api/MeSecurityRsp;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/api/MeSecurityRsp;->getSecurityStatus()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, p2

    .line 22
    :goto_0
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/me/MeBannerSecurityFragment;->V(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lyf6;

    .line 30
    .line 31
    iget-object p1, p1, Lyf6;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/opay/team/newhome/me/MeBannerSecurityFragment;->R()Lteam/opay/pay/api/MeSecurityRsp;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lteam/opay/pay/api/MeSecurityRsp;->getTitle()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v0, p2

    .line 45
    :goto_1
    const-string v1, ""

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    move-object v0, v1

    .line 50
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lyf6;

    .line 58
    .line 59
    iget-object v2, p1, Lyf6;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 60
    .line 61
    const-string p1, "securityIcon"

    .line 62
    .line 63
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/opay/team/newhome/me/MeBannerSecurityFragment;->R()Lteam/opay/pay/api/MeSecurityRsp;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0}, Lteam/opay/pay/api/MeSecurityRsp;->getIconUrl()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move-object v0, p2

    .line 78
    :goto_2
    if-nez v0, :cond_4

    .line 79
    .line 80
    move-object v3, v1

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    move-object v3, v0

    .line 83
    :goto_3
    const/4 v6, 0x6

    .line 84
    const/4 v7, 0x0

    .line 85
    const/4 v4, 0x0

    .line 86
    const/4 v5, 0x0

    .line 87
    invoke-static/range {v2 .. v7}, Lme7;->f(Landroid/widget/ImageView;Ljava/lang/String;ZIILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lyf6;

    .line 95
    .line 96
    iget-object v0, v0, Lyf6;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 97
    .line 98
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/opay/team/newhome/me/MeBannerSecurityFragment;->R()Lteam/opay/pay/api/MeSecurityRsp;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    invoke-virtual {p1}, Lteam/opay/pay/api/MeSecurityRsp;->getIconUrl()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    goto :goto_4

    .line 112
    :cond_5
    move-object p1, p2

    .line 113
    :goto_4
    const/4 v2, 0x1

    .line 114
    const/4 v3, 0x0

    .line 115
    if-eqz p1, :cond_7

    .line 116
    .line 117
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_6

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_6
    const/4 p1, 0x0

    .line 125
    goto :goto_6

    .line 126
    :cond_7
    :goto_5
    const/4 p1, 0x1

    .line 127
    :goto_6
    xor-int/2addr p1, v2

    .line 128
    invoke-static {v0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Lyf6;

    .line 136
    .line 137
    iget-object p1, p1, Lyf6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/opay/team/newhome/me/MeBannerSecurityFragment;->R()Lteam/opay/pay/api/MeSecurityRsp;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    invoke-virtual {v0}, Lteam/opay/pay/api/MeSecurityRsp;->getDescribe()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    goto :goto_7

    .line 150
    :cond_8
    move-object v0, p2

    .line 151
    :goto_7
    if-nez v0, :cond_9

    .line 152
    .line 153
    move-object v0, v1

    .line 154
    :cond_9
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Lyf6;

    .line 166
    .line 167
    iget-object p1, p1, Lyf6;->e:Lcom/google/android/material/button/MaterialButton;

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/opay/team/newhome/me/MeBannerSecurityFragment;->R()Lteam/opay/pay/api/MeSecurityRsp;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-eqz v0, :cond_a

    .line 174
    .line 175
    invoke-virtual {v0}, Lteam/opay/pay/api/MeSecurityRsp;->getButtonText()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    goto :goto_8

    .line 180
    :cond_a
    move-object v0, p2

    .line 181
    :goto_8
    if-nez v0, :cond_b

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_b
    move-object v1, v0

    .line 185
    :goto_9
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/opay/team/newhome/me/MeBannerSecurityFragment;->R()Lteam/opay/pay/api/MeSecurityRsp;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    if-eqz v0, :cond_c

    .line 193
    .line 194
    invoke-virtual {v0}, Lteam/opay/pay/api/MeSecurityRsp;->getButtonText()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    :cond_c
    if-eqz p2, :cond_e

    .line 199
    .line 200
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    if-nez p2, :cond_d

    .line 205
    .line 206
    goto :goto_a

    .line 207
    :cond_d
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 211
    .line 212
    .line 213
    sget-object p2, Lx7b;->a:Lx7b;

    .line 214
    .line 215
    const-string v0, "Me_Safety_Security_center_entrance_button_show"

    .line 216
    .line 217
    new-array v1, v3, [Lkotlin/Pair;

    .line 218
    .line 219
    invoke-virtual {p2, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 220
    .line 221
    .line 222
    goto :goto_b

    .line 223
    :cond_e
    :goto_a
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 227
    .line 228
    .line 229
    :goto_b
    new-instance p2, Lf29;

    .line 230
    .line 231
    invoke-direct {p2, p1, p0}, Lf29;-><init>(Lcom/google/android/material/button/MaterialButton;Lcom/opay/team/newhome/me/MeBannerSecurityFragment;)V

    .line 232
    .line 233
    .line 234
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Lyf6;

    .line 242
    .line 243
    iget-object p1, p1, Lyf6;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 244
    .line 245
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    new-instance p2, Lg29;

    .line 249
    .line 250
    invoke-direct {p2, p1, p0}, Lg29;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/opay/team/newhome/me/MeBannerSecurityFragment;)V

    .line 251
    .line 252
    .line 253
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 254
    .line 255
    .line 256
    sget-object p1, Lx7b;->a:Lx7b;

    .line 257
    .line 258
    const-string p2, "Me_Safety_Security_center_entrance_show"

    .line 259
    .line 260
    new-array v0, v3, [Lkotlin/Pair;

    .line 261
    .line 262
    invoke-virtual {p1, p2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 263
    .line 264
    .line 265
    return-void
.end method
