.class public final Lteam/opay/pay/sensesecurity/SecurityTestingAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "SecurityTestingAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/sensesecurity/SecurityTestingItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/pay/sensesecurity/SecurityTestingAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/sensesecurity/SecurityTestingItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "item",
        "",
        "k",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/sensesecurity/SecurityTestingItem;)V",
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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    sget v1, Lteam/opay/pay/R$layout;->osdk_security_testing_item:I

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0xd

    .line 13
    .line 14
    sget v1, Lteam/opay/pay/R$layout;->osdk_security_testing_item_ndic:I

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/sensesecurity/SecurityTestingItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/sensesecurity/SecurityTestingAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/sensesecurity/SecurityTestingItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/sensesecurity/SecurityTestingItem;)V
    .locals 15
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/sensesecurity/SecurityTestingItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "helper"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0xc

    .line 13
    .line 14
    if-ne v1, v2, :cond_9

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->c()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->b()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v3, 0x0

    .line 33
    :goto_1
    if-eqz v2, :cond_2

    .line 34
    .line 35
    sget v2, Lteam/opay/pay/R$id;->rootContent:I

    .line 36
    .line 37
    sget v3, Lteam/opay/pay/R$drawable;->shape_corner_white_12_tlr:I

    .line 38
    .line 39
    invoke-virtual {v0, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    if-eqz v3, :cond_3

    .line 44
    .line 45
    sget v2, Lteam/opay/pay/R$id;->rootContent:I

    .line 46
    .line 47
    sget v3, Lteam/opay/pay/R$drawable;->shape_corner_white_12_blr:I

    .line 48
    .line 49
    invoke-virtual {v0, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    sget v2, Lteam/opay/pay/R$id;->rootContent:I

    .line 54
    .line 55
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    sget v4, Lteam/opay/pay/R$color;->omain_white:I

    .line 62
    .line 63
    invoke-static {v3, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {v0, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 68
    .line 69
    .line 70
    :goto_2
    sget v2, Lteam/opay/pay/R$id;->rootContent:I

    .line 71
    .line 72
    filled-new-array {v2}, [I

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 77
    .line 78
    .line 79
    sget v2, Lteam/opay/pay/R$id;->btnStatus:I

    .line 80
    .line 81
    filled-new-array {v2}, [I

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 86
    .line 87
    .line 88
    sget v3, Lteam/opay/pay/R$id;->ivLogo:I

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const-string v4, "getView(...)"

    .line 95
    .line 96
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    move-object v5, v3

    .line 100
    check-cast v5, Landroid/widget/ImageView;

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    if-eqz p2, :cond_4

    .line 104
    .line 105
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->a()Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-eqz v4, :cond_4

    .line 110
    .line 111
    invoke-virtual {v4}, Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;->getImgUrl()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    move-object v6, v4

    .line 116
    goto :goto_3

    .line 117
    :cond_4
    move-object v6, v3

    .line 118
    :goto_3
    sget v8, Lteam/opay/pay/R$mipmap;->omain_home_defualt_icon:I

    .line 119
    .line 120
    const/16 v13, 0x7a

    .line 121
    .line 122
    const/4 v14, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    const/4 v9, 0x0

    .line 125
    const/4 v10, 0x0

    .line 126
    const/4 v11, 0x0

    .line 127
    const/4 v12, 0x0

    .line 128
    invoke-static/range {v5 .. v14}, Lkzf;->i(Landroid/widget/ImageView;Ljava/lang/String;IIIZZZILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    sget v4, Lteam/opay/pay/R$id;->tvTitle:I

    .line 132
    .line 133
    if-eqz p2, :cond_5

    .line 134
    .line 135
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->a()Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    if-eqz v5, :cond_5

    .line 140
    .line 141
    invoke-virtual {v5}, Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;->getName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    goto :goto_4

    .line 146
    :cond_5
    move-object v5, v3

    .line 147
    :goto_4
    invoke-virtual {v0, v4, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 148
    .line 149
    .line 150
    if-eqz p2, :cond_6

    .line 151
    .line 152
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->a()Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    if-eqz v4, :cond_6

    .line 157
    .line 158
    invoke-virtual {v4}, Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;->getButtonText()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    goto :goto_5

    .line 163
    :cond_6
    move-object v4, v3

    .line 164
    :goto_5
    invoke-virtual {v0, v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 165
    .line 166
    .line 167
    sget v4, Lteam/opay/pay/R$id;->tvDesc:I

    .line 168
    .line 169
    if-eqz p2, :cond_7

    .line 170
    .line 171
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->a()Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    if-eqz v5, :cond_7

    .line 176
    .line 177
    invoke-virtual {v5}, Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;->getDescription()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    :cond_7
    invoke-virtual {v0, v4, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 182
    .line 183
    .line 184
    const/4 v3, 0x1

    .line 185
    if-eqz p2, :cond_8

    .line 186
    .line 187
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->a()Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    if-eqz v4, :cond_8

    .line 192
    .line 193
    invoke-virtual {v4}, Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;->safety()Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-ne v4, v3, :cond_8

    .line 198
    .line 199
    const/4 v1, 0x1

    .line 200
    :cond_8
    sget v4, Lteam/opay/pay/R$id;->tvStatus:I

    .line 201
    .line 202
    invoke-virtual {v0, v4, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 203
    .line 204
    .line 205
    xor-int/2addr v1, v3

    .line 206
    invoke-virtual {v0, v2, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 207
    .line 208
    .line 209
    :cond_9
    return-void
.end method
