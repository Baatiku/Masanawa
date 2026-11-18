.class public final Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "TotalAssetsAmountAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/cashier/result/MulitSpanItemEntry;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u000c\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/cashier/result/MulitSpanItemEntry;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "entry",
        "",
        "l",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V",
        "",
        "hide",
        "o",
        "(Z)V",
        "Landroid/content/Context;",
        "context",
        "Lteam/opay/core/android/money/MoneyAmount;",
        "amount",
        "",
        "n",
        "(Landroid/content/Context;Lteam/opay/core/android/money/MoneyAmount;)Ljava/lang/String;",
        "a",
        "Z",
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
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    const/16 v0, 0x2711

    .line 6
    .line 7
    sget v1, Lteam/opay/pay/R$layout;->item_assets_title_section:I

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x2712

    .line 13
    .line 14
    sget v1, Lteam/opay/pay/R$layout;->omain_item_total_assets_amount:I

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic k(Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;Lcom/opay/team/newhome/bean/TotalAssetsAccountsItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;->m(Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;Lcom/opay/team/newhome/bean/TotalAssetsAccountsItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final m(Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;Lcom/opay/team/newhome/bean/TotalAssetsAccountsItem;)Lkotlin/Unit;
    .locals 9

    .line 1
    sget-object v0, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string p0, "mContext"

    .line 6
    .line 7
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/TotalAssetsAccountsItem;->d()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const-string p0, ""

    .line 17
    .line 18
    :cond_0
    move-object v2, p0

    .line 19
    const/4 p0, 0x0

    .line 20
    new-array v6, p0, [Lkotlin/Pair;

    .line 21
    .line 22
    const/16 v7, 0x1c

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-static/range {v0 .. v8}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;->l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/cashier/result/MulitSpanItemEntry;
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
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->c()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x2711

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    sget v0, Lteam/opay/pay/R$id;->title_balance:I

    .line 17
    .line 18
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 27
    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object p2, v0

    .line 39
    :goto_0
    instance-of v1, p2, Lcom/opay/team/newhome/bean/TotalAssetsAccountsItem;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    move-object v0, p2

    .line 44
    check-cast v0, Lcom/opay/team/newhome/bean/TotalAssetsAccountsItem;

    .line 45
    .line 46
    :cond_2
    if-nez v0, :cond_3

    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    sget p2, Lteam/opay/pay/R$id;->total_assets_balance_title:I

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/TotalAssetsAccountsItem;->c()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, p2, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/TotalAssetsAccountsItem;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_6

    .line 63
    .line 64
    iget-boolean v1, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;->a:Z

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    sget p2, Lteam/opay/pay/R$string;->omain_pay_balance_place_holder:I

    .line 69
    .line 70
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    const-string v2, "mContext"

    .line 78
    .line 79
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p0, v1, p2}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;->n(Landroid/content/Context;Lteam/opay/core/android/money/MoneyAmount;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    :goto_1
    sget v1, Lteam/opay/pay/R$id;->total_assets_balance_amount:I

    .line 91
    .line 92
    sget v2, Lteam/opay/pay/R$string;->account_balance_unknown:I

    .line 93
    .line 94
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_5

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    const-string p2, ""

    .line 106
    .line 107
    :goto_2
    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 108
    .line 109
    .line 110
    :cond_6
    sget p2, Lteam/opay/pay/R$id;->total_assets_balance_layout:I

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string p2, "getView(...)"

    .line 117
    .line 118
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance p2, Ltpe;

    .line 122
    .line 123
    invoke-direct {p2, p0, v0}, Ltpe;-><init>(Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;Lcom/opay/team/newhome/bean/TotalAssetsAccountsItem;)V

    .line 124
    .line 125
    .line 126
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 127
    .line 128
    .line 129
    :goto_3
    return-void
.end method

.method public final n(Landroid/content/Context;Lteam/opay/core/android/money/MoneyAmount;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget p2, Lteam/opay/pay/R$string;->account_balance_unknown:I

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "getString(...)"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    sget-object p1, Lbd9;->a:Lbd9;

    .line 16
    .line 17
    sget-object v0, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;->a:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
