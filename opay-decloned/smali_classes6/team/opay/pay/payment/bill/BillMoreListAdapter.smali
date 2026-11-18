.class public final Lteam/opay/pay/payment/bill/BillMoreListAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "BillMoreListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
        "Lteam/opay/pay/payment/bill/MoreServiceListData;",
        ">;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u000f\u0018\u00002\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001B%\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ%\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00042\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\n\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/payment/bill/BillMoreListAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;",
        "Lteam/opay/pay/payment/bill/MoreServiceListData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "",
        "list",
        "",
        "normalTopNum",
        "Lag8;",
        "lifecycleOwner",
        "<init>",
        "(Ljava/util/List;ILag8;)V",
        "helper",
        "data",
        "",
        "k",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V",
        "a",
        "Ljava/util/List;",
        "getList",
        "()Ljava/util/List;",
        "b",
        "I",
        "getNormalTopNum",
        "()I",
        "c",
        "Lag8;",
        "getLifecycleOwner",
        "()Lag8;",
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
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceListData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I

.field public final c:Lag8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ILag8;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceListData;",
            ">;I",
            "Lag8;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreListAdapter;->a:Ljava/util/List;

    .line 16
    .line 17
    iput p2, p0, Lteam/opay/pay/payment/bill/BillMoreListAdapter;->b:I

    .line 18
    .line 19
    iput-object p3, p0, Lteam/opay/pay/payment/bill/BillMoreListAdapter;->c:Lag8;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    sget p2, Lteam/opay/pay/R$layout;->item_bill_more_hot_list_layout:I

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    sget p2, Lteam/opay/pay/R$layout;->item_bill_more_list_layout:I

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x2

    .line 34
    sget p2, Lteam/opay/pay/R$layout;->item_more_payment_space:I

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 37
    .line 38
    .line 39
    sget p1, Lteam/opay/pay/R$layout;->item_bill_more_new_list_layout:I

    .line 40
    .line 41
    const/4 p2, 0x3

    .line 42
    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 43
    .line 44
    .line 45
    const/4 p2, 0x5

    .line 46
    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x4

    .line 50
    sget p2, Lteam/opay/pay/R$layout;->item_more_payment_normal_top:I

    .line 51
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/bill/BillMoreListAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V
    .locals 10
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
            "Lteam/opay/pay/payment/bill/MoreServiceListData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getItem()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v2, "getView(...)"

    .line 27
    .line 28
    const-string v3, ""

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    if-eqz v1, :cond_12

    .line 34
    .line 35
    const/4 v7, 0x4

    .line 36
    if-eq v1, v4, :cond_a

    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    if-eq v1, v4, :cond_7

    .line 40
    .line 41
    const/4 v4, 0x5

    .line 42
    if-eq v1, v4, :cond_1

    .line 43
    .line 44
    goto/16 :goto_d

    .line 45
    .line 46
    :cond_1
    sget v1, Lteam/opay/pay/R$id;->tv_new_title:I

    .line 47
    .line 48
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getModule()Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-virtual {v4}, Lteam/opay/pay/payment/bill/MoreServiceTitleData;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object v4, v6

    .line 60
    :goto_0
    if-nez v4, :cond_3

    .line 61
    .line 62
    move-object v4, v3

    .line 63
    :cond_3
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 64
    .line 65
    .line 66
    sget v1, Lteam/opay/pay/R$id;->more_new_service_list:I

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    new-instance v8, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {v8, v0, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    new-instance v4, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 93
    .line 94
    invoke-static {v7}, Ljmf;->d(I)I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    invoke-direct {v4, v8, v7}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(II)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 109
    .line 110
    new-instance v4, Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;

    .line 111
    .line 112
    iget-object v7, p0, Lteam/opay/pay/payment/bill/BillMoreListAdapter;->c:Lag8;

    .line 113
    .line 114
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getModule()Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    if-eqz v8, :cond_4

    .line 119
    .line 120
    invoke-virtual {v8}, Lteam/opay/pay/payment/bill/MoreServiceTitleData;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    :cond_4
    if-nez v6, :cond_5

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    move-object v3, v6

    .line 128
    :goto_1
    invoke-direct {v4, v7, v3}, Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;-><init>(Lag8;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getData()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v4, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 142
    .line 143
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Lteam/opay/pay/payment/bill/BillMoreItemReporter;

    .line 147
    .line 148
    const-string v3, "Opay_show_more_recent_iconshow"

    .line 149
    .line 150
    invoke-direct {v0, v3}, Lteam/opay/pay/payment/bill/BillMoreItemReporter;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    .line 162
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getData()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    if-nez p2, :cond_6

    .line 167
    .line 168
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    :cond_6
    iget-object v1, p0, Lteam/opay/pay/payment/bill/BillMoreListAdapter;->c:Lag8;

    .line 173
    .line 174
    invoke-virtual {v0, p1, p2, v1}, Lteam/opay/pay/payment/bill/BillMoreItemReporter;->g(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lag8;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_d

    .line 178
    .line 179
    :cond_7
    sget v1, Lteam/opay/pay/R$id;->tv_new_title:I

    .line 180
    .line 181
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getModule()Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    if-eqz v2, :cond_8

    .line 186
    .line 187
    invoke-virtual {v2}, Lteam/opay/pay/payment/bill/MoreServiceTitleData;->getName()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    :cond_8
    if-nez v6, :cond_9

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_9
    move-object v3, v6

    .line 195
    :goto_2
    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 196
    .line 197
    .line 198
    sget v1, Lteam/opay/pay/R$id;->more_new_service_list:I

    .line 199
    .line 200
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 205
    .line 206
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 207
    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-direct {v3, v0, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 223
    .line 224
    new-instance v2, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 225
    .line 226
    invoke-static {v7}, Ljmf;->d(I)I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    invoke-direct {v2, v3, v7}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(II)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 241
    .line 242
    new-instance v0, Lteam/opay/pay/payment/bill/BillMoreNewItemAdapter;

    .line 243
    .line 244
    iget-object v1, p0, Lteam/opay/pay/payment/bill/BillMoreListAdapter;->c:Lag8;

    .line 245
    .line 246
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/bill/BillMoreNewItemAdapter;-><init>(Lag8;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getData()Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_d

    .line 260
    .line 261
    :cond_a
    sget v1, Lteam/opay/pay/R$id;->more_line:I

    .line 262
    .line 263
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    iget-object v9, p0, Lteam/opay/pay/payment/bill/BillMoreListAdapter;->a:Ljava/util/List;

    .line 268
    .line 269
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 270
    .line 271
    .line 272
    move-result v9

    .line 273
    sub-int/2addr v9, v4

    .line 274
    if-eq v8, v9, :cond_b

    .line 275
    .line 276
    const/4 v8, 0x1

    .line 277
    goto :goto_3

    .line 278
    :cond_b
    const/4 v8, 0x0

    .line 279
    :goto_3
    invoke-virtual {p1, v1, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 280
    .line 281
    .line 282
    sget v1, Lteam/opay/pay/R$id;->more_top_space:I

    .line 283
    .line 284
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    iget v9, p0, Lteam/opay/pay/payment/bill/BillMoreListAdapter;->b:I

    .line 289
    .line 290
    if-eq v8, v9, :cond_c

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_c
    const/4 v4, 0x0

    .line 294
    :goto_4
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 295
    .line 296
    .line 297
    sget v1, Lteam/opay/pay/R$id;->tv_title:I

    .line 298
    .line 299
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getModule()Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    if-eqz v4, :cond_d

    .line 304
    .line 305
    invoke-virtual {v4}, Lteam/opay/pay/payment/bill/MoreServiceTitleData;->getName()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    goto :goto_5

    .line 310
    :cond_d
    move-object v4, v6

    .line 311
    :goto_5
    if-nez v4, :cond_e

    .line 312
    .line 313
    move-object v4, v3

    .line 314
    :cond_e
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 315
    .line 316
    .line 317
    sget v1, Lteam/opay/pay/R$id;->more_service_list:I

    .line 318
    .line 319
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 324
    .line 325
    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 326
    .line 327
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-direct {v5, v0, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 342
    .line 343
    new-instance v4, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 344
    .line 345
    invoke-static {v7}, Ljmf;->d(I)I

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    invoke-direct {v4, v5, v7}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(II)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 360
    .line 361
    new-instance v4, Lteam/opay/pay/payment/bill/BillMoreItemAdapter;

    .line 362
    .line 363
    iget-object v5, p0, Lteam/opay/pay/payment/bill/BillMoreListAdapter;->c:Lag8;

    .line 364
    .line 365
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getModule()Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 366
    .line 367
    .line 368
    move-result-object v7

    .line 369
    if-eqz v7, :cond_f

    .line 370
    .line 371
    invoke-virtual {v7}, Lteam/opay/pay/payment/bill/MoreServiceTitleData;->getName()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    :cond_f
    if-nez v6, :cond_10

    .line 376
    .line 377
    goto :goto_6

    .line 378
    :cond_10
    move-object v3, v6

    .line 379
    :goto_6
    invoke-direct {v4, v5, v3}, Lteam/opay/pay/payment/bill/BillMoreItemAdapter;-><init>(Lag8;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getData()Ljava/util/List;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    invoke-virtual {v4, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 390
    .line 391
    .line 392
    new-instance v0, Lteam/opay/pay/payment/bill/BillMoreItemReporter;

    .line 393
    .line 394
    const-string v3, "Opay_show_more_iconshow"

    .line 395
    .line 396
    invoke-direct {v0, v3}, Lteam/opay/pay/payment/bill/BillMoreItemReporter;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 407
    .line 408
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getData()Ljava/util/List;

    .line 409
    .line 410
    .line 411
    move-result-object p2

    .line 412
    if-nez p2, :cond_11

    .line 413
    .line 414
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 415
    .line 416
    .line 417
    move-result-object p2

    .line 418
    :cond_11
    iget-object v1, p0, Lteam/opay/pay/payment/bill/BillMoreListAdapter;->c:Lag8;

    .line 419
    .line 420
    invoke-virtual {v0, p1, p2, v1}, Lteam/opay/pay/payment/bill/BillMoreItemReporter;->g(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lag8;)V

    .line 421
    .line 422
    .line 423
    goto/16 :goto_d

    .line 424
    .line 425
    :cond_12
    sget v1, Lteam/opay/pay/R$id;->tv_hot_title:I

    .line 426
    .line 427
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getModule()Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 428
    .line 429
    .line 430
    move-result-object v7

    .line 431
    if-eqz v7, :cond_13

    .line 432
    .line 433
    invoke-virtual {v7}, Lteam/opay/pay/payment/bill/MoreServiceTitleData;->getName()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    goto :goto_7

    .line 438
    :cond_13
    move-object v7, v6

    .line 439
    :goto_7
    if-nez v7, :cond_14

    .line 440
    .line 441
    goto :goto_8

    .line 442
    :cond_14
    move-object v3, v7

    .line 443
    :goto_8
    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 444
    .line 445
    .line 446
    sget v1, Lteam/opay/pay/R$id;->iv_hot_title:I

    .line 447
    .line 448
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getModule()Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    if-eqz v3, :cond_15

    .line 453
    .line 454
    invoke-virtual {v3}, Lteam/opay/pay/payment/bill/MoreServiceTitleData;->getSuperscript()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    goto :goto_9

    .line 459
    :cond_15
    move-object v3, v6

    .line 460
    :goto_9
    if-eqz v3, :cond_17

    .line 461
    .line 462
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    if-nez v3, :cond_16

    .line 467
    .line 468
    goto :goto_a

    .line 469
    :cond_16
    const/4 v3, 0x0

    .line 470
    goto :goto_b

    .line 471
    :cond_17
    :goto_a
    const/4 v3, 0x1

    .line 472
    :goto_b
    xor-int/2addr v3, v4

    .line 473
    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    check-cast v1, Landroid/widget/ImageView;

    .line 484
    .line 485
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getModule()Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    if-eqz v2, :cond_18

    .line 490
    .line 491
    invoke-virtual {v2}, Lteam/opay/pay/payment/bill/MoreServiceTitleData;->getSuperscript()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    goto :goto_c

    .line 496
    :cond_18
    move-object v2, v6

    .line 497
    :goto_c
    const/4 v3, 0x2

    .line 498
    invoke-static {v1, v2, v5, v3, v6}, Lkzf;->k(Landroid/widget/ImageView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    sget v1, Lteam/opay/pay/R$id;->more_hot_list:I

    .line 502
    .line 503
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 508
    .line 509
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 510
    .line 511
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-direct {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 529
    .line 530
    new-instance v0, Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;

    .line 531
    .line 532
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getData()Ljava/util/List;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    iget-object v2, p0, Lteam/opay/pay/payment/bill/BillMoreListAdapter;->c:Lag8;

    .line 537
    .line 538
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;-><init>(Ljava/util/List;Lag8;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getData()Ljava/util/List;

    .line 542
    .line 543
    .line 544
    move-result-object p2

    .line 545
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 549
    .line 550
    .line 551
    :goto_d
    return-void
.end method
