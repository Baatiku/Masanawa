.class public final Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$b;
.super Ljava/lang/Object;
.source "TransactionHomeFragment.kt"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$b",
        "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
        "tab",
        "",
        "onTabSelected",
        "(Lcom/google/android/material/tabs/TabLayout$Tab;)V",
        "onTabUnselected",
        "onTabReselected",
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
.field public final synthetic a:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$b;->a:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$b;->a:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 11
    .line 12
    invoke-static {v2}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;->M(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-lt v1, v2, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v2, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$b;->a:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 24
    .line 25
    invoke-static {v2}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;->M(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lkotlin/Pair;

    .line 34
    .line 35
    iget-object v3, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$b;->a:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 36
    .line 37
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lteam/opay/business/transfer/flow/api/MenuInfo;

    .line 42
    .line 43
    invoke-virtual {v2}, Lteam/opay/business/transfer/flow/api/MenuInfo;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    const-string v2, ""

    .line 50
    .line 51
    :cond_2
    iget-object v4, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$b;->a:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 52
    .line 53
    invoke-static {v4}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;->M(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lkotlin/Pair;

    .line 62
    .line 63
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionListFragment;

    .line 68
    .line 69
    invoke-static {v3, v2, v4}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;->R(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;Ljava/lang/String;Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionListFragment;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$b;->a:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const/4 p1, 0x0

    .line 82
    :goto_1
    const/4 v3, 0x1

    .line 83
    invoke-static {v2, p1, v1, v3}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;->S(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;Landroid/view/View;IZ)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$b;->a:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 87
    .line 88
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;->O(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;)Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->y()Ljava/util/HashMap;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$b;->a:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 97
    .line 98
    invoke-static {v1}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;->N(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;

    .line 107
    .line 108
    if-eqz p1, :cond_4

    .line 109
    .line 110
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;->c()Lteam/opay/business/transfer/flow/api/CategoryListResp;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_4

    .line 115
    .line 116
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/CategoryListResp;->a()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_4

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    goto :goto_2

    .line 127
    :cond_4
    const/4 p1, 0x0

    .line 128
    :goto_2
    const/4 v1, 0x3

    .line 129
    if-le p1, v1, :cond_5

    .line 130
    .line 131
    const/4 v0, 0x1

    .line 132
    :cond_5
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$b;->a:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 133
    .line 134
    new-instance v1, Landroid/os/Bundle;

    .line 135
    .line 136
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v2, "showFilters"

    .line 140
    .line 141
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v1}, Lteam/opay/core/common/base/BaseLazyFragment;->onFragmentChanged(Landroid/os/Bundle;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$b;->a:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    const/4 v2, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    :goto_1
    invoke-static {v0, v1, p1, v2}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;->S(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;Landroid/view/View;IZ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
