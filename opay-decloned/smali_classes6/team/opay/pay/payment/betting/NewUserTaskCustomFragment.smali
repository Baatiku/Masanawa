.class public final Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;
.super Lteam/opay/core/base/BaseInjectFragmentV2;
.source "NewUserTaskCustomFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseInjectFragmentV2<",
        "Lmg6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001b\u0010\u0011\u001a\u00020\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lmg6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/payment/betting/LifeCommonViewModel;",
        "k",
        "Lid8;",
        "Q",
        "()Lteam/opay/pay/payment/betting/LifeCommonViewModel;",
        "viewModel",
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
.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment$1;->INSTANCE:Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseInjectFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;->k:Lid8;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;->S(Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;->R(Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final R(Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;->Q()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lmg6;

    .line 10
    .line 11
    iget-object p0, p0, Lmg6;->b:Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p0, p1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;->Q()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lmg6;

    .line 10
    .line 11
    iget-object p0, p0, Lmg6;->b:Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p0, p1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method public final Q()Lteam/opay/pay/payment/betting/LifeCommonViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 19
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "view"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super/range {p0 .. p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;->Q()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->N()Lteam/opay/pay/payment/betting/NewUserTaskRsp;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/NewUserTaskRsp;->d()Lteam/opay/pay/payment/betting/GuideModuleVo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/GuideModuleVo;->b()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;

    .line 41
    .line 42
    const-wide/16 v4, 0x320

    .line 43
    .line 44
    const/high16 v6, 0x41000000    # 8.0f

    .line 45
    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Lmg6;

    .line 53
    .line 54
    iget-object v8, v7, Lmg6;->b:Landroid/widget/ImageView;

    .line 55
    .line 56
    const-string v7, "ivPicOne"

    .line 57
    .line 58
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;->a()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-static {v6}, Lkmf;->f(F)F

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    float-to-int v10, v10

    .line 70
    const/16 v16, 0x7c

    .line 71
    .line 72
    const/16 v17, 0x0

    .line 73
    .line 74
    const/4 v11, 0x0

    .line 75
    const/4 v12, 0x0

    .line 76
    const/4 v13, 0x0

    .line 77
    const/4 v14, 0x0

    .line 78
    const/4 v15, 0x0

    .line 79
    invoke-static/range {v8 .. v17}, Lkzf;->i(Landroid/widget/ImageView;Ljava/lang/String;IIIZZZILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    check-cast v8, Lmg6;

    .line 87
    .line 88
    iget-object v8, v8, Lmg6;->b:Landroid/widget/ImageView;

    .line 89
    .line 90
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v7, Lmt9;

    .line 94
    .line 95
    invoke-direct {v7, v0, v3}, Lmt9;-><init>(Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v8, v4, v5, v7}, Lfe1;->a(Landroid/view/View;JLkotlin/jvm/functions/Function0;)V

    .line 99
    .line 100
    .line 101
    :cond_0
    const/4 v3, 0x1

    .line 102
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;

    .line 107
    .line 108
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Lmg6;

    .line 113
    .line 114
    iget-object v7, v7, Lmg6;->c:Landroid/widget/ImageView;

    .line 115
    .line 116
    const-string v8, "ivPicTwo"

    .line 117
    .line 118
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    if-eqz v1, :cond_1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    const/4 v3, 0x0

    .line 125
    :goto_0
    if-eqz v3, :cond_2

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    const/16 v2, 0x8

    .line 129
    .line 130
    :goto_1
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    if-eqz v1, :cond_3

    .line 134
    .line 135
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lmg6;

    .line 140
    .line 141
    iget-object v9, v2, Lmg6;->c:Landroid/widget/ImageView;

    .line 142
    .line 143
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;->a()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    invoke-static {v6}, Lkmf;->f(F)F

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    float-to-int v11, v2

    .line 155
    const/16 v17, 0x7c

    .line 156
    .line 157
    const/16 v18, 0x0

    .line 158
    .line 159
    const/4 v12, 0x0

    .line 160
    const/4 v13, 0x0

    .line 161
    const/4 v14, 0x0

    .line 162
    const/4 v15, 0x0

    .line 163
    const/16 v16, 0x0

    .line 164
    .line 165
    invoke-static/range {v9 .. v18}, Lkzf;->i(Landroid/widget/ImageView;Ljava/lang/String;IIIZZZILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Lmg6;

    .line 173
    .line 174
    iget-object v2, v2, Lmg6;->c:Landroid/widget/ImageView;

    .line 175
    .line 176
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    new-instance v3, Lnt9;

    .line 180
    .line 181
    invoke-direct {v3, v0, v1}, Lnt9;-><init>(Lteam/opay/pay/payment/betting/NewUserTaskCustomFragment;Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v2, v4, v5, v3}, Lfe1;->a(Landroid/view/View;JLkotlin/jvm/functions/Function0;)V

    .line 185
    .line 186
    .line 187
    :cond_3
    return-void
.end method
