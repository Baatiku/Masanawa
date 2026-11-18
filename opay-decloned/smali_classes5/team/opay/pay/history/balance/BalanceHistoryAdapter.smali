.class public final Lteam/opay/pay/history/balance/BalanceHistoryAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "BalanceHistoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/balance/BalanceHistoryAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/history/balance/BalanceHistoryBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ/\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J)\u0010\u0018\u001a\u00020\u000b2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001f\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\r\u00a8\u0006\u001d"
    }
    d2 = {
        "Lteam/opay/pay/history/balance/BalanceHistoryAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/history/balance/BalanceHistoryBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "",
        "n",
        "()Z",
        "helper",
        "bean",
        "",
        "m",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/balance/BalanceHistoryBean;)V",
        "Landroid/widget/TextView;",
        "textView",
        "currencyView",
        "amountView",
        "",
        "operationType",
        "o",
        "(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V",
        "Landroid/content/Context;",
        "mContext",
        "k",
        "(Landroid/content/Context;Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/balance/BalanceHistoryBean;)V",
        "l",
        "a",
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
.field public static final a:Lteam/opay/pay/history/balance/BalanceHistoryAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/balance/BalanceHistoryAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/balance/BalanceHistoryAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/balance/BalanceHistoryAdapter;->a:Lteam/opay/pay/history/balance/BalanceHistoryAdapter$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    sget v1, Lteam/opay/pay/R$layout;->balance_history_title_item:I

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    sget v1, Lteam/opay/pay/R$layout;->balance_history_item:I

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    sget v1, Lteam/opay/pay/R$layout;->osdk_item_view_more:I

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    sget v1, Lteam/opay/pay/R$layout;->layout_bottom_12_empty:I

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/history/balance/BalanceHistoryBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/balance/BalanceHistoryAdapter;->m(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/balance/BalanceHistoryBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k(Landroid/content/Context;Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/balance/BalanceHistoryBean;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Lteam/opay/pay/history/balance/BalanceHistoryBean;->a()Lteam/opay/pay/history/balance/BalanceHistoryItem;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v0, Lteam/opay/pay/R$id;->type_icon:I

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getImgUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sget v3, Lteam/opay/pay/R$drawable;->ic_misc_transaction:I

    .line 25
    .line 26
    const/4 v5, 0x4

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lme7;->v(Landroid/widget/ImageView;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget v0, Lteam/opay/pay/R$id;->transaction_title:I

    .line 33
    .line 34
    invoke-virtual {p3}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getTitle()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p2, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 39
    .line 40
    .line 41
    sget-object v0, Ld1f;->a:Ld1f;

    .line 42
    .line 43
    invoke-virtual {p3}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getDate()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Le1f;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ld1f;->c(Ljava/lang/String;)Ljava/util/Date;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-static {v0}, Lg33;->c(Ljava/util/Date;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move-object v0, v1

    .line 68
    :goto_0
    if-nez v0, :cond_2

    .line 69
    .line 70
    const-string v0, ""

    .line 71
    .line 72
    :cond_2
    sget v2, Lteam/opay/pay/R$id;->transaction_summary:I

    .line 73
    .line 74
    invoke-virtual {p2, v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 75
    .line 76
    .line 77
    sget v0, Lteam/opay/pay/R$id;->transaction_status:I

    .line 78
    .line 79
    invoke-virtual {p3}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getStatus()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 84
    .line 85
    .line 86
    sget-object v0, Lbd9;->a:Lbd9;

    .line 87
    .line 88
    invoke-virtual {p3}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {p3}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v3}, Ldg0;->a(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/core/api/Country;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v0, v2, v3}, Lbd9;->i(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    sget v3, Lteam/opay/pay/R$id;->transaction_currency:I

    .line 109
    .line 110
    invoke-virtual {p2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    sget v4, Lteam/opay/pay/R$id;->transaction_amount:I

    .line 117
    .line 118
    invoke-virtual {p2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    sget v5, Lteam/opay/pay/R$id;->transaction_sign:I

    .line 125
    .line 126
    invoke-virtual {p2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    check-cast v5, Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v0, v2}, Lbd9;->a(Lteam/opay/core/android/money/MoneyAmount;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p3}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getOperationType()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {p0, v5, v3, v4, v2}, Lteam/opay/pay/history/balance/BalanceHistoryAdapter;->o(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getBalanceAfter()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {p3}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getBalanceAfter()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 175
    .line 176
    .line 177
    move-result-object p3

    .line 178
    invoke-static {p3}, Ldg0;->a(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/core/api/Country;

    .line 179
    .line 180
    .line 181
    move-result-object p3

    .line 182
    invoke-virtual {v0, v2, p3}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    sget v0, Lteam/opay/pay/R$id;->balance_after:I

    .line 187
    .line 188
    if-eqz p1, :cond_3

    .line 189
    .line 190
    sget v1, Lteam/opay/pay/R$string;->wallet_remainder:I

    .line 191
    .line 192
    const/4 v2, 0x1

    .line 193
    new-array v2, v2, [Ljava/lang/Object;

    .line 194
    .line 195
    const/4 v3, 0x0

    .line 196
    aput-object p3, v2, v3

    .line 197
    .line 198
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    :cond_3
    invoke-virtual {p2, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method public final l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/balance/BalanceHistoryBean;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/history/balance/BalanceHistoryBean;->c()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    sget v0, Lteam/opay/pay/R$id;->section_title:I

    .line 8
    .line 9
    invoke-virtual {p2}, Lteam/opay/pay/history/balance/BalanceHistoryBean;->d()Ljava/util/Date;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-static {p2}, Le1f;->a(Ljava/util/Date;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    :cond_0
    const-string p2, ""

    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public m(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/balance/BalanceHistoryBean;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/history/balance/BalanceHistoryBean;
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
    invoke-virtual {p2}, Lteam/opay/pay/history/balance/BalanceHistoryBean;->getItemType()I

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/balance/BalanceHistoryAdapter;->l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/balance/BalanceHistoryBean;)V

    .line 29
    .line 30
    .line 31
    goto :goto_4

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
    move-result v1

    .line 39
    const/4 v2, 0x2

    .line 40
    if-ne v1, v2, :cond_4

    .line 41
    .line 42
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p0, v0, p1, p2}, Lteam/opay/pay/history/balance/BalanceHistoryAdapter;->k(Landroid/content/Context;Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/balance/BalanceHistoryBean;)V

    .line 45
    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    const/4 v0, 0x4

    .line 56
    if-ne p2, v0, :cond_6

    .line 57
    .line 58
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 59
    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_6
    :goto_3
    sget p2, Lteam/opay/pay/R$id;->view_more:I

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 66
    .line 67
    .line 68
    :goto_4
    return-void
.end method

.method public final n()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x0

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lteam/opay/pay/history/balance/BalanceHistoryBean;

    .line 33
    .line 34
    invoke-virtual {v0}, Lteam/opay/pay/history/balance/BalanceHistoryBean;->b()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v3, 0x3

    .line 39
    if-ne v0, v3, :cond_1

    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    return v2
.end method

.method public final o(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget v1, Lteam/opay/pay/R$color;->black_85:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "PLUS"

    .line 10
    .line 11
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string p4, "+"

    .line 18
    .line 19
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object p4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    sget v0, Lteam/opay/pay/R$color;->color_00B876:I

    .line 25
    .line 26
    invoke-static {p4, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v1, "SUBTRACT"

    .line 32
    .line 33
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p4

    .line 37
    if-eqz p4, :cond_1

    .line 38
    .line 39
    const-string p4, "-"

    .line 40
    .line 41
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
