.class public final Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;
.super Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;
.source "TransactionDetailCategoryHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004\u0012\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0012R\"\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\"\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;",
        "Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;",
        "Lbk7;",
        "binding",
        "Lkotlin/Function1;",
        "Landroid/widget/TextView;",
        "",
        "chooseCategoryClick",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$DetailAction;",
        "actionClickCallback",
        "<init>",
        "(Lbk7;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "",
        "position",
        "Lteam/opay/pay/history/details/BaseTransactionDetail;",
        "item",
        "a",
        "(ILteam/opay/pay/history/details/BaseTransactionDetail;)V",
        "Lbk7;",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "c",
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
.field public final a:Lbk7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/widget/TextView;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$DetailAction;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbk7;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lbk7;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbk7;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/widget/TextView;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$DetailAction;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lbk7;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getRoot(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->a:Lbk7;

    .line 19
    .line 20
    iput-object p2, p0, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->b:Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    iput-object p3, p0, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->c:Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->e(Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->d(Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->a:Lbk7;

    .line 6
    .line 7
    iget-object p0, p0, Lbk7;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    const-string v1, "categoryValue"

    .line 10
    .line 11
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final e(Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "getData(...)"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    instance-of p2, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$DetailAction;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    check-cast p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$DetailAction;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object p0, p0, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->c:Lkotlin/jvm/functions/Function1;

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method


# virtual methods
.method public a(ILteam/opay/pay/history/details/BaseTransactionDetail;)V
    .locals 7
    .param p2    # Lteam/opay/pay/history/details/BaseTransactionDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "item"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of p1, p2, Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    check-cast p2, Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object p2, v0

    .line 15
    :goto_0
    if-nez p2, :cond_1

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_1
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;->getCategoryChooser()Lteam/opay/pay/history/UserTransactionsDetailRepository$CategoryChooser;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v1, p0, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->a:Lbk7;

    .line 24
    .line 25
    iget-object v1, v1, Lbk7;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;->getTitle()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    const-string v2, "line"

    .line 36
    .line 37
    const-string v3, "categoryGroup"

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->a:Lbk7;

    .line 43
    .line 44
    iget-object p1, p1, Lbk7;->c:Landroidx/constraintlayout/widget/Group;

    .line 45
    .line 46
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->a:Lbk7;

    .line 53
    .line 54
    iget-object p1, p1, Lbk7;->f:Landroid/view/View;

    .line 55
    .line 56
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_2
    iget-object v5, p0, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->a:Lbk7;

    .line 64
    .line 65
    iget-object v5, v5, Lbk7;->c:Landroidx/constraintlayout/widget/Group;

    .line 66
    .line 67
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v5}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    iget-object v3, p0, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->a:Lbk7;

    .line 74
    .line 75
    iget-object v3, v3, Lbk7;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$CategoryChooser;->c()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    const-string v6, ""

    .line 82
    .line 83
    if-nez v5, :cond_3

    .line 84
    .line 85
    move-object v5, v6

    .line 86
    :cond_3
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object v3, p0, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->a:Lbk7;

    .line 90
    .line 91
    iget-object v3, v3, Lbk7;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$CategoryChooser;->b()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-nez p1, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    move-object v6, p1

    .line 101
    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->a:Lbk7;

    .line 105
    .line 106
    iget-object p1, p1, Lbk7;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    const-string v3, "categoryValue"

    .line 109
    .line 110
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    new-instance v3, Lkse;

    .line 114
    .line 115
    invoke-direct {v3, p0}, Lkse;-><init>(Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1, v3}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->a:Lbk7;

    .line 122
    .line 123
    iget-object p1, p1, Lbk7;->f:Landroid/view/View;

    .line 124
    .line 125
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;->getButtonList()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    if-eqz v2, :cond_6

    .line 133
    .line 134
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_5

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    const/4 v2, 0x0

    .line 142
    goto :goto_3

    .line 143
    :cond_6
    :goto_2
    const/4 v2, 0x1

    .line 144
    :goto_3
    xor-int/2addr v2, v4

    .line 145
    invoke-static {p1, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 146
    .line 147
    .line 148
    :goto_4
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;->getButtonList()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-eqz p1, :cond_7

    .line 153
    .line 154
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-eqz p2, :cond_8

    .line 159
    .line 160
    :cond_7
    const/4 v1, 0x1

    .line 161
    :cond_8
    if-nez v1, :cond_9

    .line 162
    .line 163
    move-object v0, p1

    .line 164
    :cond_9
    if-eqz v0, :cond_a

    .line 165
    .line 166
    new-instance p1, Lteam/opay/pay/history/details/holder/MoreActionDetailsAdapter;

    .line 167
    .line 168
    invoke-direct {p1}, Lteam/opay/pay/history/details/holder/MoreActionDetailsAdapter;-><init>()V

    .line 169
    .line 170
    .line 171
    iget-object p2, p0, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;->a:Lbk7;

    .line 172
    .line 173
    iget-object p2, p2, Lbk7;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 174
    .line 175
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 179
    .line 180
    .line 181
    new-instance p2, Llse;

    .line 182
    .line 183
    invoke-direct {p2, p0}, Llse;-><init>(Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 187
    .line 188
    .line 189
    :cond_a
    :goto_5
    return-void
.end method
