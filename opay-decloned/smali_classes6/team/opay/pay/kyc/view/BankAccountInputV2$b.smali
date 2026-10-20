.class public final Lteam/opay/pay/kyc/view/BankAccountInputV2$b;
.super Ljava/lang/Object;
.source "BankAccountInputV2.kt"

# interfaces
.implements Lteam/opay/pay/android/views/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/view/BankAccountInputV2;->o0(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "team/opay/pay/kyc/view/BankAccountInputV2$b",
        "Lteam/opay/pay/android/views/e;",
        "",
        "valid",
        "",
        "g",
        "(Z)V",
        "h",
        "()Z",
        "isSending",
        "f",
        "(Z)Z",
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
.field public final synthetic a:Lteam/opay/pay/kyc/view/BankAccountInputV2;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/view/BankAccountInputV2;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->a:Lteam/opay/pay/kyc/view/BankAccountInputV2;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->b:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic i(Lteam/opay/pay/kyc/view/BankAccountInputV2;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->j(Lteam/opay/pay/kyc/view/BankAccountInputV2;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final j(Lteam/opay/pay/kyc/view/BankAccountInputV2;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->j0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->h0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lteam/opay/pay/api/UserBanksMate;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const-string v2, "failed"

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-static {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->h0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lteam/opay/pay/api/UserBanksMate;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lteam/opay/pay/api/UserBanksMate;->getAccurateBanks()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    :cond_1
    invoke-static {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->h0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lteam/opay/pay/api/UserBanksMate;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lteam/opay/pay/api/UserBanksMate;->getFuzzyBanks()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-string v2, "success"

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    :goto_0
    const-string v2, "noresult"

    .line 58
    .line 59
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->getEnterBankAccountFinish()Lkotlin/jvm/functions/Function1;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_4

    .line 64
    .line 65
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-static {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->h0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lteam/opay/pay/api/UserBanksMate;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const/4 v3, 0x0

    .line 73
    if-eqz v2, :cond_5

    .line 74
    .line 75
    invoke-virtual {v2}, Lteam/opay/pay/api/UserBanksMate;->getAccurateBanks()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    goto :goto_2

    .line 80
    :cond_5
    move-object v2, v3

    .line 81
    :goto_2
    if-eqz v2, :cond_13

    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    goto/16 :goto_8

    .line 90
    .line 91
    :cond_6
    sget-object v2, Lx7b;->a:Lx7b;

    .line 92
    .line 93
    const-string v4, "channel"

    .line 94
    .line 95
    invoke-static {v4, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-array v4, v1, [Lkotlin/Pair;

    .line 100
    .line 101
    aput-object p1, v4, v0

    .line 102
    .line 103
    const-string p1, "Bankaccount_precisematching_show"

    .line 104
    .line 105
    invoke-virtual {v2, p1, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 106
    .line 107
    .line 108
    if-eqz p2, :cond_f

    .line 109
    .line 110
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_7

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_7
    invoke-static {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->e0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_f

    .line 122
    .line 123
    invoke-static {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->h0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lteam/opay/pay/api/UserBanksMate;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-eqz p1, :cond_8

    .line 128
    .line 129
    invoke-virtual {p1}, Lteam/opay/pay/api/UserBanksMate;->getAccurateBanks()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_8

    .line 134
    .line 135
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Lteam/opay/pay/home/tabs/BankInfo;

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_8
    move-object p1, v3

    .line 143
    :goto_3
    if-eqz p1, :cond_9

    .line 144
    .line 145
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/BankInfo;->getCode()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    goto :goto_4

    .line 150
    :cond_9
    move-object p2, v3

    .line 151
    :goto_4
    const-string v0, ""

    .line 152
    .line 153
    if-nez p2, :cond_a

    .line 154
    .line 155
    move-object p2, v0

    .line 156
    :cond_a
    if-eqz p1, :cond_b

    .line 157
    .line 158
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/BankInfo;->getName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    goto :goto_5

    .line 163
    :cond_b
    move-object v2, v3

    .line 164
    :goto_5
    if-nez v2, :cond_c

    .line 165
    .line 166
    move-object v2, v0

    .line 167
    :cond_c
    if-eqz p1, :cond_d

    .line 168
    .line 169
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/BankInfo;->getIcon()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    :cond_d
    if-nez v3, :cond_e

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_e
    move-object v0, v3

    .line 177
    :goto_6
    invoke-static {p0, p2, v2, v0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->c0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-static {p0, v1}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->l0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Z)V

    .line 181
    .line 182
    .line 183
    goto :goto_8

    .line 184
    :cond_f
    :goto_7
    invoke-static {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->d0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lmb8;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    iget-object p1, p1, Lmb8;->k:Landroidx/constraintlayout/widget/Group;

    .line 189
    .line 190
    if-eqz p1, :cond_10

    .line 191
    .line 192
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 193
    .line 194
    .line 195
    :cond_10
    invoke-static {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->f0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lteam/opay/pay/home/tabs/ac/RecoBankAdapter;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->h0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lteam/opay/pay/api/UserBanksMate;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    if-eqz p0, :cond_12

    .line 204
    .line 205
    invoke-virtual {p0}, Lteam/opay/pay/api/UserBanksMate;->getAccurateBanks()Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    if-eqz p0, :cond_12

    .line 210
    .line 211
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    const/4 v1, 0x3

    .line 216
    if-le p2, v1, :cond_11

    .line 217
    .line 218
    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    :cond_11
    move-object v3, p0

    .line 223
    :cond_12
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 224
    .line 225
    .line 226
    :cond_13
    :goto_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 227
    .line 228
    return-object p0
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/android/views/e$a;->g(Lteam/opay/pay/android/views/e;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/views/e$a;->f(Lteam/opay/pay/android/views/e;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/views/e$a;->d(Lteam/opay/pay/android/views/e;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public d(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/android/views/e$a;->b(Lteam/opay/pay/android/views/e;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/views/e$a;->e(Lteam/opay/pay/android/views/e;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public f(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->a:Lteam/opay/pay/kyc/view/BankAccountInputV2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->b:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->b0(Lteam/opay/pay/kyc/view/BankAccountInputV2;ZLandroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method public g(Z)V
    .locals 7

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/views/e$a;->i(Lteam/opay/pay/android/views/e;Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->a:Lteam/opay/pay/kyc/view/BankAccountInputV2;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->k0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Z)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->a:Lteam/opay/pay/kyc/view/BankAccountInputV2;

    .line 13
    .line 14
    invoke-static {v1}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->i0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string v1, "viewModel"

    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    move-object v1, v0

    .line 26
    :cond_0
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->y0()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->a:Lteam/opay/pay/kyc/view/BankAccountInputV2;

    .line 37
    .line 38
    invoke-static {p1}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->n0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->a:Lteam/opay/pay/kyc/view/BankAccountInputV2;

    .line 42
    .line 43
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->b:Landroidx/fragment/app/Fragment;

    .line 44
    .line 45
    iget-object v1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->c:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v2, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->d:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v3, Lph0;

    .line 50
    .line 51
    invoke-direct {v3, p1, v1, v2}, Lph0;-><init>(Lteam/opay/pay/kyc/view/BankAccountInputV2;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-static {p1, v0, v1, v3}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->g0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Landroidx/fragment/app/Fragment;ZLkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-nez p1, :cond_4

    .line 60
    .line 61
    iget-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->a:Lteam/opay/pay/kyc/view/BankAccountInputV2;

    .line 62
    .line 63
    invoke-static {p1}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->j0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->a:Lteam/opay/pay/kyc/view/BankAccountInputV2;

    .line 67
    .line 68
    invoke-static {p1}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->d0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lmb8;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p1, p1, Lmb8;->k:Landroidx/constraintlayout/widget/Group;

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->a:Lteam/opay/pay/kyc/view/BankAccountInputV2;

    .line 80
    .line 81
    invoke-static {p1, v0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->m0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Lteam/opay/pay/api/UserBanksMate;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->a:Lteam/opay/pay/kyc/view/BankAccountInputV2;

    .line 85
    .line 86
    invoke-virtual {p1}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->getOnAccountValidCallback()Lkotlin/jvm/functions/Function1;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :cond_3
    iget-object v1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;->a:Lteam/opay/pay/kyc/view/BankAccountInputV2;

    .line 98
    .line 99
    const/4 v5, 0x4

    .line 100
    const/4 v6, 0x0

    .line 101
    const-string v2, ""

    .line 102
    .line 103
    const-string v3, ""

    .line 104
    .line 105
    const/4 v4, 0x0

    .line 106
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->v0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
