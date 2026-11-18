.class public final Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "GetVoucherSuccessDialogV2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Lih3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 !2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR0\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lih3;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/api/QueryVoucherItem;",
        "j",
        "Lkotlin/jvm/functions/Function1;",
        "getUseClickCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "Q",
        "(Lkotlin/jvm/functions/Function1;)V",
        "useClickCallback",
        "",
        "k",
        "Z",
        "J",
        "()Z",
        "setSupportCancelable",
        "(Z)V",
        "supportCancelable",
        "Ljava/text/DecimalFormat;",
        "l",
        "Ljava/text/DecimalFormat;",
        "decimalFormat",
        "m",
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
.field public static final m:Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public j:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Z

.field public final l:Ljava/text/DecimalFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;->m:Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2$1;->INSTANCE:Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;->k:Z

    .line 8
    .line 9
    new-instance v0, Ljava/text/DecimalFormat;

    .line 10
    .line 11
    const-string v1, "0.##"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;->l:Ljava/text/DecimalFormat;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic M(Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;->O(Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;->P(Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final O(Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;->j:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final P(Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Q(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;->j:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
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
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "view"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lteam/opay/core/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "key_data"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "null cannot be cast to non-null type team.opay.pay.api.QueryVoucherItem"

    .line 22
    .line 23
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast p1, Lteam/opay/pay/api/QueryVoucherItem;

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Lih3;

    .line 33
    .line 34
    iget-object p2, p2, Lih3;->j:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/pay/api/QueryVoucherItem;->getDiscountedAmount()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Lih3;

    .line 48
    .line 49
    iget-object p2, p2, Lih3;->j:Landroid/widget/TextView;

    .line 50
    .line 51
    sget-object v2, Lteam/opay/pay/coupon/OpayVoucherView;->i:Lteam/opay/pay/coupon/OpayVoucherView$Companion;

    .line 52
    .line 53
    invoke-virtual {p1}, Lteam/opay/pay/api/QueryVoucherItem;->getDiscountedAmount()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-nez v3, :cond_0

    .line 58
    .line 59
    const-string v3, ""

    .line 60
    .line 61
    :cond_0
    const/16 v4, 0xe

    .line 62
    .line 63
    invoke-virtual {v2, v3, v4, v1}, Lteam/opay/pay/coupon/OpayVoucherView$Companion;->a(Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Lih3;

    .line 75
    .line 76
    iget-object p2, p2, Lih3;->k:Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-virtual {p1}, Lteam/opay/pay/api/QueryVoucherItem;->getVoucherName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Lih3;

    .line 90
    .line 91
    iget-object p2, p2, Lih3;->l:Landroid/widget/TextView;

    .line 92
    .line 93
    sget v2, Lteam/opay/pay/R$string;->valid_time:I

    .line 94
    .line 95
    new-instance v3, Ljava/util/Date;

    .line 96
    .line 97
    invoke-virtual {p1}, Lteam/opay/pay/api/QueryVoucherItem;->getEndTime()Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    if-eqz v4, :cond_1

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 104
    .line 105
    .line 106
    move-result-wide v4

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const-wide/16 v4, 0x0

    .line 109
    .line 110
    :goto_0
    const/16 v6, 0x3e8

    .line 111
    .line 112
    int-to-long v6, v6

    .line 113
    mul-long v4, v4, v6

    .line 114
    .line 115
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 116
    .line 117
    .line 118
    invoke-static {v3}, Lg33;->d(Ljava/util/Date;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    new-array v4, v1, [Ljava/lang/Object;

    .line 123
    .line 124
    aput-object v3, v4, v0

    .line 125
    .line 126
    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lteam/opay/pay/api/QueryVoucherItem;->getPayAmount()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    const/4 v2, 0x0

    .line 138
    if-eqz p2, :cond_2

    .line 139
    .line 140
    invoke-static {p2}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;)Ljava/lang/Float;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-eqz p2, :cond_2

    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    goto :goto_1

    .line 151
    :cond_2
    const/4 p2, 0x0

    .line 152
    :goto_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Lih3;

    .line 157
    .line 158
    iget-object v3, v3, Lih3;->h:Landroid/widget/TextView;

    .line 159
    .line 160
    const-string v4, "startAmount"

    .line 161
    .line 162
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    cmpg-float v2, p2, v2

    .line 166
    .line 167
    if-nez v2, :cond_3

    .line 168
    .line 169
    const/4 v2, 0x1

    .line 170
    goto :goto_2

    .line 171
    :cond_3
    const/4 v2, 0x0

    .line 172
    :goto_2
    xor-int/2addr v2, v1

    .line 173
    invoke-static {v3, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Lih3;

    .line 181
    .line 182
    iget-object v2, v2, Lih3;->h:Landroid/widget/TextView;

    .line 183
    .line 184
    sget v3, Lteam/opay/pay/R$string;->osdk_voucher_amount_tips:I

    .line 185
    .line 186
    iget-object v4, p0, Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;->l:Ljava/text/DecimalFormat;

    .line 187
    .line 188
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-virtual {v4, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    new-array v1, v1, [Ljava/lang/Object;

    .line 197
    .line 198
    aput-object p2, v1, v0

    .line 199
    .line 200
    invoke-static {v3, v1}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    check-cast p2, Lih3;

    .line 212
    .line 213
    iget-object p2, p2, Lih3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 214
    .line 215
    const-string v0, "btnUse"

    .line 216
    .line 217
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    new-instance v0, Lip6;

    .line 221
    .line 222
    invoke-direct {v0, p0, p1}, Lip6;-><init>(Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;Lteam/opay/pay/api/QueryVoucherItem;)V

    .line 223
    .line 224
    .line 225
    invoke-static {p2, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    check-cast p1, Lih3;

    .line 233
    .line 234
    iget-object p1, p1, Lih3;->c:Landroid/widget/ImageView;

    .line 235
    .line 236
    const-string p2, "close"

    .line 237
    .line 238
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    new-instance p2, Ljp6;

    .line 242
    .line 243
    invoke-direct {p2, p0}, Ljp6;-><init>(Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;)V

    .line 244
    .line 245
    .line 246
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 247
    .line 248
    .line 249
    return-void
.end method
