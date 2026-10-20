.class public final Lteam/opay/business/transfer/flow/transactions/transactionList/a$a;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "TransactionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/transfer/flow/transactions/transactionList/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/business/transfer/flow/transactions/transactionList/a$a",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;",
        "oldItem",
        "newItem",
        "",
        "d",
        "(Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;)Z",
        "e",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;

    .line 2
    .line 3
    check-cast p2, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionList/a$a;->d(Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;

    .line 2
    .line 3
    check-cast p2, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionList/a$a;->e(Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public d(Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;)Z
    .locals 1

    .line 1
    const-string v0, "oldItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "newItem"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public e(Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;)Z
    .locals 5

    .line 1
    const-string v0, "oldItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "newItem"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    instance-of v0, p2, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;

    .line 23
    .line 24
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;->a()Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getOrderNo()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v3, p2

    .line 33
    check-cast v3, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;

    .line 34
    .line 35
    invoke-virtual {v3}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;->a()Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getOrderNo()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    instance-of v3, p1, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$SeparatorModel;

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    instance-of v3, p2, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$SeparatorModel;

    .line 57
    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    move-object v3, p1

    .line 61
    check-cast v3, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$SeparatorModel;

    .line 62
    .line 63
    invoke-virtual {v3}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$SeparatorModel;->a()Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getOrderNo()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    move-object v4, p2

    .line 72
    check-cast v4, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$SeparatorModel;

    .line 73
    .line 74
    invoke-virtual {v4}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$SeparatorModel;->a()Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getOrderNo()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const/4 v3, 0x0

    .line 91
    :goto_1
    instance-of v4, p1, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$BalanceSeparatorModel;

    .line 92
    .line 93
    if-eqz v4, :cond_2

    .line 94
    .line 95
    instance-of v4, p2, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$BalanceSeparatorModel;

    .line 96
    .line 97
    if-eqz v4, :cond_2

    .line 98
    .line 99
    check-cast p1, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$BalanceSeparatorModel;

    .line 100
    .line 101
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$BalanceSeparatorModel;->a()Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getOrderNo()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p2, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$BalanceSeparatorModel;

    .line 110
    .line 111
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$BalanceSeparatorModel;->a()Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getOrderNo()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_2

    .line 124
    .line 125
    const/4 p1, 0x1

    .line 126
    goto :goto_2

    .line 127
    :cond_2
    const/4 p1, 0x0

    .line 128
    :goto_2
    if-nez v0, :cond_3

    .line 129
    .line 130
    if-nez v3, :cond_3

    .line 131
    .line 132
    if-eqz p1, :cond_4

    .line 133
    .line 134
    :cond_3
    const/4 v1, 0x1

    .line 135
    :cond_4
    return v1
.end method
