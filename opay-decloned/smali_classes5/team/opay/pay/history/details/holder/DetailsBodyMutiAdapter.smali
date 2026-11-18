.class public final Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "DetailsBodyMutiAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R0\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "value",
        "",
        "u",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "helper",
        "item",
        "p",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V",
        "data",
        "o",
        "(Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V",
        "Lkotlin/Function1;",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "getOnArrowClick",
        "()Lkotlin/jvm/functions/Function1;",
        "v",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onArrowClick",
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
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->osdk_item_details_body_muti:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;->s(Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;Landroid/content/Context;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;->r(Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;Landroid/content/Context;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;->t(Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;Landroid/content/Context;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;->q(Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;Landroid/content/Context;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final q(Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;Landroid/content/Context;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;->u(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final r(Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;Landroid/content/Context;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;->u(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final s(Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;->o(Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final t(Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;->o(Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final u(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lteam/opay/pay/R$string;->clipboard_copy:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getString(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lkmf;->J(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2, p2}, Lteam/opay/core/android/ContextKt;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;->p(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o(Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public p(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V
    .locals 7
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;
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
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getType()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "date"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    sget-object v1, Ld1f;->a:Ld1f;

    .line 29
    .line 30
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3}, Le1f;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v3}, Ld1f;->c(Ljava/lang/String;)Ljava/util/Date;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-static {v1}, Lg33;->b(Ljava/util/Date;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object v1, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_0
    sget v3, Lteam/opay/pay/R$id;->details_value:I

    .line 56
    .line 57
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v3, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/widget/TextView;

    .line 69
    .line 70
    sget v3, Lteam/opay/pay/R$id;->account_number_copy:I

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Landroid/widget/ImageView;

    .line 77
    .line 78
    sget v4, Lteam/opay/pay/R$id;->arrow_right:I

    .line 79
    .line 80
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/widget/ImageView;

    .line 85
    .line 86
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getCanCopy()Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 91
    .line 92
    invoke-static {v4, v5}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v3, v4}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getLink()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    if-eqz v5, :cond_3

    .line 113
    .line 114
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-nez v5, :cond_5

    .line 119
    .line 120
    :cond_3
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getType()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const-string v6, "mobile"

    .line 125
    .line 126
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-nez v5, :cond_5

    .line 131
    .line 132
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getType()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    const-string v6, "voucherPackage"

    .line 137
    .line 138
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_4

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_4
    const/4 v5, 0x0

    .line 146
    goto :goto_2

    .line 147
    :cond_5
    :goto_1
    const/4 v5, 0x1

    .line 148
    :goto_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-static {p1, v5}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 152
    .line 153
    .line 154
    if-eqz v4, :cond_6

    .line 155
    .line 156
    new-instance p1, Lj83;

    .line 157
    .line 158
    invoke-direct {p1, p0, v0, p2}, Lj83;-><init>(Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;Landroid/content/Context;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v3, p1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    new-instance p1, Lk83;

    .line 168
    .line 169
    invoke-direct {p1, p0, v0, p2}, Lk83;-><init>(Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;Landroid/content/Context;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v1, p1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_6
    if-eqz v5, :cond_7

    .line 177
    .line 178
    new-instance v0, Ll83;

    .line 179
    .line 180
    invoke-direct {v0, p0, p2}, Ll83;-><init>(Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 181
    .line 182
    .line 183
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    new-instance p1, Lm83;

    .line 190
    .line 191
    invoke-direct {p1, p0, p2}, Lm83;-><init>(Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v1, p1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_7
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    :goto_3
    return-void
.end method

.method public final v(Lkotlin/jvm/functions/Function1;)V
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
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
