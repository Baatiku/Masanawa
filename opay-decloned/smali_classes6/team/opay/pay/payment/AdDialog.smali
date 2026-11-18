.class public final Lteam/opay/pay/payment/AdDialog;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "AdDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/AdDialog$Companion;,
        Lteam/opay/pay/payment/AdDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Lah6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/payment/AdDialog;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lah6;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/cashier/result/ResultAd;",
        "j",
        "Lteam/opay/pay/cashier/result/ResultAd;",
        "adInfo",
        "k",
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
.field public static final k:Lteam/opay/pay/payment/AdDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public j:Lteam/opay/pay/cashier/result/ResultAd;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/AdDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/AdDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/AdDialog;->k:Lteam/opay/pay/payment/AdDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/payment/AdDialog$1;->INSTANCE:Lteam/opay/pay/payment/AdDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic M(Lteam/opay/pay/payment/AdDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/AdDialog;->T(Lteam/opay/pay/payment/AdDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/pay/payment/AdDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/AdDialog;->S(Lteam/opay/pay/payment/AdDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Lteam/opay/pay/payment/AdDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/AdDialog;->R(Lteam/opay/pay/payment/AdDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/cashier/result/ResultAd;Lteam/opay/pay/payment/AdDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/AdDialog;->Q(Lteam/opay/pay/cashier/result/ResultAd;Lteam/opay/pay/payment/AdDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Q(Lteam/opay/pay/cashier/result/ResultAd;Lteam/opay/pay/payment/AdDialog;)Lkotlin/Unit;
    .locals 7

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/ResultAd;->getAdType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v6, ""

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    move-object v2, v6

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v2, v1

    .line 14
    :goto_0
    const/4 v4, 0x4

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    move-object v1, p0

    .line 18
    invoke-static/range {v0 .. v5}, Lx7b;->z(Lx7b;Lteam/opay/pay/cashier/result/ResultAd;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "requireContext(...)"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/ResultAd;->getJumpAddress()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v6, p0

    .line 38
    :goto_1
    invoke-static {v0, v6}, Lkmf;->H(Landroid/content/Context;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method

.method public static final R(Lteam/opay/pay/payment/AdDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/payment/AdDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/payment/AdDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/core/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "key_data"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lteam/opay/pay/cashier/result/ResultAd;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/payment/AdDialog;->j:Lteam/opay/pay/cashier/result/ResultAd;

    .line 21
    .line 22
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
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
    iget-object v2, p0, Lteam/opay/pay/payment/AdDialog;->j:Lteam/opay/pay/cashier/result/ResultAd;

    .line 10
    .line 11
    if-eqz v2, :cond_6

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lah6;

    .line 18
    .line 19
    iget-object v3, p1, Lah6;->b:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 20
    .line 21
    invoke-virtual {v2}, Lteam/opay/pay/cashier/result/ResultAd;->getImageUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, ""

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    move-object v4, p2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v4, p1

    .line 32
    :goto_0
    const/16 p1, 0xc

    .line 33
    .line 34
    invoke-static {p1}, Ljmf;->d(I)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const/16 v10, 0x1a

    .line 39
    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v9, 0x1

    .line 45
    invoke-static/range {v3 .. v11}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lah6;

    .line 53
    .line 54
    iget-object p1, p1, Lah6;->b:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 55
    .line 56
    const-string v0, "adImage"

    .line 57
    .line 58
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lch;

    .line 62
    .line 63
    invoke-direct {v0, v2, p0}, Lch;-><init>(Lteam/opay/pay/cashier/result/ResultAd;Lteam/opay/pay/payment/AdDialog;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lteam/opay/pay/cashier/result/ResultAd;->getCloseIconPosition()Lteam/opay/odialog/DialogClosePosition;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-nez p1, :cond_1

    .line 74
    .line 75
    const/4 p1, -0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    sget-object v0, Lteam/opay/pay/payment/AdDialog$a;->a:[I

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    aget p1, v0, p1

    .line 84
    .line 85
    :goto_1
    const/4 v0, 0x1

    .line 86
    const-string v1, "icCloseInner"

    .line 87
    .line 88
    const-string v3, "icClose"

    .line 89
    .line 90
    const-string v4, "icCloseTop"

    .line 91
    .line 92
    if-eq p1, v0, :cond_4

    .line 93
    .line 94
    const/4 v0, 0x2

    .line 95
    if-eq p1, v0, :cond_3

    .line 96
    .line 97
    const/4 v0, 0x3

    .line 98
    if-eq p1, v0, :cond_2

    .line 99
    .line 100
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lah6;

    .line 109
    .line 110
    iget-object p1, p1, Lah6;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 111
    .line 112
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lah6;

    .line 124
    .line 125
    iget-object p1, p1, Lah6;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 126
    .line 127
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_4
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Lah6;

    .line 139
    .line 140
    iget-object p1, p1, Lah6;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 141
    .line 142
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 146
    .line 147
    .line 148
    :goto_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Lah6;

    .line 153
    .line 154
    iget-object p1, p1, Lah6;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 155
    .line 156
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Ldh;

    .line 160
    .line 161
    invoke-direct {v0, p0}, Ldh;-><init>(Lteam/opay/pay/payment/AdDialog;)V

    .line 162
    .line 163
    .line 164
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Lah6;

    .line 172
    .line 173
    iget-object p1, p1, Lah6;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 174
    .line 175
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    new-instance v0, Leh;

    .line 179
    .line 180
    invoke-direct {v0, p0}, Leh;-><init>(Lteam/opay/pay/payment/AdDialog;)V

    .line 181
    .line 182
    .line 183
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Lah6;

    .line 191
    .line 192
    iget-object p1, p1, Lah6;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 193
    .line 194
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    new-instance v0, Lfh;

    .line 198
    .line 199
    invoke-direct {v0, p0}, Lfh;-><init>(Lteam/opay/pay/payment/AdDialog;)V

    .line 200
    .line 201
    .line 202
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 203
    .line 204
    .line 205
    sget-object v1, Lx7b;->a:Lx7b;

    .line 206
    .line 207
    invoke-virtual {v2}, Lteam/opay/pay/cashier/result/ResultAd;->getAdType()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    if-nez p1, :cond_5

    .line 212
    .line 213
    move-object v3, p2

    .line 214
    goto :goto_3

    .line 215
    :cond_5
    move-object v3, p1

    .line 216
    :goto_3
    const/4 v5, 0x4

    .line 217
    const/4 v6, 0x0

    .line 218
    const/4 v4, 0x0

    .line 219
    invoke-static/range {v1 .. v6}, Lx7b;->H(Lx7b;Lteam/opay/pay/cashier/result/ResultAd;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 228
    .line 229
    .line 230
    :goto_4
    return-void
.end method
