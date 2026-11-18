.class public final Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;
.super Landroidx/paging/LoadStateAdapter;
.source "TransactionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/LoadStateAdapter<",
        "Lteam/opay/core/common/internal/BindingViewHolder<",
        "Ld96;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001f\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ%\u0010\u000e\u001a\u00020\u00072\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J%\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010)\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;",
        "Landroidx/paging/LoadStateAdapter;",
        "Lteam/opay/core/common/internal/BindingViewHolder;",
        "Ld96;",
        "",
        "fromRecords",
        "Lkotlin/Function0;",
        "",
        "callBack",
        "<init>",
        "(ZLkotlin/jvm/functions/Function0;)V",
        "holder",
        "Landroidx/paging/LoadState;",
        "loadState",
        "q",
        "(Lteam/opay/core/common/internal/BindingViewHolder;Landroidx/paging/LoadState;)V",
        "k",
        "(Landroidx/paging/LoadState;)Z",
        "Landroid/view/ViewGroup;",
        "parent",
        "s",
        "(Landroid/view/ViewGroup;Landroidx/paging/LoadState;)Lteam/opay/core/common/internal/BindingViewHolder;",
        "b",
        "Z",
        "c",
        "Lkotlin/jvm/functions/Function0;",
        "Lteam/opay/business/transfer/flow/internal/Period;",
        "d",
        "Lteam/opay/business/transfer/flow/internal/Period;",
        "getPeriod",
        "()Lteam/opay/business/transfer/flow/internal/Period;",
        "t",
        "(Lteam/opay/business/transfer/flow/internal/Period;)V",
        "period",
        "",
        "e",
        "Ljava/lang/String;",
        "getViewMoreTip",
        "()Ljava/lang/String;",
        "u",
        "(Ljava/lang/String;)V",
        "viewMoreTip",
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
.field public final b:Z

.field public final c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lteam/opay/business/transfer/flow/internal/Period;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callBack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/paging/LoadStateAdapter;-><init>()V

    .line 3
    iput-boolean p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;->b:Z

    .line 4
    iput-object p2, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;->c:Lkotlin/jvm/functions/Function0;

    .line 5
    sget-object p1, Lteam/opay/business/transfer/flow/internal/Period;->ALL_TIME:Lteam/opay/business/transfer/flow/internal/Period;

    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;->d:Lteam/opay/business/transfer/flow/internal/Period;

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;-><init>(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic p(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;->r(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final r(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;->c:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public k(Landroidx/paging/LoadState;)Z
    .locals 1
    .param p1    # Landroidx/paging/LoadState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "loadState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Landroidx/paging/LoadState$a;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/paging/LoadState;->a()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 20
    :goto_1
    return p1
.end method

.method public bridge synthetic m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/paging/LoadState;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;->q(Lteam/opay/core/common/internal/BindingViewHolder;Landroidx/paging/LoadState;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic n(Landroid/view/ViewGroup;Landroidx/paging/LoadState;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;->s(Landroid/view/ViewGroup;Landroidx/paging/LoadState;)Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public q(Lteam/opay/core/common/internal/BindingViewHolder;Landroidx/paging/LoadState;)V
    .locals 4
    .param p1    # Lteam/opay/core/common/internal/BindingViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/LoadState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Ld96;",
            ">;",
            "Landroidx/paging/LoadState;",
            ")V"
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
    const-string v0, "loadState"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p2, Landroidx/paging/LoadState$a;

    .line 12
    .line 13
    const-string v1, "layoutViewMore"

    .line 14
    .line 15
    const-string v2, "layoutLoading"

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Ld96;

    .line 24
    .line 25
    iget-object p2, p2, Ld96;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    .line 27
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Lg0g;->h(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ld96;

    .line 38
    .line 39
    iget-object p1, p1, Ld96;->g:Lteam/opay/core/widget/fillet/CorpConstraintLayout;

    .line 40
    .line 41
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;->d:Lteam/opay/business/transfer/flow/internal/Period;

    .line 50
    .line 51
    sget-object v3, Lteam/opay/business/transfer/flow/internal/Period;->ALL_TIME:Lteam/opay/business/transfer/flow/internal/Period;

    .line 52
    .line 53
    if-ne v0, v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {p2}, Landroidx/paging/LoadState;->a()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Ld96;

    .line 66
    .line 67
    iget-object p2, p2, Ld96;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    .line 69
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p2}, Lg0g;->d(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;->e:Ljava/lang/String;

    .line 76
    .line 77
    if-eqz p2, :cond_1

    .line 78
    .line 79
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ld96;

    .line 84
    .line 85
    iget-object v0, v0, Ld96;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Ld96;

    .line 95
    .line 96
    iget-object p2, p2, Ld96;->g:Lteam/opay/core/widget/fillet/CorpConstraintLayout;

    .line 97
    .line 98
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p2}, Lg0g;->h(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Ld96;

    .line 109
    .line 110
    iget-object p2, p2, Ld96;->b:Lcom/google/android/material/button/MaterialButton;

    .line 111
    .line 112
    const-string v0, "actionConfirm"

    .line 113
    .line 114
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-boolean v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;->b:Z

    .line 118
    .line 119
    xor-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    invoke-static {p2, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Ld96;

    .line 129
    .line 130
    iget-object p1, p1, Ld96;->b:Lcom/google/android/material/button/MaterialButton;

    .line 131
    .line 132
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance p2, Lmxe;

    .line 136
    .line 137
    invoke-direct {p2, p0}, Lmxe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;)V

    .line 138
    .line 139
    .line 140
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Ld96;

    .line 149
    .line 150
    iget-object p2, p2, Ld96;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 151
    .line 152
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {p2}, Lg0g;->d(Landroid/view/View;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Ld96;

    .line 163
    .line 164
    iget-object p1, p1, Ld96;->g:Lteam/opay/core/widget/fillet/CorpConstraintLayout;

    .line 165
    .line 166
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 170
    .line 171
    .line 172
    :goto_0
    return-void
.end method

.method public s(Landroid/view/ViewGroup;Landroidx/paging/LoadState;)Lteam/opay/core/common/internal/BindingViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/LoadState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/paging/LoadState;",
            ")",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Ld96;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "loadState"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v0, p1, v1}, Ld96;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ld96;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "inflate(...)"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p1}, Lteam/opay/core/common/internal/BindingViewHolder;-><init>(Lxyf;)V

    .line 32
    .line 33
    .line 34
    return-object p2
.end method

.method public final t(Lteam/opay/business/transfer/flow/internal/Period;)V
    .locals 1
    .param p1    # Lteam/opay/business/transfer/flow/internal/Period;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;->d:Lteam/opay/business/transfer/flow/internal/Period;

    .line 7
    .line 8
    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
