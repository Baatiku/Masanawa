.class public final Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog;
.super Lcom/opay/team/newhome/reward/flash/Hilt_FlashSaleRuleDialog;
.source "FlashSaleRuleDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/opay/team/newhome/reward/flash/Hilt_FlashSaleRuleDialog<",
        "Lhxa;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lhxa;",
        "<init>",
        "()V",
        "",
        "initView",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lcom/opay/team/newhome/reward/RewardsNewViewModel;",
        "o",
        "Lid8;",
        "N",
        "()Lcom/opay/team/newhome/reward/RewardsNewViewModel;",
        "rewardsViewModel",
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
.field public static final p:Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog$Companion;
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
    new-instance v0, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog;->p:Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog$1;->INSTANCE:Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/opay/team/newhome/reward/flash/Hilt_FlashSaleRuleDialog;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog;->o:Lid8;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic M(Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog;->O(Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final N()Lcom/opay/team/newhome/reward/RewardsNewViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final O(Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog;)Lkotlin/Unit;
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

.method private final initView()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lhxa;

    .line 6
    .line 7
    iget-object v0, v0, Lhxa;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    sget-object v1, Ltuc;->a:Ltuc;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "requireContext(...)"

    .line 16
    .line 17
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog;->N()Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->g0()Lcom/opay/team/newhome/reward/FixedResources;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v1, v2, v4}, Ltuc;->d(Landroid/content/Context;Lcom/opay/team/newhome/reward/FixedResources;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lhxa;

    .line 40
    .line 41
    iget-object v0, v0, Lhxa;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v2, "1. "

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    new-instance v2, Landroid/text/SpannableString;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog;->N()Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->g0()Lcom/opay/team/newhome/reward/FixedResources;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v1, v4, v5}, Ltuc;->c(Landroid/content/Context;Lcom/opay/team/newhome/reward/FixedResources;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    new-instance v4, Landroid/text/style/LeadingMarginSpan$Standard;

    .line 78
    .line 79
    float-to-int v0, v0

    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-direct {v4, v5, v0}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const/16 v6, 0x12

    .line 89
    .line 90
    invoke-virtual {v2, v4, v5, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lhxa;

    .line 98
    .line 99
    iget-object v0, v0, Lhxa;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lhxa;

    .line 109
    .line 110
    iget-object v0, v0, Lhxa;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lhxa;

    .line 124
    .line 125
    iget-object v0, v0, Lhxa;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog;->N()Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v3}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->g0()Lcom/opay/team/newhome/reward/FixedResources;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v1, v2, v3}, Ltuc;->b(Landroid/content/Context;Lcom/opay/team/newhome/reward/FixedResources;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Lhxa;

    .line 158
    .line 159
    iget-object v0, v0, Lhxa;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 160
    .line 161
    const-string v1, "promotionClose"

    .line 162
    .line 163
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance v1, Lg56;

    .line 167
    .line 168
    invoke-direct {v1, p0}, Lg56;-><init>(Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v1}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method


# virtual methods
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
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/flash/FlashSaleRuleDialog;->initView()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
