.class final Lteam/opay/sme/store/widget/RankingView$RankindAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RankingView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/sme/store/widget/RankingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RankindAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/core/common/internal/BindingViewHolder<",
        "Liwd;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0082\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J*\u0010\u000b\u001a\r\u0012\t\u0012\u00070\u0003\u00a2\u0006\u0002\u0008\n0\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ%\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u000e\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0019\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0013\"\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0015\u001a\u0004\u0008\u001b\u0010\u0013\"\u0004\u0008\u001c\u0010\u0018R6\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/sme/store/widget/RankingView$RankindAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/core/common/internal/BindingViewHolder;",
        "Liwd;",
        "<init>",
        "(Lteam/opay/sme/store/widget/RankingView;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "l",
        "(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;",
        "holder",
        "position",
        "",
        "k",
        "(Lteam/opay/core/common/internal/BindingViewHolder;I)V",
        "getItemCount",
        "()I",
        "a",
        "I",
        "getRankingColor",
        "n",
        "(I)V",
        "rankingColor",
        "b",
        "getMaxProgress",
        "m",
        "maxProgress",
        "",
        "Lteam/opay/sme/store/api/ReportRankInfo;",
        "value",
        "c",
        "Ljava/util/List;",
        "getDataList",
        "()Ljava/util/List;",
        "setDataList",
        "(Ljava/util/List;)V",
        "dataList",
        "business-sme-store_release"
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
.field public a:I

.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/ReportRankInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic d:Lteam/opay/sme/store/widget/RankingView;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/widget/RankingView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->d:Lteam/opay/sme/store/widget/RankingView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->a:I

    .line 8
    .line 9
    const/16 p1, 0x64

    .line 10
    .line 11
    iput p1, p0, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->b:I

    .line 12
    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->c:Ljava/util/List;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->c:Ljava/util/List;

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

.method public k(Lteam/opay/core/common/internal/BindingViewHolder;I)V
    .locals 8
    .param p1    # Lteam/opay/core/common/internal/BindingViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Liwd;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "holder"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->c:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {v2, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lteam/opay/sme/store/api/ReportRankInfo;

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget v2, p0, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->a:I

    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    if-eq v2, v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Liwd;

    .line 29
    .line 30
    iget-object v2, v2, Liwd;->f:Landroid/widget/ProgressBar;

    .line 31
    .line 32
    iget v3, p0, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->a:I

    .line 33
    .line 34
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Liwd;

    .line 46
    .line 47
    iget-object v2, v2, Liwd;->f:Landroid/widget/ProgressBar;

    .line 48
    .line 49
    iget v3, p0, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->b:I

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lteam/opay/sme/store/api/ReportRankInfo;->d()Lteam/opay/core/common/amount/MoneyAmount;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2}, Lteam/opay/core/common/amount/MoneyAmount;->getValue()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-static {v2}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    :cond_2
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 73
    .line 74
    :cond_3
    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Liwd;

    .line 83
    .line 84
    iget-object v3, v3, Liwd;->f:Landroid/widget/ProgressBar;

    .line 85
    .line 86
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Liwd;

    .line 94
    .line 95
    iget-object v2, v2, Liwd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    .line 97
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    sget v4, Lteam/opay/sme/store/R$string;->sme_store_branch_id_holder:I

    .line 104
    .line 105
    invoke-virtual {p2}, Lteam/opay/sme/store/api/ReportRankInfo;->a()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    const-string v6, ""

    .line 110
    .line 111
    if-nez v5, :cond_4

    .line 112
    .line 113
    move-object v5, v6

    .line 114
    :cond_4
    new-array v7, v1, [Ljava/lang/Object;

    .line 115
    .line 116
    aput-object v5, v7, v0

    .line 117
    .line 118
    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Liwd;

    .line 130
    .line 131
    iget-object v2, v2, Liwd;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    .line 133
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 134
    .line 135
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    sget v4, Lteam/opay/sme/store/R$string;->sme_store_branch_name_holder:I

    .line 140
    .line 141
    invoke-virtual {p2}, Lteam/opay/sme/store/api/ReportRankInfo;->b()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    if-nez v5, :cond_5

    .line 146
    .line 147
    move-object v5, v6

    .line 148
    :cond_5
    new-array v1, v1, [Ljava/lang/Object;

    .line 149
    .line 150
    aput-object v5, v1, v0

    .line 151
    .line 152
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Liwd;

    .line 164
    .line 165
    iget-object v0, v0, Liwd;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 166
    .line 167
    invoke-virtual {p2}, Lteam/opay/sme/store/api/ReportRankInfo;->d()Lteam/opay/core/common/amount/MoneyAmount;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    if-eqz v1, :cond_6

    .line 172
    .line 173
    invoke-virtual {v1, v6}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    goto :goto_0

    .line 178
    :cond_6
    const/4 v1, 0x0

    .line 179
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Liwd;

    .line 187
    .line 188
    iget-object p1, p1, Liwd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 189
    .line 190
    invoke-virtual {p2}, Lteam/opay/sme/store/api/ReportRankInfo;->c()I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;
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
            "Liwd;",
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
    invoke-static {v0, p1, v1}, Liwd;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Liwd;

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

.method public final m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public final n(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->k(Lteam/opay/core/common/internal/BindingViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->l(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;

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
            "Lteam/opay/sme/store/api/ReportRankInfo;",
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
    iput-object p1, p0, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->c:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
