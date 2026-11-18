.class public final Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;
.super Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;
.source "TransactionCostReductionHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u001a\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0011R(\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;",
        "Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;",
        "Lck7;",
        "binding",
        "Lkotlin/Function2;",
        "Landroid/widget/CompoundButton;",
        "",
        "",
        "callback",
        "<init>",
        "(Lck7;Lkotlin/jvm/functions/Function2;)V",
        "",
        "position",
        "Lteam/opay/pay/history/details/BaseTransactionDetail;",
        "data",
        "a",
        "(ILteam/opay/pay/history/details/BaseTransactionDetail;)V",
        "Lck7;",
        "b",
        "Lkotlin/jvm/functions/Function2;",
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
.field public final a:Lck7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/widget/CompoundButton;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lck7;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1    # Lck7;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lck7;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/widget/CompoundButton;",
            "-",
            "Ljava/lang/Boolean;",
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
    invoke-virtual {p1}, Lck7;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

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
    iput-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;->a:Lck7;

    .line 19
    .line 20
    iput-object p2, p0, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;->b:Lkotlin/jvm/functions/Function2;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function2;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;->e(Lkotlin/jvm/functions/Function2;Landroid/widget/CompoundButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;->d(Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;->a:Lck7;

    .line 2
    .line 3
    iget-object v0, v0, Lck7;->d:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;->a:Lck7;

    .line 15
    .line 16
    iget-object p0, p0, Lck7;->c:Landroid/widget/ImageView;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, p0, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;->a:Lck7;

    .line 27
    .line 28
    iget-object p0, p0, Lck7;->c:Landroid/widget/ImageView;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static final e(Lkotlin/jvm/functions/Function2;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(ILteam/opay/pay/history/details/BaseTransactionDetail;)V
    .locals 3
    .param p2    # Lteam/opay/pay/history/details/BaseTransactionDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "data"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of p1, p2, Lteam/opay/pay/history/details/TransactionSplitBody;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    check-cast p2, Lteam/opay/pay/history/details/TransactionSplitBody;

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
    return-void

    .line 18
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;->a:Lck7;

    .line 19
    .line 20
    iget-object p1, p1, Lck7;->e:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {p2}, Lteam/opay/pay/history/details/TransactionSplitBody;->getTitle()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lteam/opay/pay/history/details/TransactionSplitBody;->getContent()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, "ivExpandArrow"

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;->a:Lck7;

    .line 45
    .line 46
    iget-object p1, p1, Lck7;->c:Landroid/widget/ImageView;

    .line 47
    .line 48
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;->a:Lck7;

    .line 55
    .line 56
    iget-object p1, p1, Lck7;->c:Landroid/widget/ImageView;

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/16 v1, 0xc

    .line 62
    .line 63
    invoke-static {v1}, Ljmf;->d(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {p1, v1}, Lteam/opay/core/android/ViewKt;->c(Landroid/view/View;I)V

    .line 68
    .line 69
    .line 70
    const-string v1, "apply(...)"

    .line 71
    .line 72
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lgse;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lgse;-><init>(Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;->a:Lck7;

    .line 84
    .line 85
    iget-object p1, p1, Lck7;->d:Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {p2}, Lteam/opay/pay/history/details/TransactionSplitBody;->getContent()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    :goto_1
    iget-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;->a:Lck7;

    .line 96
    .line 97
    iget-object p1, p1, Lck7;->c:Landroid/widget/ImageView;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;->a:Lck7;

    .line 103
    .line 104
    iget-object p1, p1, Lck7;->c:Landroid/widget/ImageView;

    .line 105
    .line 106
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    iget-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;->a:Lck7;

    .line 113
    .line 114
    iget-object p1, p1, Lck7;->b:Landroidx/appcompat/widget/SwitchCompat;

    .line 115
    .line 116
    invoke-virtual {p2}, Lteam/opay/pay/history/details/TransactionSplitBody;->getStatus()Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;->a:Lck7;

    .line 130
    .line 131
    iget-object p1, p1, Lck7;->b:Landroidx/appcompat/widget/SwitchCompat;

    .line 132
    .line 133
    iget-object v1, p0, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;->b:Lkotlin/jvm/functions/Function2;

    .line 134
    .line 135
    if-eqz v1, :cond_4

    .line 136
    .line 137
    new-instance v0, Lhse;

    .line 138
    .line 139
    invoke-direct {v0, v1}, Lhse;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 143
    .line 144
    .line 145
    sget-object p1, Lx7b;->a:Lx7b;

    .line 146
    .line 147
    invoke-virtual {p2}, Lteam/opay/pay/history/details/TransactionSplitBody;->getStatus()Ljava/lang/Boolean;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-eqz p2, :cond_5

    .line 156
    .line 157
    const-string p2, "1"

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    const-string p2, "0"

    .line 161
    .line 162
    :goto_3
    const-string v0, "status"

    .line 163
    .line 164
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    const/4 v0, 0x1

    .line 169
    new-array v0, v0, [Lkotlin/Pair;

    .line 170
    .line 171
    const/4 v1, 0x0

    .line 172
    aput-object p2, v0, v1

    .line 173
    .line 174
    const-string p2, "transaction_details_split_switch_show"

    .line 175
    .line 176
    invoke-virtual {p1, p2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method
