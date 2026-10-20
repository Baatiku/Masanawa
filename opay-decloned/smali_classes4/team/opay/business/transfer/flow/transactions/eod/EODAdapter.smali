.class public final Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EODAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/core/common/internal/BindingViewHolder<",
        "Lz76;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0008\t\u0008\u0000\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001b\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJ*\u0010\u000f\u001a\r\u0012\t\u0012\u00070\u0003\u00a2\u0006\u0002\u0008\u000e0\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J%\u0010\u0013\u001a\u00020\u00062\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0012\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R6\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00192\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00198\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/core/common/internal/BindingViewHolder;",
        "Lz76;",
        "Lkotlin/Function1;",
        "Lteam/opay/business/transfer/flow/api/EodInfo;",
        "",
        "onItemClick",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "n",
        "(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;",
        "holder",
        "position",
        "l",
        "(Lteam/opay/core/common/internal/BindingViewHolder;I)V",
        "getItemCount",
        "()I",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "",
        "value",
        "b",
        "Ljava/util/List;",
        "getDataList",
        "()Ljava/util/List;",
        "setDataList",
        "(Ljava/util/List;)V",
        "dataList",
        "business-transfer-flow_release"
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
            "Lteam/opay/business/transfer/flow/api/EodInfo;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/EodInfo;",
            ">;"
        }
    .end annotation

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
            "Lteam/opay/business/transfer/flow/api/EodInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onItemClick"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;->b:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic k(Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;Lteam/opay/business/transfer/flow/api/EodInfo;Lz76;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;->m(Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;Lteam/opay/business/transfer/flow/api/EodInfo;Lz76;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final m(Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;Lteam/opay/business/transfer/flow/api/EodInfo;Lz76;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object p0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 7
    .line 8
    invoke-virtual {p2}, Lz76;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "getContext(...)"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p2, Lz76;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string v0, "date"

    .line 28
    .line 29
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/4 v0, 0x1

    .line 34
    new-array v0, v0, [Lkotlin/Pair;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    aput-object p2, v0, v1

    .line 38
    .line 39
    const-string p2, "app_eod_daily_card_click"

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2, v0}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public l(Lteam/opay/core/common/internal/BindingViewHolder;I)V
    .locals 5
    .param p1    # Lteam/opay/core/common/internal/BindingViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lz76;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lteam/opay/business/transfer/flow/api/EodInfo;

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lz76;

    .line 22
    .line 23
    iget-object v0, p1, Lz76;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    sget-object v1, Lxa6;->a:Lxa6;

    .line 26
    .line 27
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/EodInfo;->getDate()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    const-string v4, "MMM dd, yyyy"

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3, v4}, Lxa6;->b(JLjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p1, Lz76;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/EodInfo;->getCreditSumAmount()Lteam/opay/core/common/amount/MoneyAmount;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "--"

    .line 47
    .line 48
    const-string v3, ""

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object v1, v2

    .line 60
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p1, Lz76;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/EodInfo;->getDebitSumAmount()Lteam/opay/core/common/amount/MoneyAmount;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move-object v1, v2

    .line 79
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p1, Lz76;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/EodInfo;->getCreditCounts()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p1, Lz76;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    .line 97
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/EodInfo;->getDebitCounts()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p1, Lz76;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/EodInfo;->getNetDifferenceAmount()Lteam/opay/core/common/amount/MoneyAmount;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    move-object v2, v1

    .line 123
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/EodInfo;->getNetDifferenceAmount()Lteam/opay/core/common/amount/MoneyAmount;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-nez v0, :cond_4

    .line 131
    .line 132
    sget v0, Lteam/opay/core/common/R$color;->black_85:I

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/EodInfo;->getNetDifferenceAmount()Lteam/opay/core/common/amount/MoneyAmount;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    sget-object v1, Lteam/opay/core/common/amount/MoneyAmount;->Companion:Lteam/opay/core/common/amount/MoneyAmount$Companion;

    .line 140
    .line 141
    invoke-virtual {v1}, Lteam/opay/core/common/amount/MoneyAmount$Companion;->a()Lteam/opay/core/common/amount/MoneyAmount;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Lteam/opay/core/common/amount/MoneyAmount;->compareTo(Lteam/opay/core/common/amount/MoneyAmount;)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    const/4 v1, -0x1

    .line 150
    if-ne v0, v1, :cond_5

    .line 151
    .line 152
    sget v0, Lteam/opay/business/transfer/flow/R$color;->flow_FF2E62:I

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_5
    sget v0, Lteam/opay/core/common/R$color;->mint:I

    .line 156
    .line 157
    :goto_2
    iget-object v1, p1, Lz76;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 158
    .line 159
    invoke-virtual {p1}, Lz76;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-static {v2, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lz76;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const-string v1, "getRoot(...)"

    .line 179
    .line 180
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    new-instance v1, Lt35;

    .line 184
    .line 185
    invoke-direct {v1, p0, p2, p1}, Lt35;-><init>(Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;Lteam/opay/business/transfer/flow/api/EodInfo;Lz76;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v0, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method public n(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lz76;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, p1, v1}, Lz76;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lz76;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "inflate(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p1}, Lteam/opay/core/common/internal/BindingViewHolder;-><init>(Lxyf;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;->l(Lteam/opay/core/common/internal/BindingViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;->n(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final setDataList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/EodInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODAdapter;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
