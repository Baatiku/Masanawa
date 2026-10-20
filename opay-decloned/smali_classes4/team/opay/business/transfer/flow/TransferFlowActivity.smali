.class public final Lteam/opay/business/transfer/flow/TransferFlowActivity;
.super Ldx6;
.source "TransferFlowActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/TransferFlowActivity;",
        "Lteam/opay/core/common/base/HiltActivity;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "d0",
        "(Landroid/content/Intent;)V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "e0",
        "(Landroidx/fragment/app/Fragment;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
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
    .locals 1

    .line 1
    sget v0, Lteam/opay/business/transfer/flow/R$layout;->flow_activity_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ldx6;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final d0(Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    sget-object v1, Lkk8;->c:Lkk8;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "uri -> "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x2

    .line 30
    invoke-static {v1, v2, v0, v3, v0}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-static {p1}, Lvd;->c(Landroid/net/Uri;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_1
    if-eqz v0, :cond_6

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    sparse-switch v1, :sswitch_data_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :sswitch_0
    const-string p1, "opay://transfer/transferFlow/downloadTicket"

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    sget-object p1, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$Companion;

    .line 59
    .line 60
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$Companion;->a()Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Lteam/opay/business/transfer/flow/TransferFlowActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :sswitch_1
    const-string v1, "opay://transfer/transferFlow/detail"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    sget-object v0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionDetailFragment;->u:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionDetailFragment$Companion;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionDetailFragment$Companion;->a(Landroid/net/Uri;)Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionDetailFragment;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Lteam/opay/business/transfer/flow/TransferFlowActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :sswitch_2
    const-string p1, "opay://transfer/transferFlow/dailySummary"

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_4

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    sget-object p1, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->n:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$Companion;

    .line 97
    .line 98
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$Companion;->a()Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Lteam/opay/business/transfer/flow/TransferFlowActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :sswitch_3
    const-string v1, "opay://transfer/transferFlow/transactionList"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_5

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    sget-object v0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;->q:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$Companion;

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$Companion;->a(Landroid/net/Uri;)Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Lteam/opay/business/transfer/flow/TransferFlowActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 126
    .line 127
    .line 128
    :goto_2
    return-void

    .line 129
    :sswitch_data_0
    .sparse-switch
        -0x7086c497 -> :sswitch_3
        -0x44862460 -> :sswitch_2
        -0x3202951c -> :sswitch_1
        0x10eea947 -> :sswitch_0
    .end sparse-switch
.end method

.method private final e0(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    sget v0, Lteam/opay/business/transfer/flow/R$id;->fragment_container:I

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lre6;->k(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Ldx6;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lteam/opay/business/transfer/flow/TransferFlowActivity;->d0(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
