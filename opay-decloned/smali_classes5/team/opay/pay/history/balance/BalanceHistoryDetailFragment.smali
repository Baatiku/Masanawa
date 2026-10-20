.class public final Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;
.super Lteam/opay/pay/history/balance/Hilt_BalanceHistoryDetailFragment;
.source "BalanceHistoryDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/history/balance/Hilt_BalanceHistoryDetailFragment<",
        "Lqb6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u0000  2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\'\u0010\u0015\u001a\n \u0014*\u0004\u0018\u00010\u00050\u00052\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u001f\u001a\u00020\t*\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lqb6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroid/widget/TextView;",
        "textView",
        "",
        "operationType",
        "T",
        "(Landroid/widget/TextView;Ljava/lang/String;)V",
        "name",
        "value",
        "kotlin.jvm.PlatformType",
        "Q",
        "(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;",
        "Lteam/opay/pay/history/balance/BalanceHistoryItem;",
        "balanceHistoryItem",
        "P",
        "(Lteam/opay/pay/history/balance/BalanceHistoryItem;)V",
        "p",
        "Lteam/opay/pay/history/balance/BalanceHistoryItem;",
        "R",
        "(Landroid/view/View;)Lkotlin/Unit;",
        "addToTransactionDetails",
        "q",
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
.field public static final q:Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public p:Lteam/opay/pay/history/balance/BalanceHistoryItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->q:Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment$1;->INSTANCE:Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/history/balance/Hilt_BalanceHistoryDetailFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->S(Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->p:Lteam/opay/pay/history/balance/BalanceHistoryItem;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "balanceHistoryItem"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {p0, v0}, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->P(Lteam/opay/pay/history/balance/BalanceHistoryItem;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method


# virtual methods
.method public final P(Lteam/opay/pay/history/balance/BalanceHistoryItem;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;->n:Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity$Companion;

    .line 8
    .line 9
    const-string v1, "balance_history"

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final Q(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/history/balance/Hilt_BalanceHistoryDetailFragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lteam/opay/pay/R$layout;->transaction_item:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lbze;->bind(Landroid/view/View;)Lbze;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "bind(...)"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, v1, Lbze;->b:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, v1, Lbze;->c:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public final R(Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lqb6;

    .line 6
    .line 7
    iget-object v0, v0, Lqb6;->o:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p1
.end method

.method public final T(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "PLUS"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p2, "+"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    sget v0, Lteam/opay/pay/R$color;->mint:I

    .line 19
    .line 20
    invoke-static {p2, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v0, "SUBTRACT"

    .line 29
    .line 30
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    const-string p2, "-"

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    sget v0, Lteam/opay/pay/R$color;->red_pink:I

    .line 46
    .line 47
    invoke-static {p2, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    sget-object v0, Lteam/opay/pay/history/balance/BalanceHistoryDetailActivity;->f:Lteam/opay/pay/history/balance/BalanceHistoryDetailActivity$Companion;

    .line 17
    .line 18
    invoke-virtual {v0}, Lteam/opay/pay/history/balance/BalanceHistoryDetailActivity$Companion;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p1, p2

    .line 28
    :goto_0
    const-string v0, "null cannot be cast to non-null type team.opay.pay.history.balance.BalanceHistoryItem"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast p1, Lteam/opay/pay/history/balance/BalanceHistoryItem;

    .line 34
    .line 35
    iput-object p1, p0, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->p:Lteam/opay/pay/history/balance/BalanceHistoryItem;

    .line 36
    .line 37
    const-string v0, "balanceHistoryItem"

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    move-object p1, p2

    .line 45
    :cond_1
    invoke-virtual {p1}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getImgUrl()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lqb6;

    .line 63
    .line 64
    iget-object p1, p1, Lqb6;->r:Landroid/widget/ImageView;

    .line 65
    .line 66
    const-string v1, "transactionIcon"

    .line 67
    .line 68
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->p:Lteam/opay/pay/history/balance/BalanceHistoryItem;

    .line 72
    .line 73
    if-nez v1, :cond_3

    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    move-object v1, p2

    .line 79
    :cond_3
    invoke-virtual {v1}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getImgUrl()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v3, 0x2

    .line 89
    invoke-static {p1, v1, v2, v3, p2}, Lme7;->s(Landroid/widget/ImageView;Landroid/net/Uri;ZILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lqb6;

    .line 98
    .line 99
    iget-object p1, p1, Lqb6;->r:Landroid/widget/ImageView;

    .line 100
    .line 101
    sget v1, Lteam/opay/pay/R$drawable;->ic_misc_transaction:I

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    .line 105
    .line 106
    :goto_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lqb6;

    .line 111
    .line 112
    iget-object p1, p1, Lqb6;->t:Landroid/widget/TextView;

    .line 113
    .line 114
    iget-object v1, p0, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->p:Lteam/opay/pay/history/balance/BalanceHistoryItem;

    .line 115
    .line 116
    if-nez v1, :cond_5

    .line 117
    .line 118
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    move-object v1, p2

    .line 122
    :cond_5
    invoke-virtual {v1}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getTitle()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    sget-object p1, Lbd9;->a:Lbd9;

    .line 130
    .line 131
    iget-object v1, p0, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->p:Lteam/opay/pay/history/balance/BalanceHistoryItem;

    .line 132
    .line 133
    if-nez v1, :cond_6

    .line 134
    .line 135
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    move-object v1, p2

    .line 139
    :cond_6
    invoke-virtual {v1}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iget-object v2, p0, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->p:Lteam/opay/pay/history/balance/BalanceHistoryItem;

    .line 148
    .line 149
    if-nez v2, :cond_7

    .line 150
    .line 151
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    move-object v2, p2

    .line 155
    :cond_7
    invoke-virtual {v2}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-static {v2}, Ldg0;->a(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/core/api/Country;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {p1, v1, v2}, Lbd9;->i(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    check-cast v2, Lqb6;

    .line 172
    .line 173
    iget-object v2, v2, Lqb6;->l:Landroid/widget/TextView;

    .line 174
    .line 175
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Lqb6;

    .line 183
    .line 184
    iget-object v1, v1, Lqb6;->m:Landroid/widget/TextView;

    .line 185
    .line 186
    iget-object v2, p0, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->p:Lteam/opay/pay/history/balance/BalanceHistoryItem;

    .line 187
    .line 188
    if-nez v2, :cond_8

    .line 189
    .line 190
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    move-object v2, p2

    .line 194
    :cond_8
    invoke-virtual {v2}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {p1, v2}, Lbd9;->a(Lteam/opay/core/android/money/MoneyAmount;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    check-cast v1, Lqb6;

    .line 214
    .line 215
    iget-object v1, v1, Lqb6;->s:Landroid/widget/TextView;

    .line 216
    .line 217
    const-string v2, "transactionSign"

    .line 218
    .line 219
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-object v2, p0, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->p:Lteam/opay/pay/history/balance/BalanceHistoryItem;

    .line 223
    .line 224
    if-nez v2, :cond_9

    .line 225
    .line 226
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    move-object v2, p2

    .line 230
    :cond_9
    invoke-virtual {v2}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getOperationType()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {p0, v1, v2}, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->T(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    check-cast v1, Lqb6;

    .line 242
    .line 243
    iget-object v1, v1, Lqb6;->n:Landroid/widget/TextView;

    .line 244
    .line 245
    sget-object v2, Ld1f;->a:Ld1f;

    .line 246
    .line 247
    iget-object v3, p0, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->p:Lteam/opay/pay/history/balance/BalanceHistoryItem;

    .line 248
    .line 249
    if-nez v3, :cond_a

    .line 250
    .line 251
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    move-object v3, p2

    .line 255
    :cond_a
    invoke-virtual {v3}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getDateUnix()Ljava/util/Date;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    if-eqz v3, :cond_b

    .line 260
    .line 261
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 262
    .line 263
    .line 264
    move-result-wide v3

    .line 265
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    goto :goto_3

    .line 270
    :cond_b
    move-object v3, p2

    .line 271
    :goto_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v2, v3}, Ld1f;->c(Ljava/lang/String;)Ljava/util/Date;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    if-eqz v2, :cond_c

    .line 280
    .line 281
    invoke-static {v2}, Lg33;->e(Ljava/util/Date;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    goto :goto_4

    .line 286
    :cond_c
    move-object v2, p2

    .line 287
    :goto_4
    if-nez v2, :cond_d

    .line 288
    .line 289
    const-string v2, ""

    .line 290
    .line 291
    :cond_d
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    sget v1, Lteam/opay/pay/R$string;->receipt_transaction_number_label:I

    .line 295
    .line 296
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    const-string v2, "getString(...)"

    .line 301
    .line 302
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-object v2, p0, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->p:Lteam/opay/pay/history/balance/BalanceHistoryItem;

    .line 306
    .line 307
    if-nez v2, :cond_e

    .line 308
    .line 309
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    move-object v2, p2

    .line 313
    :cond_e
    invoke-virtual {v2}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getTransactionNo()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-virtual {p0, v1, v2}, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->Q(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    const-string v2, "createItem(...)"

    .line 322
    .line 323
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, v1}, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->R(Landroid/view/View;)Lkotlin/Unit;

    .line 327
    .line 328
    .line 329
    iget-object v1, p0, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->p:Lteam/opay/pay/history/balance/BalanceHistoryItem;

    .line 330
    .line 331
    if-nez v1, :cond_f

    .line 332
    .line 333
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    move-object v1, p2

    .line 337
    :cond_f
    invoke-virtual {v1}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getBalanceAfter()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    iget-object v2, p0, Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;->p:Lteam/opay/pay/history/balance/BalanceHistoryItem;

    .line 346
    .line 347
    if-nez v2, :cond_10

    .line 348
    .line 349
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    goto :goto_5

    .line 353
    :cond_10
    move-object p2, v2

    .line 354
    :goto_5
    invoke-virtual {p2}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getBalanceAfter()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    invoke-static {p2}, Ldg0;->a(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/core/api/Country;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    invoke-virtual {p1, v1, p2}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 367
    .line 368
    .line 369
    move-result-object p2

    .line 370
    check-cast p2, Lqb6;

    .line 371
    .line 372
    iget-object p2, p2, Lqb6;->b:Landroid/widget/TextView;

    .line 373
    .line 374
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    check-cast p1, Lqb6;

    .line 382
    .line 383
    iget-object p1, p1, Lqb6;->h:Landroid/widget/TextView;

    .line 384
    .line 385
    const-string p2, "labelChatWith"

    .line 386
    .line 387
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    new-instance p2, Lgg0;

    .line 391
    .line 392
    invoke-direct {p2, p0}, Lgg0;-><init>(Lteam/opay/pay/history/balance/BalanceHistoryDetailFragment;)V

    .line 393
    .line 394
    .line 395
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 396
    .line 397
    .line 398
    return-void
.end method
