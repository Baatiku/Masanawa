.class public final Lteam/opay/pay/payment/betting/BettingHistoryAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BettingHistoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/core/api/BettingHistoryItemBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u000e\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u001f\u0010\u000f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000cR \u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/BettingHistoryAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/core/api/BettingHistoryItemBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Lkotlin/Function1;",
        "",
        "onBuyAgainClickedListener",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "helper",
        "bean",
        "n",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/BettingHistoryItemBean;)V",
        "item",
        "r",
        "p",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "Ljava/text/SimpleDateFormat;",
        "b",
        "Lid8;",
        "o",
        "()Ljava/text/SimpleDateFormat;",
        "sp",
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
.field public final a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/core/api/BettingHistoryItemBean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
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
            "Lteam/opay/core/api/BettingHistoryItemBean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onBuyAgainClickedListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lteam/opay/pay/R$layout;->item_betting_history:I

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingHistoryAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    new-instance p1, Lc01;

    .line 14
    .line 15
    invoke-direct {p1}, Lc01;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingHistoryAdapter;->b:Lid8;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/payment/betting/BettingHistoryAdapter;Lteam/opay/core/api/BettingHistoryItemBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingHistoryAdapter;->s(Lteam/opay/pay/payment/betting/BettingHistoryAdapter;Lteam/opay/core/api/BettingHistoryItemBean;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/betting/BettingHistoryAdapter;->t()Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic m(Lteam/opay/pay/payment/betting/BettingHistoryAdapter;Lteam/opay/core/api/BettingHistoryItemBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingHistoryAdapter;->q(Lteam/opay/pay/payment/betting/BettingHistoryAdapter;Lteam/opay/core/api/BettingHistoryItemBean;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final q(Lteam/opay/pay/payment/betting/BettingHistoryAdapter;Lteam/opay/core/api/BettingHistoryItemBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/payment/betting/BettingHistoryAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final s(Lteam/opay/pay/payment/betting/BettingHistoryAdapter;Lteam/opay/core/api/BettingHistoryItemBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/payment/betting/BettingHistoryAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final t()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "dd-MM-yyyy HH:mm:ss"

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/core/api/BettingHistoryItemBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingHistoryAdapter;->n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/BettingHistoryItemBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/BettingHistoryItemBean;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/BettingHistoryItemBean;
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
    invoke-virtual {p2}, Lteam/opay/core/api/BettingHistoryItemBean;->i()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "offline"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingHistoryAdapter;->p(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/BettingHistoryItemBean;)V

    .line 24
    .line 25
    .line 26
    sget p2, Lteam/opay/pay/R$id;->btn_buy_again:I

    .line 27
    .line 28
    sget v0, Lteam/opay/pay/R$string;->osdk_offline:I

    .line 29
    .line 30
    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v1, "disable"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingHistoryAdapter;->p(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/BettingHistoryItemBean;)V

    .line 43
    .line 44
    .line 45
    sget p2, Lteam/opay/pay/R$id;->btn_buy_again:I

    .line 46
    .line 47
    sget v0, Lteam/opay/pay/R$string;->osdk_unavailable:I

    .line 48
    .line 49
    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingHistoryAdapter;->r(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/BettingHistoryItemBean;)V

    .line 54
    .line 55
    .line 56
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public final o()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingHistoryAdapter;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    return-object v0
.end method

.method public final p(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/BettingHistoryItemBean;)V
    .locals 10

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    sget v1, Lteam/opay/pay/R$id;->service_icon:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "findViewById(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object v3, v1

    .line 15
    check-cast v3, Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {p2}, Lteam/opay/core/api/BettingHistoryItemBean;->c()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    sget v5, Lteam/opay/pay/R$color;->white_50:I

    .line 22
    .line 23
    sget v6, Lteam/opay/pay/R$mipmap;->ic_betting:I

    .line 24
    .line 25
    const/16 v8, 0x8

    .line 26
    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    invoke-static/range {v3 .. v9}, Lme7;->z(Landroid/widget/ImageView;Ljava/lang/String;IIIILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget v1, Lteam/opay/pay/R$id;->service_name:I

    .line 33
    .line 34
    invoke-virtual {p2}, Lteam/opay/core/api/BettingHistoryItemBean;->h()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    sget v3, Lteam/opay/pay/R$color;->black_25:I

    .line 46
    .line 47
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 52
    .line 53
    .line 54
    sget v1, Lteam/opay/pay/R$id;->order_cost:I

    .line 55
    .line 56
    invoke-virtual {p2}, Lteam/opay/core/api/BettingHistoryItemBean;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const/4 v4, 0x0

    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    const/4 v5, 0x1

    .line 64
    invoke-static {v2, v4, v5, v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toText$default(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    :cond_0
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 69
    .line 70
    .line 71
    sget v1, Lteam/opay/pay/R$id;->btn_buy_again:I

    .line 72
    .line 73
    sget v2, Lteam/opay/pay/R$drawable;->osdk_ripple_f8f8fb_15:I

    .line 74
    .line 75
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    sget v4, Lteam/opay/pay/R$color;->black_45:I

    .line 83
    .line 84
    invoke-static {v2, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    new-instance v2, Le01;

    .line 96
    .line 97
    invoke-direct {v2, p0, p2}, Le01;-><init>(Lteam/opay/pay/payment/betting/BettingHistoryAdapter;Lteam/opay/core/api/BettingHistoryItemBean;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    sget v1, Lteam/opay/pay/R$id;->order_time:I

    .line 104
    .line 105
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingHistoryAdapter;->o()Ljava/text/SimpleDateFormat;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    sget-object v4, Ld1f;->a:Ld1f;

    .line 110
    .line 111
    invoke-virtual {p2}, Lteam/opay/core/api/BettingHistoryItemBean;->e()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    if-nez p2, :cond_1

    .line 116
    .line 117
    const-string p2, ""

    .line 118
    .line 119
    :cond_1
    invoke-virtual {v4, p2}, Ld1f;->c(Ljava/lang/String;)Ljava/util/Date;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    if-nez p2, :cond_2

    .line 124
    .line 125
    return-void

    .line 126
    :cond_2
    invoke-virtual {v2, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-static {p2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final r(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/BettingHistoryItemBean;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    sget v1, Lteam/opay/pay/R$id;->service_icon:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "findViewById(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v1, Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/core/api/BettingHistoryItemBean;->c()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget v3, Lteam/opay/pay/R$mipmap;->ic_betting:I

    .line 21
    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v1, v2, v3}, Lme7;->a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    .line 28
    .line 29
    sget v1, Lteam/opay/pay/R$id;->service_name:I

    .line 30
    .line 31
    invoke-virtual {p2}, Lteam/opay/core/api/BettingHistoryItemBean;->h()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    sget v3, Lteam/opay/pay/R$color;->osdk_color_black:I

    .line 43
    .line 44
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 49
    .line 50
    .line 51
    sget v1, Lteam/opay/pay/R$id;->order_cost:I

    .line 52
    .line 53
    invoke-virtual {p2}, Lteam/opay/core/api/BettingHistoryItemBean;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x0

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    invoke-static {v2, v3, v4, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toText$default(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    :cond_0
    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 66
    .line 67
    .line 68
    sget v1, Lteam/opay/pay/R$id;->btn_buy_again:I

    .line 69
    .line 70
    sget v2, Lteam/opay/pay/R$drawable;->green_btn_border_1_radius_15:I

    .line 71
    .line 72
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    sget v3, Lteam/opay/pay/R$color;->color_00B876:I

    .line 80
    .line 81
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 86
    .line 87
    .line 88
    sget v2, Lteam/opay/pay/R$string;->osdk_buy_again:I

    .line 89
    .line 90
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v2, Ld01;

    .line 98
    .line 99
    invoke-direct {v2, p0, p2}, Ld01;-><init>(Lteam/opay/pay/payment/betting/BettingHistoryAdapter;Lteam/opay/core/api/BettingHistoryItemBean;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    sget v1, Lteam/opay/pay/R$id;->order_time:I

    .line 106
    .line 107
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingHistoryAdapter;->o()Ljava/text/SimpleDateFormat;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    sget-object v3, Ld1f;->a:Ld1f;

    .line 112
    .line 113
    invoke-virtual {p2}, Lteam/opay/core/api/BettingHistoryItemBean;->e()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    if-nez p2, :cond_1

    .line 118
    .line 119
    const-string p2, ""

    .line 120
    .line 121
    :cond_1
    invoke-virtual {v3, p2}, Ld1f;->c(Ljava/lang/String;)Ljava/util/Date;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    if-nez p2, :cond_2

    .line 126
    .line 127
    return-void

    .line 128
    :cond_2
    invoke-virtual {v2, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    sget v0, Lteam/opay/pay/R$color;->black_65:I

    .line 140
    .line 141
    invoke-static {p2, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 146
    .line 147
    .line 148
    return-void
.end method
