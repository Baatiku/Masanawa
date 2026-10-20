.class public final Lteam/opay/pay/history/balance/BalanceHistoryActivity;
.super Lteam/opay/pay/history/balance/Hilt_BalanceHistoryActivity;
.source "BalanceHistoryActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003R\u001b\u0010\u000f\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/pay/history/balance/BalanceHistoryActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "B",
        "Lteam/opay/pay/history/balance/BalanceHistoryViewModel;",
        "g",
        "Lid8;",
        "A",
        "()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;",
        "viewModel",
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
.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/history/balance/Hilt_BalanceHistoryActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/history/balance/BalanceHistoryActivity$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/history/balance/BalanceHistoryActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 12
    .line 13
    const-class v2, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lteam/opay/pay/history/balance/BalanceHistoryActivity$special$$inlined$viewModels$default$2;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lteam/opay/pay/history/balance/BalanceHistoryActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lteam/opay/pay/history/balance/BalanceHistoryActivity$special$$inlined$viewModels$default$3;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/history/balance/BalanceHistoryActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lteam/opay/pay/history/balance/BalanceHistoryActivity;->g:Lid8;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final A()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/balance/BalanceHistoryActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final B()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "cashBalance"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/history/balance/BalanceHistoryActivity;->A()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v0, Lteam/opay/core/android/money/MoneyAmount;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->F(Lteam/opay/core/android/money/MoneyAmount;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "freezeBalance"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/history/balance/BalanceHistoryActivity;->A()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v0, Lteam/opay/core/android/money/MoneyAmount;

    .line 39
    .line 40
    invoke-virtual {v3, v0}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->G(Lteam/opay/core/android/money/MoneyAmount;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v3, "oposBalance"

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/pay/history/balance/BalanceHistoryActivity;->A()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v0, Lteam/opay/core/android/money/MoneyAmount;

    .line 60
    .line 61
    invoke-virtual {v4, v0}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->H(Lteam/opay/core/android/money/MoneyAmount;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v4, "oposBalanceUrl"

    .line 69
    .line 70
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/pay/history/balance/BalanceHistoryActivity;->A()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v5, v0}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->I(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    invoke-virtual {p0}, Lteam/opay/pay/history/balance/BalanceHistoryActivity;->A()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    sget-object v6, Lteam/opay/core/android/money/MoneyAmount;->Companion:Lteam/opay/core/android/money/MoneyAmount$Companion;

    .line 104
    .line 105
    invoke-virtual {p0}, Lteam/opay/pay/history/balance/BalanceHistoryActivity;->A()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v7}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v7}, Lteam/opay/core/api/GraphQL$Currency;->a()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-virtual {v6, v1, v7}, Lteam/opay/core/android/money/MoneyAmount$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v5, v1}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->F(Lteam/opay/core/android/money/MoneyAmount;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-eqz v1, :cond_5

    .line 129
    .line 130
    invoke-virtual {p0}, Lteam/opay/pay/history/balance/BalanceHistoryActivity;->A()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    sget-object v5, Lteam/opay/core/android/money/MoneyAmount;->Companion:Lteam/opay/core/android/money/MoneyAmount$Companion;

    .line 135
    .line 136
    invoke-virtual {p0}, Lteam/opay/pay/history/balance/BalanceHistoryActivity;->A()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v6}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v6}, Lteam/opay/core/api/GraphQL$Currency;->a()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v5, v1, v6}, Lteam/opay/core/android/money/MoneyAmount$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v2, v1}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->G(Lteam/opay/core/android/money/MoneyAmount;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-eqz v1, :cond_6

    .line 160
    .line 161
    invoke-virtual {p0}, Lteam/opay/pay/history/balance/BalanceHistoryActivity;->A()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    sget-object v3, Lteam/opay/core/android/money/MoneyAmount;->Companion:Lteam/opay/core/android/money/MoneyAmount$Companion;

    .line 166
    .line 167
    invoke-virtual {p0}, Lteam/opay/pay/history/balance/BalanceHistoryActivity;->A()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v5}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v5}, Lteam/opay/core/api/GraphQL$Currency;->a()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v3, v1, v5}, Lteam/opay/core/android/money/MoneyAmount$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v2, v1}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->H(Lteam/opay/core/android/money/MoneyAmount;)V

    .line 184
    .line 185
    .line 186
    :cond_6
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-eqz v0, :cond_7

    .line 191
    .line 192
    invoke-virtual {p0}, Lteam/opay/pay/history/balance/BalanceHistoryActivity;->A()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v1, v0}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->I(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/history/balance/Hilt_BalanceHistoryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/history/balance/BalanceHistoryActivity;->B()V

    .line 7
    .line 8
    .line 9
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/history/balance/BalanceHistoryFragment;

    .line 12
    .line 13
    invoke-direct {v0}, Lteam/opay/pay/history/balance/BalanceHistoryFragment;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1, v0}, Lr5g;->b(Landroidx/appcompat/app/AppCompatActivity;ILandroidx/fragment/app/Fragment;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
