.class public final Lteam/opay/pay/cashio/CashOutUnKnownFragment$a;
.super Ljava/lang/Object;
.source "CashOutUnKnownFragment.kt"

# interfaces
.implements Lteam/opay/pay/android/views/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/cashio/CashOutUnKnownFragment;->B1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J3\u0010\u000e\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u001a\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00040\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "team/opay/pay/cashio/CashOutUnKnownFragment$a",
        "Lteam/opay/pay/android/views/e;",
        "",
        "valid",
        "",
        "g",
        "(Z)V",
        "h",
        "()Z",
        "",
        "accountNumber",
        "Lkotlin/Function2;",
        "Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;",
        "callback",
        "d",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V",
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
.field public final synthetic a:Lteam/opay/pay/cashio/CashOutUnKnownFragment;

.field public final synthetic b:Lteam/opay/pay/android/views/AmountInputBusnissUtils;


# direct methods
.method public constructor <init>(Lteam/opay/pay/cashio/CashOutUnKnownFragment;Lteam/opay/pay/android/views/AmountInputBusnissUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashio/CashOutUnKnownFragment$a;->a:Lteam/opay/pay/cashio/CashOutUnKnownFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/cashio/CashOutUnKnownFragment$a;->b:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic i(Lteam/opay/pay/cashio/CashOutUnKnownFragment;Lkotlin/jvm/functions/Function2;Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/cashio/CashOutUnKnownFragment$a;->j(Lteam/opay/pay/cashio/CashOutUnKnownFragment;Lkotlin/jvm/functions/Function2;Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final j(Lteam/opay/pay/cashio/CashOutUnKnownFragment;Lkotlin/jvm/functions/Function2;Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    sget-object v2, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne v1, v2, :cond_9

    .line 15
    .line 16
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lteam/opay/core/api/graphql/VerifyUserResponse;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/VerifyUserResponse;->a()Lteam/opay/core/api/graphql/RecipientUserInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/RecipientUserInfo;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object v1, v0

    .line 36
    :goto_1
    if-nez v1, :cond_2

    .line 37
    .line 38
    const-string v1, ""

    .line 39
    .line 40
    :cond_2
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lteam/opay/core/api/graphql/VerifyUserResponse;

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/VerifyUserResponse;->a()Lteam/opay/core/api/graphql/RecipientUserInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/RecipientUserInfo;->isAgent()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move-object v2, v0

    .line 64
    :goto_2
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_5

    .line 78
    .line 79
    invoke-static {p0, v1}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;->q1(Lteam/opay/pay/cashio/CashOutUnKnownFragment;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v4}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;->p1(Lteam/opay/pay/cashio/CashOutUnKnownFragment;Z)V

    .line 83
    .line 84
    .line 85
    sget-object p2, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCH_SUCCESS:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 86
    .line 87
    invoke-interface {p1, p2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    invoke-static {p0}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;->k1(Lteam/opay/pay/cashio/CashOutUnKnownFragment;)Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_7

    .line 95
    .line 96
    invoke-virtual {p1, v4}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->j(Z)V

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_5
    :goto_3
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_6

    .line 105
    .line 106
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_6

    .line 113
    .line 114
    invoke-static {p0, v4}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;->p1(Lteam/opay/pay/cashio/CashOutUnKnownFragment;Z)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v1}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;->q1(Lteam/opay/pay/cashio/CashOutUnKnownFragment;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object p2, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_NONE:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 121
    .line 122
    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_6
    invoke-static {p0, v3}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;->p1(Lteam/opay/pay/cashio/CashOutUnKnownFragment;Z)V

    .line 127
    .line 128
    .line 129
    sget-object v6, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCH_FAILED:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 130
    .line 131
    sget p1, Lteam/opay/pay/R$string;->osdk_account_error:I

    .line 132
    .line 133
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    const/16 v10, 0x8

    .line 138
    .line 139
    const/4 v11, 0x0

    .line 140
    const/4 v7, 0x0

    .line 141
    const/4 v9, 0x0

    .line 142
    move-object v5, p2

    .line 143
    invoke-static/range {v5 .. v11}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->l(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_7
    :goto_4
    invoke-static {p0, v0, v4, v0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->d0(Lteam/opay/pay/cashio/BaseCashOutFragment;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Lteam/opay/core/api/graphql/VerifyUserResponse;

    .line 154
    .line 155
    if-eqz p1, :cond_8

    .line 156
    .line 157
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/VerifyUserResponse;->b()Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    :cond_8
    invoke-static {p0, v0}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;->t1(Lteam/opay/pay/cashio/CashOutUnKnownFragment;Lteam/opay/core/api/graphql/StampDutyInfo;)V

    .line 162
    .line 163
    .line 164
    invoke-static {p0}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;->l1(Lteam/opay/pay/cashio/CashOutUnKnownFragment;)Lteam/opay/pay/android/views/AmountInputStatusManager;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    if-eqz p1, :cond_c

    .line 169
    .line 170
    invoke-static {p0}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;->n1(Lteam/opay/pay/cashio/CashOutUnKnownFragment;)Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {p1, p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->x(Lteam/opay/core/api/graphql/StampDutyInfo;)V

    .line 175
    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_9
    if-eqz p3, :cond_a

    .line 179
    .line 180
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    goto :goto_5

    .line 185
    :cond_a
    move-object p1, v0

    .line 186
    :goto_5
    sget-object v1, Lteam/opay/core/android/arch/Status;->ERROR:Lteam/opay/core/android/arch/Status;

    .line 187
    .line 188
    if-ne p1, v1, :cond_c

    .line 189
    .line 190
    invoke-static {p0, v3}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;->p1(Lteam/opay/pay/cashio/CashOutUnKnownFragment;Z)V

    .line 191
    .line 192
    .line 193
    sget-object v6, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCH_FAILED:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 194
    .line 195
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    if-nez p1, :cond_b

    .line 200
    .line 201
    sget p1, Lteam/opay/pay/R$string;->osdk_account_error:I

    .line 202
    .line 203
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    :cond_b
    move-object v8, p1

    .line 208
    const/16 v10, 0x8

    .line 209
    .line 210
    const/4 v11, 0x0

    .line 211
    const/4 v7, 0x0

    .line 212
    const/4 v9, 0x0

    .line 213
    move-object v5, p2

    .line 214
    invoke-static/range {v5 .. v11}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->l(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    invoke-static {p0, v0, v4, v0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->d0(Lteam/opay/pay/cashio/BaseCashOutFragment;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    :cond_c
    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 221
    .line 222
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
    .locals 10
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
    const-string v0, "accountNumber"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/cashio/CashOutUnKnownFragment$a;->a:Lteam/opay/pay/cashio/CashOutUnKnownFragment;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;->r1(Lteam/opay/pay/cashio/CashOutUnKnownFragment;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/cashio/CashOutUnKnownFragment$a;->a:Lteam/opay/pay/cashio/CashOutUnKnownFragment;

    .line 17
    .line 18
    sget-object v1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lteam/opay/core/account/AccountInfoManager$Companion;->b(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    xor-int/2addr v1, v2

    .line 26
    invoke-static {v0, v1}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;->s1(Lteam/opay/pay/cashio/CashOutUnKnownFragment;Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lteam/opay/pay/cashio/CashOutUnKnownFragment$a;->a:Lteam/opay/pay/cashio/CashOutUnKnownFragment;

    .line 30
    .line 31
    invoke-static {v0}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;->o1(Lteam/opay/pay/cashio/CashOutUnKnownFragment;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    iget-object v3, p0, Lteam/opay/pay/cashio/CashOutUnKnownFragment$a;->b:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 38
    .line 39
    sget-object v4, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCH_FAILED:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 40
    .line 41
    sget p1, Lteam/opay/pay/R$string;->osdk_account_self_error:I

    .line 42
    .line 43
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const/16 v8, 0x8

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-static/range {v3 .. v9}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->l(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    sget-object v0, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCHING:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-interface {p2, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lteam/opay/pay/cashio/CashOutUnKnownFragment$a;->a:Lteam/opay/pay/cashio/CashOutUnKnownFragment;

    .line 63
    .line 64
    invoke-static {v0}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;->m1(Lteam/opay/pay/cashio/CashOutUnKnownFragment;)Lteam/opay/pay/pin/PinViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Lteam/opay/core/api/graphql/RecipientAccountReq;

    .line 69
    .line 70
    invoke-static {p1}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Loj2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget-object v3, Lteam/opay/core/api/GraphQL$ServiceType;->CASH_OUT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 79
    .line 80
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-direct {v1, p1, v2, v3}, Lteam/opay/core/api/graphql/RecipientAccountReq;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lteam/opay/pay/pin/PinViewModel;->w(Lteam/opay/core/api/graphql/RecipientAccountReq;)Landroidx/lifecycle/LiveData;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object v0, p0, Lteam/opay/pay/cashio/CashOutUnKnownFragment$a;->a:Lteam/opay/pay/cashio/CashOutUnKnownFragment;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "getViewLifecycleOwner(...)"

    .line 98
    .line 99
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lteam/opay/pay/cashio/CashOutUnKnownFragment$a;->a:Lteam/opay/pay/cashio/CashOutUnKnownFragment;

    .line 103
    .line 104
    iget-object v2, p0, Lteam/opay/pay/cashio/CashOutUnKnownFragment$a;->b:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 105
    .line 106
    new-instance v3, Ls42;

    .line 107
    .line 108
    invoke-direct {v3, v1, p2, v2}, Ls42;-><init>(Lteam/opay/pay/cashio/CashOutUnKnownFragment;Lkotlin/jvm/functions/Function2;Lteam/opay/pay/android/views/AmountInputBusnissUtils;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v0, v3}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 112
    .line 113
    .line 114
    :goto_0
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
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/views/e$a;->c(Lteam/opay/pay/android/views/e;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public g(Z)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/views/e$a;->i(Lteam/opay/pay/android/views/e;Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/pay/cashio/CashOutUnKnownFragment$a;->a:Lteam/opay/pay/cashio/CashOutUnKnownFragment;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;->s1(Lteam/opay/pay/cashio/CashOutUnKnownFragment;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lteam/opay/pay/cashio/CashOutUnKnownFragment$a;->a:Lteam/opay/pay/cashio/CashOutUnKnownFragment;

    .line 13
    .line 14
    invoke-static {p1, v0}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;->p1(Lteam/opay/pay/cashio/CashOutUnKnownFragment;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lteam/opay/pay/cashio/CashOutUnKnownFragment$a;->a:Lteam/opay/pay/cashio/CashOutUnKnownFragment;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p1, v1, v0, v1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->d0(Lteam/opay/pay/cashio/BaseCashOutFragment;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
