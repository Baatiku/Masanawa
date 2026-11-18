.class public final Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "AutoInvestPopupFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Lpb6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lpb6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "j",
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
.field public static final j:Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;->j:Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment$Companion;

    .line 8
    .line 9
    const-class v0, Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getSimpleName(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;->k:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment$1;->INSTANCE:Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic M(Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;Landroid/view/View;Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;->P(Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;Landroid/view/View;Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic N(Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;Lteam/opay/core/settings/NoClearStorage;Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;->O(Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;Lteam/opay/core/settings/NoClearStorage;Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final O(Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;Lteam/opay/core/settings/NoClearStorage;Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;->getFrom()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    const-string p3, "aa"

    .line 10
    .line 11
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 p3, 0x0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/core/settings/NoClearStorage;->L()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    add-int/lit8 p0, p0, 0x1

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Lteam/opay/core/settings/NoClearStorage;->q1(I)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lx7b;->a:Lx7b;

    .line 28
    .line 29
    const-string p1, "aa_auto_owealth_pop_close_click"

    .line 30
    .line 31
    new-array p3, p3, [Lkotlin/Pair;

    .line 32
    .line 33
    invoke-virtual {p0, p1, p3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/settings/NoClearStorage;->M()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    add-int/lit8 p0, p0, 0x1

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Lteam/opay/core/settings/NoClearStorage;->r1(I)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lx7b;->a:Lx7b;

    .line 47
    .line 48
    const-string p1, "receive_money_auto_owealth_pop_close_click"

    .line 49
    .line 50
    new-array p3, p3, [Lkotlin/Pair;

    .line 51
    .line 52
    invoke-virtual {p0, p1, p3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-virtual {p2}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static final P(Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;Landroid/view/View;Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;->getFrom()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p3, 0x0

    .line 9
    :goto_0
    const-string v0, "aa"

    .line 10
    .line 11
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    sget-object p3, Lx7b;->a:Lx7b;

    .line 19
    .line 20
    const-string v1, "aa_auto_owealth_pop_view_click"

    .line 21
    .line 22
    new-array v0, v0, [Lkotlin/Pair;

    .line 23
    .line 24
    invoke-virtual {p3, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    sget-object p3, Lx7b;->a:Lx7b;

    .line 29
    .line 30
    const-string v1, "receive_money_auto_owealth_pop_view_click"

    .line 31
    .line 32
    new-array v0, v0, [Lkotlin/Pair;

    .line 33
    .line 34
    invoke-virtual {p3, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    sget-object p3, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 38
    .line 39
    const-class v0, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 40
    .line 41
    invoke-virtual {p3, v0}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    check-cast p3, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 46
    .line 47
    if-eqz p3, :cond_4

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "getContext(...)"

    .line 54
    .line 55
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;->getRedirectUrl()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-nez p0, :cond_3

    .line 65
    .line 66
    :cond_2
    const-string p0, ""

    .line 67
    .line 68
    :cond_3
    const-string v0, "owealth_new_user_experience"

    .line 69
    .line 70
    invoke-interface {p3, p1, p0, v0}, Lteam/opay/swarmfoundation/action/IActionManager;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-virtual {p2}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 74
    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
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
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    new-instance p2, Lteam/opay/core/settings/NoClearStorage;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "getApplicationContext(...)"

    .line 61
    .line 62
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/4 v2, 0x0

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    const-string v3, "key_auto_invest_popup_data"

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    move-object v1, v2

    .line 85
    :goto_0
    if-eqz v1, :cond_4

    .line 86
    .line 87
    invoke-virtual {v1}, Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;->getImageUrl()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    if-nez v3, :cond_5

    .line 92
    .line 93
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 94
    .line 95
    .line 96
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const/4 v4, 0x1

    .line 101
    if-eqz v3, :cond_8

    .line 102
    .line 103
    invoke-static {v3}, Lcom/bumptech/glide/a;->x(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    invoke-virtual {v1}, Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;->getImageUrl()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    if-nez v5, :cond_7

    .line 114
    .line 115
    :cond_6
    const-string v5, ""

    .line 116
    .line 117
    :cond_7
    invoke-virtual {v3, v5}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->c()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Ljpc;

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->j0(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Ljpc;

    .line 132
    .line 133
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Lpb6;

    .line 138
    .line 139
    iget-object v5, v5, Lpb6;->d:Landroid/widget/ImageView;

    .line 140
    .line 141
    invoke-virtual {v3, v5}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 142
    .line 143
    .line 144
    :cond_8
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Lpb6;

    .line 149
    .line 150
    iget-object v3, v3, Lpb6;->c:Landroid/widget/ImageView;

    .line 151
    .line 152
    new-instance v5, Lq80;

    .line 153
    .line 154
    invoke-direct {v5, v1, p2, p0}, Lq80;-><init>(Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;Lteam/opay/core/settings/NoClearStorage;Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    check-cast v3, Lpb6;

    .line 165
    .line 166
    iget-object v3, v3, Lpb6;->d:Landroid/widget/ImageView;

    .line 167
    .line 168
    new-instance v5, Lr80;

    .line 169
    .line 170
    invoke-direct {v5, v1, p1, p0}, Lr80;-><init>(Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;Landroid/view/View;Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    .line 175
    .line 176
    if-eqz v1, :cond_9

    .line 177
    .line 178
    invoke-virtual {v1}, Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;->getFrom()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    :cond_9
    const-string p1, "aa"

    .line 183
    .line 184
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_a

    .line 189
    .line 190
    invoke-virtual {p2}, Lteam/opay/core/settings/NoClearStorage;->g()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    add-int/2addr p1, v4

    .line 195
    invoke-virtual {p2, p1}, Lteam/opay/core/settings/NoClearStorage;->P0(I)V

    .line 196
    .line 197
    .line 198
    sget-object p1, Lteam/opay/pay/util/DataUtil;->a:Lteam/opay/pay/util/DataUtil$Companion;

    .line 199
    .line 200
    invoke-virtual {p1}, Lteam/opay/pay/util/DataUtil$Companion;->a()I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    invoke-virtual {p2, p1}, Lteam/opay/core/settings/NoClearStorage;->Q0(I)V

    .line 205
    .line 206
    .line 207
    sget-object p1, Lx7b;->a:Lx7b;

    .line 208
    .line 209
    const-string p2, "aa_auto_owealth_pop_show"

    .line 210
    .line 211
    new-array v0, v0, [Lkotlin/Pair;

    .line 212
    .line 213
    invoke-virtual {p1, p2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_a
    invoke-virtual {p2}, Lteam/opay/core/settings/NoClearStorage;->s0()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    add-int/2addr p1, v4

    .line 222
    invoke-virtual {p2, p1}, Lteam/opay/core/settings/NoClearStorage;->a2(I)V

    .line 223
    .line 224
    .line 225
    sget-object p1, Lteam/opay/pay/util/DataUtil;->a:Lteam/opay/pay/util/DataUtil$Companion;

    .line 226
    .line 227
    invoke-virtual {p1}, Lteam/opay/pay/util/DataUtil$Companion;->a()I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    invoke-virtual {p2, p1}, Lteam/opay/core/settings/NoClearStorage;->b2(I)V

    .line 232
    .line 233
    .line 234
    sget-object p1, Lx7b;->a:Lx7b;

    .line 235
    .line 236
    const-string p2, "receive_money_auto_owealth_pop_show"

    .line 237
    .line 238
    new-array v0, v0, [Lkotlin/Pair;

    .line 239
    .line 240
    invoke-virtual {p1, p2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 241
    .line 242
    .line 243
    :goto_1
    return-void
.end method
