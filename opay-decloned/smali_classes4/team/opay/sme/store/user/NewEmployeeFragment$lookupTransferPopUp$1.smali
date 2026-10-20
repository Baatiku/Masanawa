.class final Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewEmployeeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/user/NewEmployeeFragment;->v0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.sme.store.user.NewEmployeeFragment$lookupTransferPopUp$1"
    f = "NewEmployeeFragment.kt"
    l = {
        0xe6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/user/NewEmployeeFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/user/NewEmployeeFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;-><init>(Lteam/opay/sme/store/user/NewEmployeeFragment;Ljr2;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const-string v4, ""

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    move-object/from16 v2, p1

    .line 21
    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 36
    .line 37
    invoke-static {v2}, Lteam/opay/sme/store/user/NewEmployeeFragment;->V(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lxud;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v2, v2, Lxud;->j:Lteam/opay/core/widget/PulseLoaderView;

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-static {v2}, Lg0g;->h(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    new-instance v2, Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;

    .line 51
    .line 52
    iget-object v6, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 53
    .line 54
    invoke-static {v6}, Lteam/opay/sme/store/user/NewEmployeeFragment;->b0(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    if-eqz v6, :cond_3

    .line 59
    .line 60
    invoke-virtual {v6}, Lteam/opay/sme/store/api/PayrollBankInfo;->getCardNumber()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    move-object v6, v5

    .line 66
    :goto_0
    if-nez v6, :cond_4

    .line 67
    .line 68
    move-object v7, v4

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    move-object v7, v6

    .line 71
    :goto_1
    iget-object v6, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 72
    .line 73
    invoke-static {v6}, Lteam/opay/sme/store/user/NewEmployeeFragment;->b0(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    if-eqz v6, :cond_5

    .line 78
    .line 79
    invoke-virtual {v6}, Lteam/opay/sme/store/api/PayrollBankInfo;->getBankCode()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    goto :goto_2

    .line 84
    :cond_5
    move-object v6, v5

    .line 85
    :goto_2
    if-nez v6, :cond_6

    .line 86
    .line 87
    move-object v8, v4

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    move-object v8, v6

    .line 90
    :goto_3
    iget-object v6, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 91
    .line 92
    invoke-static {v6}, Lteam/opay/sme/store/user/NewEmployeeFragment;->c0(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v6}, Lteam/opay/sme/store/StoreViewModel;->N()Lteam/opay/core/common/amount/Country;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v6}, Lteam/opay/core/common/amount/Country;->getCountryCode()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    const/16 v15, 0xf0

    .line 105
    .line 106
    const/16 v16, 0x0

    .line 107
    .line 108
    const-string v10, "AMOUNT_BEFORE"

    .line 109
    .line 110
    const/4 v11, 0x0

    .line 111
    const/4 v12, 0x0

    .line 112
    const/4 v13, 0x0

    .line 113
    const/4 v14, 0x0

    .line 114
    move-object v6, v2

    .line 115
    invoke-direct/range {v6 .. v16}, Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 116
    .line 117
    .line 118
    iget-object v6, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 119
    .line 120
    invoke-static {v6}, Lteam/opay/sme/store/user/NewEmployeeFragment;->c0(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    iput v3, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->label:I

    .line 125
    .line 126
    invoke-virtual {v6, v2, v0}, Lteam/opay/sme/store/StoreViewModel;->f(Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;Ljr2;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    if-ne v2, v1, :cond_7

    .line 131
    .line 132
    return-object v1

    .line 133
    :cond_7
    :goto_4
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 134
    .line 135
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 136
    .line 137
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-interface {v1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 146
    .line 147
    invoke-static {v1, v6}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_16

    .line 152
    .line 153
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 154
    .line 155
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->V(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lxud;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-eqz v1, :cond_8

    .line 160
    .line 161
    iget-object v1, v1, Lxud;->j:Lteam/opay/core/widget/PulseLoaderView;

    .line 162
    .line 163
    if-eqz v1, :cond_8

    .line 164
    .line 165
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 166
    .line 167
    .line 168
    :cond_8
    instance-of v1, v2, Lteam/opay/core/http/HttpResult$Success;

    .line 169
    .line 170
    if-eqz v1, :cond_12

    .line 171
    .line 172
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 173
    .line 174
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->b0(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    if-eqz v1, :cond_b

    .line 179
    .line 180
    move-object v3, v2

    .line 181
    check-cast v3, Lteam/opay/core/http/HttpResult$Success;

    .line 182
    .line 183
    invoke-virtual {v3}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    check-cast v3, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 188
    .line 189
    if-eqz v3, :cond_9

    .line 190
    .line 191
    invoke-virtual {v3}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getAccountName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    goto :goto_5

    .line 196
    :cond_9
    move-object v3, v5

    .line 197
    :goto_5
    if-nez v3, :cond_a

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_a
    move-object v4, v3

    .line 201
    :goto_6
    invoke-virtual {v1, v4}, Lteam/opay/sme/store/api/PayrollBankInfo;->setBankAccountName(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_b
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 205
    .line 206
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->b0(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    if-eqz v1, :cond_e

    .line 211
    .line 212
    iget-object v3, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 213
    .line 214
    invoke-static {v3}, Lteam/opay/sme/store/user/NewEmployeeFragment;->b0(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    if-eqz v3, :cond_d

    .line 219
    .line 220
    move-object v4, v2

    .line 221
    check-cast v4, Lteam/opay/core/http/HttpResult$Success;

    .line 222
    .line 223
    invoke-virtual {v4}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    check-cast v4, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 228
    .line 229
    if-eqz v4, :cond_c

    .line 230
    .line 231
    invoke-virtual {v4}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getServiceId()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    goto :goto_7

    .line 236
    :cond_c
    move-object v4, v5

    .line 237
    :goto_7
    invoke-virtual {v3, v4}, Lteam/opay/sme/store/api/PayrollBankInfo;->getServiceType(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    goto :goto_8

    .line 242
    :cond_d
    move-object v3, v5

    .line 243
    :goto_8
    invoke-virtual {v1, v3}, Lteam/opay/sme/store/api/PayrollBankInfo;->setServiceType(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :cond_e
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 247
    .line 248
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->b0(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    if-eqz v1, :cond_10

    .line 253
    .line 254
    move-object v3, v2

    .line 255
    check-cast v3, Lteam/opay/core/http/HttpResult$Success;

    .line 256
    .line 257
    invoke-virtual {v3}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    check-cast v3, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 262
    .line 263
    if-eqz v3, :cond_f

    .line 264
    .line 265
    invoke-virtual {v3}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getSupport()Ljava/lang/Boolean;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    goto :goto_9

    .line 270
    :cond_f
    move-object v3, v5

    .line 271
    :goto_9
    invoke-virtual {v1, v3}, Lteam/opay/sme/store/api/PayrollBankInfo;->setSupport(Ljava/lang/Boolean;)V

    .line 272
    .line 273
    .line 274
    :cond_10
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 275
    .line 276
    check-cast v2, Lteam/opay/core/http/HttpResult$Success;

    .line 277
    .line 278
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    check-cast v2, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 283
    .line 284
    if-eqz v2, :cond_11

    .line 285
    .line 286
    invoke-virtual {v2}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getAccountName()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    goto :goto_a

    .line 291
    :cond_11
    move-object v2, v5

    .line 292
    :goto_a
    const/4 v3, 0x0

    .line 293
    const/4 v4, 0x2

    .line 294
    invoke-static {v1, v2, v3, v4, v5}, Lteam/opay/sme/store/user/NewEmployeeFragment;->O0(Lteam/opay/sme/store/user/NewEmployeeFragment;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 298
    .line 299
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->U(Lteam/opay/sme/store/user/NewEmployeeFragment;)V

    .line 300
    .line 301
    .line 302
    goto :goto_b

    .line 303
    :cond_12
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 304
    .line 305
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->b0(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    if-eqz v1, :cond_13

    .line 310
    .line 311
    invoke-virtual {v1, v4}, Lteam/opay/sme/store/api/PayrollBankInfo;->setBankAccountName(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    :cond_13
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 315
    .line 316
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->b0(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    if-eqz v1, :cond_14

    .line 321
    .line 322
    invoke-virtual {v1, v5}, Lteam/opay/sme/store/api/PayrollBankInfo;->setSupport(Ljava/lang/Boolean;)V

    .line 323
    .line 324
    .line 325
    :cond_14
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 326
    .line 327
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    if-eqz v2, :cond_15

    .line 332
    .line 333
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    :cond_15
    invoke-static {v1, v5, v3}, Lteam/opay/sme/store/user/NewEmployeeFragment;->g0(Lteam/opay/sme/store/user/NewEmployeeFragment;Ljava/lang/String;Z)V

    .line 338
    .line 339
    .line 340
    :cond_16
    :goto_b
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 341
    .line 342
    return-object v1
.end method
