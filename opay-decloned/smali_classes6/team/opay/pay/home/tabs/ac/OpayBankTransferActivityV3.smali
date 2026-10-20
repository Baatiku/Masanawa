.class public final Lteam/opay/pay/home/tabs/ac/OpayBankTransferActivityV3;
.super Lteam/opay/pay/home/tabs/ac/Hilt_OpayBankTransferActivityV3;
.source "OpayBankTransferActivityV3.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0010\u001a\u00020\t8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0014\u001a\u00020\t8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u000b\u001a\u0004\u0008\u0012\u0010\r\"\u0004\u0008\u0013\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/OpayBankTransferActivityV3;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "g",
        "Z",
        "getNeedPaddingBottom",
        "()Z",
        "setNeedPaddingBottom",
        "(Z)V",
        "needPaddingBottom",
        "h",
        "getNeedPaddingTop",
        "setNeedPaddingTop",
        "needPaddingTop",
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
.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/tabs/ac/Hilt_OpayBankTransferActivityV3;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getNeedPaddingBottom()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferActivityV3;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public getNeedPaddingTop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferActivityV3;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/home/tabs/ac/Hilt_OpayBankTransferActivityV3;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string v1, "data"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v0

    .line 19
    :goto_0
    instance-of v1, p1, Lteam/opay/pay/wallet/transferhistory/TransferHistory;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast p1, Lteam/opay/pay/wallet/transferhistory/TransferHistory;

    .line 24
    .line 25
    move-object v2, p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v2, v0

    .line 28
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    const-string v3, "fromPaste"

    .line 36
    .line 37
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    move v8, p1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const/4 v8, 0x0

    .line 44
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    const-string v3, "key_jump_check"

    .line 51
    .line 52
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    move v9, p1

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    const/4 v9, 0x0

    .line 59
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    const-string v0, "key_busniess_scene_source"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_4
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 72
    .line 73
    sget-object v3, Lteam/opay/pay/home/tabs/ac/OPayBankTransferFragmentV2;->S:Lteam/opay/pay/home/tabs/ac/OPayBankTransferFragmentV2$Companion;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const-string v5, "key_bank_transfer_amount"

    .line 80
    .line 81
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const-string v5, ""

    .line 86
    .line 87
    if-nez v4, :cond_5

    .line 88
    .line 89
    move-object v6, v5

    .line 90
    goto :goto_4

    .line 91
    :cond_5
    move-object v6, v4

    .line 92
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    const-string v7, "key_bank_transfer_from"

    .line 97
    .line 98
    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    if-nez v4, :cond_6

    .line 103
    .line 104
    move-object v4, v5

    .line 105
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    const-string v10, "key_bank_transfer_credit_ratio"

    .line 110
    .line 111
    const/4 v11, 0x0

    .line 112
    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    const-string v11, "key_is_new_user"

    .line 121
    .line 122
    invoke-virtual {v10, v11, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    if-nez v0, :cond_7

    .line 127
    .line 128
    move-object v0, v5

    .line 129
    :cond_7
    const/4 v11, 0x0

    .line 130
    move-object v1, v3

    .line 131
    move-object v3, v4

    .line 132
    move v4, v7

    .line 133
    move-object v5, v6

    .line 134
    move v6, v10

    .line 135
    move-object v7, v11

    .line 136
    move-object v10, v0

    .line 137
    invoke-virtual/range {v1 .. v10}, Lteam/opay/pay/home/tabs/ac/OPayBankTransferFragmentV2$Companion;->a(Lteam/opay/pay/wallet/transferhistory/TransferHistory;Ljava/lang/String;FLjava/lang/String;ZLteam/opay/pay/home/tabs/BankInfo;ZZLjava/lang/String;)Lteam/opay/pay/home/tabs/ac/OPayBankTransferFragmentV2;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public setNeedPaddingBottom(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferActivityV3;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNeedPaddingTop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferActivityV3;->h:Z

    .line 2
    .line 3
    return-void
.end method
