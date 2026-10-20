.class final Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OpayTransferSendMoneyFragmentV2.kt"

# interfaces
.implements Lhm6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lhm6<",
        "Lteam/opay/core/api/graphql/AASendMoneyPageInfo;",
        "Lteam/opay/core/api/graphql/RecipientUserInfo;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "pageInfo",
        "Lteam/opay/core/api/graphql/AASendMoneyPageInfo;",
        "userInfo",
        "Lteam/opay/core/api/graphql/RecipientUserInfo;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.transfer.contact.sendmoney.OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1"
    f = "OpayTransferSendMoneyFragmentV2.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;->this$0:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/api/graphql/AASendMoneyPageInfo;

    check-cast p2, Lteam/opay/core/api/graphql/RecipientUserInfo;

    check-cast p3, Ljr2;

    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;->invoke(Lteam/opay/core/api/graphql/AASendMoneyPageInfo;Lteam/opay/core/api/graphql/RecipientUserInfo;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lteam/opay/core/api/graphql/AASendMoneyPageInfo;Lteam/opay/core/api/graphql/RecipientUserInfo;Ljr2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/graphql/AASendMoneyPageInfo;",
            "Lteam/opay/core/api/graphql/RecipientUserInfo;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    new-instance v0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;

    iget-object v1, p0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;->this$0:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    invoke-direct {v0, v1, p3}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;Ljr2;)V

    iput-object p1, v0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget v1, v0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;->label:I

    .line 7
    .line 8
    if-nez v1, :cond_e

    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;->L$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lteam/opay/core/api/graphql/AASendMoneyPageInfo;

    .line 16
    .line 17
    iget-object v2, v0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;->L$1:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Lteam/opay/core/api/graphql/RecipientUserInfo;

    .line 20
    .line 21
    iget-object v3, v0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;->this$0:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 22
    .line 23
    invoke-static {v3, v1}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;->U1(Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;Lteam/opay/core/api/graphql/AASendMoneyPageInfo;)V

    .line 24
    .line 25
    .line 26
    sget-object v3, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 27
    .line 28
    invoke-virtual {v3}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Lteam/opay/core/account/AccountInfoManager;->A()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    iget-object v4, v0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;->this$0:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/AASendMoneyPageInfo;->getAllowServiceTypeList()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v6, v5

    .line 56
    :goto_0
    invoke-static {v4, v6}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;->T1(Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v4, v0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;->this$0:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 60
    .line 61
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;->L1(Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const-string v6, "AATransfer"

    .line 66
    .line 67
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    iget-object v4, v0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;->this$0:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 74
    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/AASendMoneyPageInfo;->getRemainingTransferAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    move-object v6, v5

    .line 83
    :goto_1
    invoke-virtual {v4, v6}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->n1(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    iget-object v4, v0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$observeSpiltOrderAndUserConfig$1$1;->this$0:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 88
    .line 89
    invoke-virtual {v4}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->g0()V

    .line 90
    .line 91
    .line 92
    :goto_2
    if-eqz v1, :cond_3

    .line 93
    .line 94
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/AASendMoneyPageInfo;->getUserPhone()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    goto :goto_3

    .line 99
    :cond_3
    move-object v4, v5

    .line 100
    :goto_3
    const-string v6, ""

    .line 101
    .line 102
    if-nez v4, :cond_4

    .line 103
    .line 104
    move-object v4, v6

    .line 105
    :cond_4
    invoke-static {v4}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-eqz v2, :cond_5

    .line 110
    .line 111
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/RecipientUserInfo;->getMobile()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    goto :goto_4

    .line 116
    :cond_5
    move-object v7, v5

    .line 117
    :goto_4
    if-nez v7, :cond_6

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_6
    move-object v6, v7

    .line 121
    :goto_5
    invoke-static {v6}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_7

    .line 130
    .line 131
    sget-object v6, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 132
    .line 133
    const/4 v10, 0x4

    .line 134
    const/4 v11, 0x0

    .line 135
    const-string v7, "split_order_config"

    .line 136
    .line 137
    const/4 v8, 0x0

    .line 138
    const/4 v9, 0x0

    .line 139
    invoke-static/range {v6 .. v11}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_8

    .line 143
    :cond_7
    if-eqz v3, :cond_a

    .line 144
    .line 145
    if-eqz v2, :cond_8

    .line 146
    .line 147
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/RecipientUserInfo;->getRole()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    goto :goto_6

    .line 152
    :cond_8
    move-object v4, v5

    .line 153
    :goto_6
    const-string v6, "customer"

    .line 154
    .line 155
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-nez v4, :cond_a

    .line 160
    .line 161
    sget-object v6, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 162
    .line 163
    if-eqz v1, :cond_9

    .line 164
    .line 165
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/AASendMoneyPageInfo;->getSplitOrderInfo()Lteam/opay/core/api/graphql/SplitOrderResponse;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    :cond_9
    move-object v8, v5

    .line 170
    const/4 v10, 0x4

    .line 171
    const/4 v11, 0x0

    .line 172
    const-string v7, "split_order_config"

    .line 173
    .line 174
    const/4 v9, 0x0

    .line 175
    invoke-static/range {v6 .. v11}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_a
    if-nez v3, :cond_d

    .line 180
    .line 181
    if-eqz v2, :cond_b

    .line 182
    .line 183
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/RecipientUserInfo;->getRole()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    goto :goto_7

    .line 188
    :cond_b
    move-object v2, v5

    .line 189
    :goto_7
    const-string v3, "agent"

    .line 190
    .line 191
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-nez v2, :cond_d

    .line 196
    .line 197
    sget-object v6, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 198
    .line 199
    if-eqz v1, :cond_c

    .line 200
    .line 201
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/AASendMoneyPageInfo;->getSplitOrderInfo()Lteam/opay/core/api/graphql/SplitOrderResponse;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    :cond_c
    move-object v8, v5

    .line 206
    const/4 v10, 0x4

    .line 207
    const/4 v11, 0x0

    .line 208
    const-string v7, "split_order_config"

    .line 209
    .line 210
    const/4 v9, 0x0

    .line 211
    invoke-static/range {v6 .. v11}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    goto :goto_8

    .line 215
    :cond_d
    sget-object v12, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 216
    .line 217
    const/16 v16, 0x4

    .line 218
    .line 219
    const/16 v17, 0x0

    .line 220
    .line 221
    const-string v13, "split_order_config"

    .line 222
    .line 223
    const/4 v14, 0x0

    .line 224
    const/4 v15, 0x0

    .line 225
    invoke-static/range {v12 .. v17}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :goto_8
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 229
    .line 230
    return-object v1

    .line 231
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 232
    .line 233
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 234
    .line 235
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v1
.end method
