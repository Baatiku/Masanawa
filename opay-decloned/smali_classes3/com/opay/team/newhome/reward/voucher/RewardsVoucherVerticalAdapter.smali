.class public final Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "RewardsVoucherVerticalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/opay/team/newhome/reward/voucher/VoucherVerticalItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\'\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R0\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lcom/opay/team/newhome/reward/voucher/VoucherVerticalItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "",
        "halfCircleColor",
        "<init>",
        "(I)V",
        "helper",
        "item",
        "",
        "o",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/voucher/VoucherVerticalItem;)V",
        "Lcom/opay/team/newhome/reward/GetVoucherItem;",
        "m",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/GetVoucherItem;)V",
        "",
        "Lcom/opay/team/newhome/reward/GetVoucherBanner;",
        "bannerList",
        "l",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/util/List;)V",
        "a",
        "I",
        "Lkotlin/Function1;",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "getOnVoucherButtonClick",
        "()Lkotlin/jvm/functions/Function1;",
        "p",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onVoucherButtonClick",
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
.field public final a:I

.field public b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/GetVoucherItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    iput p1, p0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;->a:I

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    sget v0, Lteam/opay/pay/R$layout;->osdk_item_rewards_voucher_vertical_banner:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    sget v0, Lteam/opay/pay/R$layout;->osdk_item_rewards_voucher_vertical_voucher:I

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic k(Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;Lcom/opay/team/newhome/reward/GetVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;->n(Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;Lcom/opay/team/newhome/reward/GetVoucherItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final n(Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;Lcom/opay/team/newhome/reward/GetVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/reward/voucher/VoucherVerticalItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;->o(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/voucher/VoucherVerticalItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final l(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/GetVoucherBanner;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget v0, Lteam/opay/pay/R$id;->voucherBanner:I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lteam/opay/pay/widget/LoopViewPager;

    .line 11
    .line 12
    sget v0, Lteam/opay/odialog/R$id;->loop_viewPager:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 30
    .line 31
    const-string v1, "4:1"

    .line 32
    .line 33
    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Lteam/opay/pay/widget/LoopViewPager;->setAutoLoop(Z)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v0, 0xbb8

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Lteam/opay/pay/widget/LoopViewPager;->setScrollInterval(J)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherBigBannerHold;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "getContext(...)"

    .line 51
    .line 52
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherBigBannerHold;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lteam/opay/pay/widget/LoopViewPager;->setViewHolder(Ltzf;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lteam/opay/pay/widget/LoopViewPager;->g(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final m(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/GetVoucherItem;)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    sget v1, Lteam/opay/pay/R$id;->dividerLineTop:I

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget v2, p0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;->a:I

    .line 17
    .line 18
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->t(Landroid/widget/ImageView;I)V

    .line 19
    .line 20
    .line 21
    sget v1, Lteam/opay/pay/R$id;->dividerLineBottom:I

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget v2, p0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;->a:I

    .line 33
    .line 34
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->t(Landroid/widget/ImageView;I)V

    .line 35
    .line 36
    .line 37
    sget v1, Lteam/opay/pay/R$id;->voucherDesc:I

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getVoucherName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, ""

    .line 50
    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    move-object v2, v3

    .line 54
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    sget v1, Lteam/opay/pay/R$id;->voucherAmount:I

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getDiscountedAmount()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    move-object v2, v3

    .line 72
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    sget v1, Lteam/opay/pay/R$id;->voucherButton:I

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getCouponStatus()Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-nez v2, :cond_3

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ne v4, v0, :cond_4

    .line 95
    .line 96
    sget v2, Lteam/opay/pay/R$drawable;->osdk_rewards_tag_use_bg_r_24:I

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    sget v4, Lteam/opay/pay/R$string;->omain_use:I

    .line 106
    .line 107
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    :goto_0
    if-nez v2, :cond_5

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_6

    .line 120
    .line 121
    sget v2, Lteam/opay/pay/R$drawable;->osdk_rewards_tag_bg_r24:I

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    sget v4, Lteam/opay/pay/R$string;->voucher_get:I

    .line 131
    .line 132
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    goto :goto_2

    .line 137
    :cond_6
    :goto_1
    move-object v2, v3

    .line 138
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    new-instance v2, Lozc;

    .line 145
    .line 146
    invoke-direct {v2, p0, p2}, Lozc;-><init>(Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;Lcom/opay/team/newhome/reward/GetVoucherItem;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v1, v2}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 150
    .line 151
    .line 152
    sget v1, Lteam/opay/pay/R$id;->processGroup:I

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Landroidx/constraintlayout/widget/Group;

    .line 159
    .line 160
    sget v2, Lteam/opay/pay/R$id;->toUseText:I

    .line 161
    .line 162
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 167
    .line 168
    sget v4, Lteam/opay/pay/R$id;->processLine:I

    .line 169
    .line 170
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    move-object v5, v4

    .line 175
    check-cast v5, Lcom/opay/team/newhome/reward/SimpleProcessLineView;

    .line 176
    .line 177
    sget v4, Lteam/opay/pay/R$id;->processEndText:I

    .line 178
    .line 179
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 184
    .line 185
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getShowProgressOrSill()Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    if-nez v6, :cond_7

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    const/4 v8, 0x2

    .line 197
    if-ne v7, v8, :cond_9

    .line 198
    .line 199
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getSill()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    if-nez p1, :cond_8

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_8
    move-object v3, p1

    .line 219
    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_9
    :goto_4
    if-nez v6, :cond_a

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-ne v3, v0, :cond_d

    .line 231
    .line 232
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v2}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getProgress()Ljava/lang/Float;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    const/4 v2, 0x0

    .line 249
    if-eqz v1, :cond_b

    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    goto :goto_5

    .line 256
    :cond_b
    const/4 v1, 0x0

    .line 257
    :goto_5
    const/16 v3, 0x64

    .line 258
    .line 259
    int-to-float v3, v3

    .line 260
    mul-float v1, v1, v3

    .line 261
    .line 262
    float-to-int v6, v1

    .line 263
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 264
    .line 265
    sget v7, Lteam/opay/pay/R$color;->osdk_rewards_vertical_process_total:I

    .line 266
    .line 267
    invoke-static {v1, v7}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 268
    .line 269
    .line 270
    move-result v10

    .line 271
    const/16 v11, 0xc

    .line 272
    .line 273
    const/4 v12, 0x0

    .line 274
    const/16 v7, 0x64

    .line 275
    .line 276
    const/4 v8, 0x0

    .line 277
    const/4 v9, 0x0

    .line 278
    invoke-static/range {v5 .. v12}, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->b(Lcom/opay/team/newhome/reward/SimpleProcessLineView;IIIIIILjava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 282
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    sget v1, Lteam/opay/pay/R$string;->osdk_voucher_claimed:I

    .line 288
    .line 289
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getProgress()Ljava/lang/Float;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    if-eqz p2, :cond_c

    .line 294
    .line 295
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    :cond_c
    mul-float v2, v2, v3

    .line 300
    .line 301
    float-to-int p2, v2

    .line 302
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    new-array v0, v0, [Ljava/lang/Object;

    .line 307
    .line 308
    const/4 v2, 0x0

    .line 309
    aput-object p2, v0, v2

    .line 310
    .line 311
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    .line 317
    .line 318
    goto :goto_7

    .line 319
    :cond_d
    :goto_6
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 320
    .line 321
    .line 322
    :goto_7
    return-void
.end method

.method public o(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/voucher/VoucherVerticalItem;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/voucher/VoucherVerticalItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/voucher/VoucherVerticalItem;->a()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/voucher/VoucherVerticalItem;->c()Lcom/opay/team/newhome/reward/GetVoucherItem;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;->m(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/GetVoucherItem;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/voucher/VoucherVerticalItem;->b()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;->l(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final p(Lkotlin/jvm/functions/Function1;)V
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
            "Lcom/opay/team/newhome/reward/GetVoucherItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
