.class public final Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;
.super Lteam/opay/pay/payment/bill/Hilt_NativeBillPaymentFragment;
.source "NativeBillPaymentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/bill/NativeBillPaymentFragment$Companion;,
        Lteam/opay/pay/payment/bill/NativeBillPaymentFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/payment/bill/Hilt_NativeBillPaymentFragment<",
        "Leg6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u001f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J/\u0010\r\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Leg6;",
        "<init>",
        "()V",
        "",
        "S",
        "",
        "show",
        "",
        "httpCode",
        "",
        "msg",
        "U",
        "(ZLjava/lang/Integer;Ljava/lang/String;)V",
        "Lteam/opay/pay/payment/bill/MoreHomeData;",
        "data",
        "Q",
        "(Lteam/opay/pay/payment/bill/MoreHomeData;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onActivityCreated",
        "(Landroid/os/Bundle;)V",
        "onBackPressed",
        "()Z",
        "Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;",
        "p",
        "Lid8;",
        "R",
        "()Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;",
        "viewModel",
        "q",
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
.field public static final q:Lteam/opay/pay/payment/bill/NativeBillPaymentFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;->q:Lteam/opay/pay/payment/bill/NativeBillPaymentFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment$1;->INSTANCE:Lteam/opay/pay/payment/bill/NativeBillPaymentFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/payment/bill/Hilt_NativeBillPaymentFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;->p:Lid8;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;->T(Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;->W(Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final Q(Lteam/opay/pay/payment/bill/MoreHomeData;)V
    .locals 19

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/payment/bill/MoreHomeData;->getAdNoticeList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v2, v1

    .line 15
    :goto_0
    if-eqz v2, :cond_3

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    new-instance v2, Lteam/opay/pay/payment/bill/MoreItemData;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/payment/bill/MoreHomeData;->getAdNoticeList()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    move-object v7, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move-object v7, v1

    .line 35
    :goto_1
    const/16 v11, 0x76

    .line 36
    .line 37
    const/4 v12, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v9, 0x0

    .line 43
    const/4 v10, 0x0

    .line 44
    move-object v3, v2

    .line 45
    invoke-direct/range {v3 .. v12}, Lteam/opay/pay/payment/bill/MoreItemData;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Lteam/opay/odialog/net/ADListItem;Lteam/opay/pay/payment/bill/MoreMarketingWidget;Lteam/opay/odialog/net/ADListItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 52
    .line 53
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/payment/bill/MoreHomeData;->getAdBannerList()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    goto :goto_3

    .line 58
    :cond_4
    move-object v2, v1

    .line 59
    :goto_3
    if-eqz v2, :cond_7

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    goto :goto_5

    .line 68
    :cond_5
    new-instance v2, Lteam/opay/pay/payment/bill/MoreItemData;

    .line 69
    .line 70
    if-eqz p1, :cond_6

    .line 71
    .line 72
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/payment/bill/MoreHomeData;->getAdBannerList()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    move-object v6, v3

    .line 77
    goto :goto_4

    .line 78
    :cond_6
    move-object v6, v1

    .line 79
    :goto_4
    const/16 v11, 0x7a

    .line 80
    .line 81
    const/4 v12, 0x0

    .line 82
    const/4 v4, 0x1

    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v7, 0x0

    .line 85
    const/4 v8, 0x0

    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v10, 0x0

    .line 88
    move-object v3, v2

    .line 89
    invoke-direct/range {v3 .. v12}, Lteam/opay/pay/payment/bill/MoreItemData;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Lteam/opay/odialog/net/ADListItem;Lteam/opay/pay/payment/bill/MoreMarketingWidget;Lteam/opay/odialog/net/ADListItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_7
    :goto_5
    if-eqz p1, :cond_8

    .line 96
    .line 97
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/payment/bill/MoreHomeData;->getServiceModuleList()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    goto :goto_6

    .line 102
    :cond_8
    move-object v2, v1

    .line 103
    :goto_6
    if-eqz v2, :cond_b

    .line 104
    .line 105
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_9

    .line 110
    .line 111
    goto :goto_8

    .line 112
    :cond_9
    new-instance v2, Lteam/opay/pay/payment/bill/MoreItemData;

    .line 113
    .line 114
    if-eqz p1, :cond_a

    .line 115
    .line 116
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/payment/bill/MoreHomeData;->getServiceModuleList()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    move-object v5, v3

    .line 121
    goto :goto_7

    .line 122
    :cond_a
    move-object v5, v1

    .line 123
    :goto_7
    const/16 v11, 0x7c

    .line 124
    .line 125
    const/4 v12, 0x0

    .line 126
    const/4 v4, 0x2

    .line 127
    const/4 v6, 0x0

    .line 128
    const/4 v7, 0x0

    .line 129
    const/4 v8, 0x0

    .line 130
    const/4 v9, 0x0

    .line 131
    const/4 v10, 0x0

    .line 132
    move-object v3, v2

    .line 133
    invoke-direct/range {v3 .. v12}, Lteam/opay/pay/payment/bill/MoreItemData;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Lteam/opay/odialog/net/ADListItem;Lteam/opay/pay/payment/bill/MoreMarketingWidget;Lteam/opay/odialog/net/ADListItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_b
    :goto_8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_d

    .line 148
    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    move-object v4, v3

    .line 154
    check-cast v4, Lteam/opay/pay/payment/bill/MoreItemData;

    .line 155
    .line 156
    invoke-virtual {v4}, Lteam/opay/pay/payment/bill/MoreItemData;->c()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-nez v4, :cond_c

    .line 161
    .line 162
    goto :goto_9

    .line 163
    :cond_d
    move-object v3, v1

    .line 164
    :goto_9
    check-cast v3, Lteam/opay/pay/payment/bill/MoreItemData;

    .line 165
    .line 166
    if-nez v3, :cond_e

    .line 167
    .line 168
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Leg6;

    .line 173
    .line 174
    iget-object v2, v2, Leg6;->f:Landroidx/legacy/widget/Space;

    .line 175
    .line 176
    const-string v3, "space"

    .line 177
    .line 178
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 182
    .line 183
    .line 184
    :cond_e
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_f

    .line 189
    .line 190
    const/4 v7, 0x2

    .line 191
    const/4 v8, 0x0

    .line 192
    const/4 v4, 0x1

    .line 193
    const/4 v5, 0x0

    .line 194
    const-string v6, "data is empty"

    .line 195
    .line 196
    move-object/from16 v3, p0

    .line 197
    .line 198
    invoke-static/range {v3 .. v8}, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;->V(Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;ZLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_b

    .line 202
    .line 203
    :cond_f
    new-instance v2, Lteam/opay/pay/payment/bill/MoreItemData;

    .line 204
    .line 205
    const/16 v17, 0x7e

    .line 206
    .line 207
    const/16 v18, 0x0

    .line 208
    .line 209
    const/4 v10, 0x3

    .line 210
    const/4 v11, 0x0

    .line 211
    const/4 v12, 0x0

    .line 212
    const/4 v13, 0x0

    .line 213
    const/4 v14, 0x0

    .line 214
    const/4 v15, 0x0

    .line 215
    const/16 v16, 0x0

    .line 216
    .line 217
    move-object v9, v2

    .line 218
    invoke-direct/range {v9 .. v18}, Lteam/opay/pay/payment/bill/MoreItemData;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Lteam/opay/odialog/net/ADListItem;Lteam/opay/pay/payment/bill/MoreMarketingWidget;Lteam/opay/odialog/net/ADListItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 219
    .line 220
    .line 221
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    check-cast v2, Leg6;

    .line 229
    .line 230
    iget-object v2, v2, Leg6;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 231
    .line 232
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 233
    .line 234
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 242
    .line 243
    .line 244
    new-instance v3, Lteam/opay/pay/payment/bill/MoreServiceHomeAdapter;

    .line 245
    .line 246
    invoke-direct {v3}, Lteam/opay/pay/payment/bill/MoreServiceHomeAdapter;-><init>()V

    .line 247
    .line 248
    .line 249
    new-instance v4, Ljava/util/ArrayList;

    .line 250
    .line 251
    const/16 v5, 0xa

    .line 252
    .line 253
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .line 259
    .line 260
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-eqz v5, :cond_10

    .line 269
    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    move-object v8, v5

    .line 275
    check-cast v8, Lteam/opay/pay/payment/bill/MoreItemData;

    .line 276
    .line 277
    new-instance v5, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 278
    .line 279
    invoke-virtual {v8}, Lteam/opay/pay/payment/bill/MoreItemData;->getItemType()I

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    const/16 v15, 0xfc

    .line 284
    .line 285
    const/16 v16, 0x0

    .line 286
    .line 287
    const/4 v9, 0x0

    .line 288
    const/4 v10, 0x0

    .line 289
    const/4 v11, 0x0

    .line 290
    const/4 v12, 0x0

    .line 291
    const/4 v13, 0x0

    .line 292
    const/4 v14, 0x0

    .line 293
    move-object v6, v5

    .line 294
    invoke-direct/range {v6 .. v16}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 295
    .line 296
    .line 297
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    goto :goto_a

    .line 301
    :cond_10
    invoke-virtual {v3, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 305
    .line 306
    .line 307
    new-instance v0, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 308
    .line 309
    const/4 v3, 0x6

    .line 310
    invoke-static {v3}, Lkmf;->g(I)I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    const/4 v4, 0x0

    .line 315
    const/4 v5, 0x2

    .line 316
    invoke-direct {v0, v3, v4, v5, v1}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 320
    .line 321
    .line 322
    const/4 v10, 0x6

    .line 323
    const/4 v11, 0x0

    .line 324
    const/4 v7, 0x0

    .line 325
    const/4 v8, 0x0

    .line 326
    const/4 v9, 0x0

    .line 327
    move-object/from16 v6, p0

    .line 328
    .line 329
    invoke-static/range {v6 .. v11}, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;->V(Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;ZLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    :goto_b
    return-void
.end method

.method private final R()Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final S()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;->R()Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->w()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "getViewLifecycleOwner(...)"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lnj9;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lnj9;-><init>(Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static final T(Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Leg6;

    .line 6
    .line 7
    iget-object v0, v0, Leg6;->e:Lteam/opay/core/android/views/PulseLoaderView;

    .line 8
    .line 9
    const-string v1, "loadView"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ne v3, v2, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_0
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_0
    if-nez v0, :cond_2

    .line 37
    .line 38
    const/4 v0, -0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    sget-object v1, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment$a;->a:[I

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    aget v0, v1, v0

    .line 47
    .line 48
    :goto_1
    if-eq v0, v2, :cond_5

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    if-eq v0, v1, :cond_3

    .line 52
    .line 53
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    const-string p1, ""

    .line 72
    .line 73
    :cond_4
    invoke-direct {p0, v2, v0, p1}, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;->U(ZLjava/lang/Integer;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lteam/opay/pay/payment/bill/MoreHomeData;

    .line 82
    .line 83
    invoke-direct {p0, p1}, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;->Q(Lteam/opay/pay/payment/bill/MoreHomeData;)V

    .line 84
    .line 85
    .line 86
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p0
.end method

.method private final U(ZLjava/lang/Integer;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Leg6;

    .line 6
    .line 7
    iget-object v0, v0, Leg6;->d:Lteam/opay/pay/kyc/view/EmptyView;

    .line 8
    .line 9
    const-string v1, "emptyView"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Leg6;

    .line 24
    .line 25
    iget-object v0, p1, Leg6;->d:Lteam/opay/pay/kyc/view/EmptyView;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p2, p1}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez p3, :cond_0

    .line 43
    .line 44
    const-string p3, ""

    .line 45
    .line 46
    :cond_0
    move-object v2, p3

    .line 47
    new-instance v7, Loj9;

    .line 48
    .line 49
    invoke-direct {v7, p0}, Loj9;-><init>(Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;)V

    .line 50
    .line 51
    .line 52
    const/16 v8, 0x3c

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    const/4 v6, 0x0

    .line 59
    invoke-static/range {v0 .. v9}, Lteam/opay/pay/kyc/view/EmptyView;->j(Lteam/opay/pay/kyc/view/EmptyView;ILjava/lang/String;ILjava/lang/String;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public static synthetic V(Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;ZLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;->U(ZLjava/lang/Integer;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final W(Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;->S()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/payment/bill/NativeBillPaymentFragment;->S()V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lx7b;->a:Lx7b;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Lkotlin/Pair;

    .line 11
    .line 12
    const-string v1, "paybill_page_show"

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "paybill_paybill_back_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lteam/opay/core/base/BaseFragment;->onBackPressed()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method
