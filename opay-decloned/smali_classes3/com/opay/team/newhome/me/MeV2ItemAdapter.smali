.class public final Lcom/opay/team/newhome/me/MeV2ItemAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "MeV2ItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/opay/team/newhome/bean/MeItemData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nR0\u0010\u0012\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00080\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/opay/team/newhome/me/MeV2ItemAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lcom/opay/team/newhome/bean/MeItemData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "holder",
        "data",
        "",
        "m",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/bean/MeItemData;)V",
        "Lkotlin/Function1;",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "getItemClicked",
        "()Lkotlin/jvm/functions/Function1;",
        "p",
        "(Lkotlin/jvm/functions/Function1;)V",
        "itemClicked",
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
.field public a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/bean/MeItemData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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
    new-instance v0, Lx39;

    .line 6
    .line 7
    invoke-direct {v0}, Lx39;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/opay/team/newhome/me/MeV2ItemAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    sget v1, Lteam/opay/pay/R$layout;->omain_item_me_v2:I

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    sget v1, Lteam/opay/pay/R$layout;->omain_item_me_top_corner:I

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    sget v1, Lteam/opay/pay/R$layout;->omain_item_me_bottom_corner:I

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    sget v1, Lteam/opay/pay/R$layout;->omain_item_me_bottom_ndic:I

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static synthetic k(Lcom/opay/team/newhome/bean/MeItemData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/me/MeV2ItemAdapter;->o(Lcom/opay/team/newhome/bean/MeItemData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lcom/opay/team/newhome/me/MeV2ItemAdapter;Lcom/opay/team/newhome/bean/MeItemData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/me/MeV2ItemAdapter;->n(Lcom/opay/team/newhome/me/MeV2ItemAdapter;Lcom/opay/team/newhome/bean/MeItemData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final n(Lcom/opay/team/newhome/me/MeV2ItemAdapter;Lcom/opay/team/newhome/bean/MeItemData;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/me/MeV2ItemAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final o(Lcom/opay/team/newhome/bean/MeItemData;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/bean/MeItemData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/me/MeV2ItemAdapter;->m(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/bean/MeItemData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/bean/MeItemData;)V
    .locals 13
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/bean/MeItemData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/MeItemData;->getCardType()I

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
    goto/16 :goto_5

    .line 21
    .line 22
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-ne v0, v1, :cond_9

    .line 28
    .line 29
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/MeItemData;->descStr()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget v3, Lteam/opay/pay/R$id;->me_item_desc:I

    .line 36
    .line 37
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-static {v2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    if-eqz v3, :cond_4

    .line 50
    .line 51
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    if-eqz v3, :cond_3

    .line 56
    .line 57
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    if-eqz v3, :cond_4

    .line 61
    .line 62
    invoke-static {v2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_1
    sget v2, Lteam/opay/pay/R$id;->me_item_title:I

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/MeItemData;->getTitle()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 76
    .line 77
    .line 78
    sget v2, Lteam/opay/pay/R$id;->me_item_icon:I

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/MeItemData;->mainPic()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    sget v5, Lteam/opay/pay/R$mipmap;->omain_ic_guest_avatar:I

    .line 91
    .line 92
    const/16 v10, 0x34

    .line 93
    .line 94
    const/4 v11, 0x0

    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v8, 0x0

    .line 98
    const/4 v9, 0x0

    .line 99
    move-object v3, v2

    .line 100
    invoke-static/range {v3 .. v11}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    if-eqz v2, :cond_7

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/MeItemData;->getImgUrl()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    if-eqz v4, :cond_6

    .line 111
    .line 112
    invoke-static {v4}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_5

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    const/4 v4, 0x0

    .line 120
    goto :goto_3

    .line 121
    :cond_6
    :goto_2
    const/4 v4, 0x1

    .line 122
    :goto_3
    xor-int/2addr v4, v1

    .line 123
    invoke-static {v2, v4}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance v2, Lw39;

    .line 130
    .line 131
    invoke-direct {v2, p0, p2}, Lw39;-><init>(Lcom/opay/team/newhome/me/MeV2ItemAdapter;Lcom/opay/team/newhome/bean/MeItemData;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/MeItemData;->getImageSuperscriptUrl()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    sget p2, Lteam/opay/pay/R$id;->ivAd:I

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const-string v2, "getView(...)"

    .line 148
    .line 149
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-lez v2, :cond_8

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_8
    const/4 v1, 0x0

    .line 160
    :goto_4
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-lez v0, :cond_a

    .line 168
    .line 169
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    move-object v4, p1

    .line 174
    check-cast v4, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 175
    .line 176
    const/16 v11, 0x2e

    .line 177
    .line 178
    const/4 v12, 0x0

    .line 179
    const/4 v6, 0x0

    .line 180
    const/4 v7, 0x0

    .line 181
    const/4 v8, 0x0

    .line 182
    const/4 v9, 0x1

    .line 183
    const/4 v10, 0x0

    .line 184
    invoke-static/range {v4 .. v12}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_9
    :goto_5
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 189
    .line 190
    .line 191
    :cond_a
    :goto_6
    return-void
.end method

.method public final p(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/bean/MeItemData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/opay/team/newhome/me/MeV2ItemAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method
