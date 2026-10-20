.class public final Lcashier/adapter/CombineInfoAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "CombineInfoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcashier/data/PayChannelItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R0\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcashier/adapter/CombineInfoAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcashier/data/PayChannelItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "",
        "available",
        "<init>",
        "(Z)V",
        "helper",
        "item",
        "",
        "k",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/PayChannelItem;)V",
        "a",
        "Z",
        "getAvailable",
        "()Z",
        "Lkotlin/Function1;",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "l",
        "()Lkotlin/jvm/functions/Function1;",
        "m",
        "(Lkotlin/jvm/functions/Function1;)V",
        "noticeCallback",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Z

.field public b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcashier/data/PayChannelItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/cashier/R$layout;->pay_item_new_payment_single_combine:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iput-boolean p1, p0, Lcashier/adapter/CombineInfoAdapter;->a:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcashier/data/PayChannelItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcashier/adapter/CombineInfoAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/PayChannelItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/PayChannelItem;)V
    .locals 9
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcashier/data/PayChannelItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "helper"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "item"

    .line 9
    .line 10
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcashier/data/PayChannelItem;->t()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "Y"

    .line 20
    .line 21
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    sget v4, Lteam/opay/pay/cashier/R$color;->pay_black_85:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget v4, Lteam/opay/pay/cashier/R$color;->pay_black_45:I

    .line 31
    .line 32
    :goto_0
    sget v5, Lteam/opay/pay/cashier/R$id;->method_name:I

    .line 33
    .line 34
    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Landroid/widget/TextView;

    .line 39
    .line 40
    sget v6, Lteam/opay/pay/cashier/R$id;->single_total_amount:I

    .line 41
    .line 42
    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Landroid/widget/TextView;

    .line 47
    .line 48
    sget v7, Lteam/opay/pay/cashier/R$id;->method_reduce_amount:I

    .line 49
    .line 50
    invoke-virtual {p1, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Landroid/widget/TextView;

    .line 55
    .line 56
    sget v8, Lteam/opay/pay/cashier/R$id;->method_question:I

    .line 57
    .line 58
    invoke-virtual {p1, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 63
    .line 64
    const-string v8, "notice"

    .line 65
    .line 66
    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/16 v8, 0x10

    .line 70
    .line 71
    invoke-static {v8}, Lcashier/util/UtilsKt;->a(I)I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    invoke-static {p1, v8}, Ld0g;->b(Landroid/view/View;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lcashier/data/PayChannelItem;->q()Lcashier/data/QuestionMark;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    if-eqz v8, :cond_1

    .line 83
    .line 84
    const/4 v8, 0x1

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const/4 v8, 0x0

    .line 87
    :goto_1
    invoke-static {p1, v8}, Ld0g;->t(Landroid/view/View;Z)V

    .line 88
    .line 89
    .line 90
    new-instance v8, Lcashier/adapter/CombineInfoAdapter$convert$1$1;

    .line 91
    .line 92
    invoke-direct {v8, p0, p2}, Lcashier/adapter/CombineInfoAdapter$convert$1$1;-><init>(Lcashier/adapter/CombineInfoAdapter;Lcashier/data/PayChannelItem;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v8}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lcashier/data/PayChannelItem;->f()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    sget v2, Lteam/opay/pay/cashier/R$string;->pay_format_meter_number:I

    .line 125
    .line 126
    invoke-virtual {p2}, Lcashier/data/PayChannelItem;->b()Lcashier/util/CurrencyAmount;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    const/4 v5, 0x0

    .line 131
    if-eqz v4, :cond_2

    .line 132
    .line 133
    invoke-static {v4, v5, v0, v5}, Lcashier/util/CurrencyAmount;->toText$default(Lcashier/util/CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    goto :goto_2

    .line 138
    :cond_2
    move-object v4, v5

    .line 139
    :goto_2
    new-array v8, v0, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object v4, v8, v1

    .line 142
    .line 143
    invoke-virtual {p1, v2, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const/16 v2, 0x2d

    .line 156
    .line 157
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Lcashier/data/PayChannelItem;->a()Lcashier/util/CurrencyAmount;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-eqz v2, :cond_3

    .line 165
    .line 166
    invoke-static {v2, v5, v0, v5}, Lcashier/util/CurrencyAmount;->toText$default(Lcashier/util/CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    const-string v2, "methodReduceAmount"

    .line 178
    .line 179
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    if-eqz v3, :cond_4

    .line 183
    .line 184
    iget-boolean v2, p0, Lcashier/adapter/CombineInfoAdapter;->a:Z

    .line 185
    .line 186
    if-eqz v2, :cond_4

    .line 187
    .line 188
    invoke-virtual {p2}, Lcashier/data/PayChannelItem;->a()Lcashier/util/CurrencyAmount;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    if-eqz p2, :cond_4

    .line 193
    .line 194
    invoke-virtual {p2}, Lcashier/util/CurrencyAmount;->getPositive()Z

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    if-ne p2, v0, :cond_4

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_4
    const/4 v0, 0x0

    .line 202
    :goto_3
    invoke-static {v7, v0}, Ld0g;->t(Landroid/view/View;Z)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method public final l()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcashier/data/PayChannelItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/adapter/CombineInfoAdapter;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m(Lkotlin/jvm/functions/Function1;)V
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
            "Lcashier/data/PayChannelItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcashier/adapter/CombineInfoAdapter;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
