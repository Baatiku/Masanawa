.class public final Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "ReceiveNumsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/opay/team/newhome/reward/receive/ReceiveItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\r\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ!\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000cR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R0\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lcom/opay/team/newhome/reward/receive/ReceiveItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "helper",
        "item",
        "",
        "q",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/receive/ReceiveItem;)V",
        "m",
        "o",
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Lkotlin/Function1;",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "getOnClaimClick",
        "()Lkotlin/jvm/functions/Function1;",
        "r",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onClaimClick",
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
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/receive/ReceiveItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;->a:Landroid/content/Context;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    sget v0, Lteam/opay/pay/R$layout;->omain_item_claime_normal:I

    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    sget v0, Lteam/opay/pay/R$layout;->omain_item_claime_question:I

    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic k(Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;Lcom/opay/team/newhome/reward/receive/ReceiveItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;->p(Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;Lcom/opay/team/newhome/reward/receive/ReceiveItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lcom/opay/team/newhome/reward/receive/ReceiveItem;Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;->n(Lcom/opay/team/newhome/reward/receive/ReceiveItem;Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final n(Lcom/opay/team/newhome/reward/receive/ReceiveItem;Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object p1, p1, Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final p(Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;Lcom/opay/team/newhome/reward/receive/ReceiveItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->e()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    :cond_1
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/reward/receive/ReceiveItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;->q(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/receive/ReceiveItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/receive/ReceiveItem;)V
    .locals 9

    .line 1
    sget v0, Lteam/opay/pay/R$id;->normal_icon:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getView(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    move-object v2, v0

    .line 13
    check-cast v2, Landroid/widget/ImageView;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->i()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v3, v0

    .line 24
    :goto_0
    const-string v8, ""

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    move-object v3, v8

    .line 29
    :cond_1
    sget v4, Lteam/opay/pay/R$mipmap;->omain_ic_task_default:I

    .line 30
    .line 31
    const/4 v6, 0x4

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-static/range {v2 .. v7}, Lme7;->v(Landroid/widget/ImageView;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget v2, Lteam/opay/pay/R$id;->normal_expiring:I

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->g()Lcom/opay/team/newhome/reward/RewardsNumItem;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/opay/team/newhome/reward/RewardsNumItem;->getExpiring()Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move-object v3, v0

    .line 53
    :goto_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-static {v3, v4}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 66
    .line 67
    .line 68
    sget v2, Lteam/opay/pay/R$id;->normal_coins:I

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    check-cast v2, Landroid/widget/ImageView;

    .line 78
    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->g()Lcom/opay/team/newhome/reward/RewardsNumItem;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/opay/team/newhome/reward/RewardsNumItem;->getRewardIcon()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    move-object v3, v0

    .line 93
    :goto_2
    if-nez v3, :cond_4

    .line 94
    .line 95
    move-object v3, v8

    .line 96
    :cond_4
    const/4 v5, 0x2

    .line 97
    const/4 v6, 0x0

    .line 98
    invoke-static {v2, v3, v6, v5, v0}, Lkzf;->k(Landroid/widget/ImageView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    sget v2, Lteam/opay/pay/R$id;->normal_title:I

    .line 102
    .line 103
    if-eqz p2, :cond_5

    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->j()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    goto :goto_3

    .line 110
    :cond_5
    move-object v3, v0

    .line 111
    :goto_3
    if-nez v3, :cond_6

    .line 112
    .line 113
    move-object v3, v8

    .line 114
    :cond_6
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 115
    .line 116
    .line 117
    sget v2, Lteam/opay/pay/R$id;->normal_desc:I

    .line 118
    .line 119
    if-eqz p2, :cond_7

    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->h()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    goto :goto_4

    .line 126
    :cond_7
    move-object v3, v0

    .line 127
    :goto_4
    if-nez v3, :cond_8

    .line 128
    .line 129
    move-object v3, v8

    .line 130
    :cond_8
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 131
    .line 132
    .line 133
    sget v2, Lteam/opay/pay/R$id;->normal_value:I

    .line 134
    .line 135
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Landroid/widget/TextView;

    .line 140
    .line 141
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    new-instance v5, Lkdc;

    .line 145
    .line 146
    invoke-direct {v5, p2, p0}, Lkdc;-><init>(Lcom/opay/team/newhome/reward/receive/ReceiveItem;Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v3, v5}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 150
    .line 151
    .line 152
    sget v3, Lteam/opay/pay/R$id;->normal_button:I

    .line 153
    .line 154
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    check-cast v3, Landroid/widget/LinearLayout;

    .line 159
    .line 160
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Landroid/widget/TextView;

    .line 165
    .line 166
    if-eqz p2, :cond_9

    .line 167
    .line 168
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->d()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    goto :goto_5

    .line 173
    :cond_9
    move-object v5, v0

    .line 174
    :goto_5
    const-string v7, "1"

    .line 175
    .line 176
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_b

    .line 181
    .line 182
    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 183
    .line 184
    .line 185
    iget-object v3, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;->a:Landroid/content/Context;

    .line 186
    .line 187
    sget v5, Lteam/opay/pay/R$color;->omain_color_89d4ad:I

    .line 188
    .line 189
    invoke-static {v3, v5}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->f()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    if-nez v3, :cond_a

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_a
    move-object v8, v3

    .line 204
    :goto_6
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_b
    const/4 v5, 0x1

    .line 209
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    .line 211
    .line 212
    iget-object v3, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;->a:Landroid/content/Context;

    .line 213
    .line 214
    sget v5, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 215
    .line 216
    invoke-static {v3, v5}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    .line 222
    .line 223
    iget-object v3, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;->a:Landroid/content/Context;

    .line 224
    .line 225
    sget v5, Lteam/opay/pay/R$string;->omain_claim:I

    .line 226
    .line 227
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    :goto_7
    sget v2, Lteam/opay/pay/R$id;->normal_loading:I

    .line 235
    .line 236
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    if-eqz p2, :cond_c

    .line 244
    .line 245
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->k()Z

    .line 246
    .line 247
    .line 248
    move-result p2

    .line 249
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    :cond_c
    invoke-static {v0, v4}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    check-cast p2, Ljava/lang/Boolean;

    .line 258
    .line 259
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    invoke-static {p1, p2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 264
    .line 265
    .line 266
    return-void
.end method

.method public final o(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/receive/ReceiveItem;)V
    .locals 9

    .line 1
    sget v0, Lteam/opay/pay/R$id;->question_icon:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getView(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    move-object v2, v0

    .line 13
    check-cast v2, Landroid/widget/ImageView;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->i()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v3, v0

    .line 24
    :goto_0
    const-string v8, ""

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    move-object v3, v8

    .line 29
    :cond_1
    sget v4, Lteam/opay/pay/R$mipmap;->omain_ic_task_default:I

    .line 30
    .line 31
    const/4 v6, 0x4

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-static/range {v2 .. v7}, Lme7;->v(Landroid/widget/ImageView;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget v2, Lteam/opay/pay/R$id;->question_expiring:I

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->g()Lcom/opay/team/newhome/reward/RewardsNumItem;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/opay/team/newhome/reward/RewardsNumItem;->getExpiring()Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move-object v3, v0

    .line 53
    :goto_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-static {v3, v4}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 66
    .line 67
    .line 68
    sget v2, Lteam/opay/pay/R$id;->question_coins:I

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    check-cast v2, Landroid/widget/ImageView;

    .line 78
    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->g()Lcom/opay/team/newhome/reward/RewardsNumItem;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/opay/team/newhome/reward/RewardsNumItem;->getRewardIcon()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    move-object v3, v0

    .line 93
    :goto_2
    if-nez v3, :cond_4

    .line 94
    .line 95
    move-object v3, v8

    .line 96
    :cond_4
    const/4 v4, 0x0

    .line 97
    const/4 v5, 0x2

    .line 98
    invoke-static {v2, v3, v4, v5, v0}, Lkzf;->k(Landroid/widget/ImageView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    sget v2, Lteam/opay/pay/R$id;->question_title:I

    .line 102
    .line 103
    if-eqz p2, :cond_5

    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->j()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    goto :goto_3

    .line 110
    :cond_5
    move-object v3, v0

    .line 111
    :goto_3
    if-nez v3, :cond_6

    .line 112
    .line 113
    move-object v3, v8

    .line 114
    :cond_6
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 115
    .line 116
    .line 117
    sget v2, Lteam/opay/pay/R$id;->question_desc:I

    .line 118
    .line 119
    if-eqz p2, :cond_7

    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->h()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    goto :goto_4

    .line 126
    :cond_7
    move-object v3, v0

    .line 127
    :goto_4
    if-nez v3, :cond_8

    .line 128
    .line 129
    move-object v3, v8

    .line 130
    :cond_8
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 131
    .line 132
    .line 133
    sget v2, Lteam/opay/pay/R$id;->question_value:I

    .line 134
    .line 135
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Landroid/widget/TextView;

    .line 140
    .line 141
    if-eqz p2, :cond_9

    .line 142
    .line 143
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->f()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    goto :goto_5

    .line 148
    :cond_9
    move-object v3, v0

    .line 149
    :goto_5
    if-nez v3, :cond_a

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_a
    move-object v8, v3

    .line 153
    :goto_6
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    if-eqz p2, :cond_b

    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->d()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    :cond_b
    if-eqz v0, :cond_10

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    packed-switch v3, :pswitch_data_0

    .line 169
    .line 170
    .line 171
    :pswitch_0
    goto :goto_7

    .line 172
    :pswitch_1
    const-string v3, "4"

    .line 173
    .line 174
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_c

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_c
    iget-object v0, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;->a:Landroid/content/Context;

    .line 182
    .line 183
    sget v3, Lteam/opay/pay/R$color;->omain_color_ff9100:I

    .line 184
    .line 185
    invoke-static {v0, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    .line 191
    .line 192
    goto :goto_8

    .line 193
    :pswitch_2
    const-string v3, "3"

    .line 194
    .line 195
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_d

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_d
    iget-object v0, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;->a:Landroid/content/Context;

    .line 203
    .line 204
    sget v3, Lteam/opay/pay/R$color;->omain_color_ff2e62:I

    .line 205
    .line 206
    invoke-static {v0, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    .line 212
    .line 213
    goto :goto_8

    .line 214
    :pswitch_3
    const-string v3, "2"

    .line 215
    .line 216
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-nez v0, :cond_e

    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_e
    iget-object v0, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;->a:Landroid/content/Context;

    .line 224
    .line 225
    sget v3, Lteam/opay/pay/R$color;->omain_black_45:I

    .line 226
    .line 227
    invoke-static {v0, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    .line 233
    .line 234
    goto :goto_8

    .line 235
    :pswitch_4
    const-string v3, "0"

    .line 236
    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-nez v0, :cond_f

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_f
    iget-object v0, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;->a:Landroid/content/Context;

    .line 245
    .line 246
    sget v3, Lteam/opay/pay/R$color;->omain_color_ff9100:I

    .line 247
    .line 248
    invoke-static {v0, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_10
    :goto_7
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 257
    .line 258
    .line 259
    :goto_8
    sget v0, Lteam/opay/pay/R$id;->question_image:I

    .line 260
    .line 261
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    new-instance v0, Lldc;

    .line 269
    .line 270
    invoke-direct {v0, p0, p2}, Lldc;-><init>(Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;Lcom/opay/team/newhome/reward/receive/ReceiveItem;)V

    .line 271
    .line 272
    .line 273
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public q(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/receive/ReceiveItem;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/receive/ReceiveItem;
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
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->a()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;->m(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/receive/ReceiveItem;)V

    .line 29
    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x2

    .line 40
    if-ne v0, v1, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;->o(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/receive/ReceiveItem;)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_4
    :goto_2
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 47
    .line 48
    .line 49
    :goto_3
    return-void
.end method

.method public final r(Lkotlin/jvm/functions/Function1;)V
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
            "Lcom/opay/team/newhome/reward/receive/ReceiveItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsAdapter;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
