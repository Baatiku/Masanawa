.class final Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PayrollFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/payroll/payroll/PayrollFragment;->q0()V
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
    c = "team.opay.business.payroll.payroll.PayrollFragment$lookupTransferPopUp$1"
    f = "PayrollFragment.kt"
    l = {
        0x1b8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/payroll/payroll/PayrollFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/payroll/payroll/PayrollFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

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
    new-instance p1, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;-><init>(Lteam/opay/business/payroll/payroll/PayrollFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v2, v0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->label:I

    .line 8
    .line 9
    const-string v3, "loadingView"

    .line 10
    .line 11
    const-string v4, ""

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    if-ne v2, v5, :cond_0

    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    move-object/from16 v2, p1

    .line 22
    .line 23
    goto :goto_2

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
    iget-object v2, v0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 36
    .line 37
    invoke-static {v2}, Lteam/opay/business/payroll/payroll/PayrollFragment;->X(Lteam/opay/business/payroll/payroll/PayrollFragment;)Lxkb;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v2, v2, Lxkb;->p:Lteam/opay/core/widget/PulseLoaderView;

    .line 42
    .line 43
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lg0g;->h(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;

    .line 50
    .line 51
    iget-object v6, v0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 52
    .line 53
    invoke-static {v6}, Lteam/opay/business/payroll/payroll/PayrollFragment;->a0(Lteam/opay/business/payroll/payroll/PayrollFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankAccountNo()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    if-nez v6, :cond_2

    .line 62
    .line 63
    move-object v7, v4

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move-object v7, v6

    .line 66
    :goto_0
    iget-object v6, v0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 67
    .line 68
    invoke-static {v6}, Lteam/opay/business/payroll/payroll/PayrollFragment;->a0(Lteam/opay/business/payroll/payroll/PayrollFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v6}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankCode()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    if-nez v6, :cond_3

    .line 77
    .line 78
    move-object v8, v4

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move-object v8, v6

    .line 81
    :goto_1
    iget-object v6, v0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 82
    .line 83
    invoke-static {v6}, Lteam/opay/business/payroll/payroll/PayrollFragment;->b0(Lteam/opay/business/payroll/payroll/PayrollFragment;)Lteam/opay/business/payroll/PayrollViewModel;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v6}, Lteam/opay/business/payroll/PayrollViewModel;->x()Lteam/opay/core/common/amount/Country;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v6}, Lteam/opay/core/common/amount/Country;->getCountryCode()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    const/16 v15, 0xf0

    .line 96
    .line 97
    const/16 v16, 0x0

    .line 98
    .line 99
    const-string v10, "AMOUNT_BEFORE"

    .line 100
    .line 101
    const/4 v11, 0x0

    .line 102
    const/4 v12, 0x0

    .line 103
    const/4 v13, 0x0

    .line 104
    const/4 v14, 0x0

    .line 105
    move-object v6, v2

    .line 106
    invoke-direct/range {v6 .. v16}, Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    .line 108
    .line 109
    iget-object v6, v0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 110
    .line 111
    invoke-static {v6}, Lteam/opay/business/payroll/payroll/PayrollFragment;->b0(Lteam/opay/business/payroll/payroll/PayrollFragment;)Lteam/opay/business/payroll/PayrollViewModel;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    iput v5, v0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->label:I

    .line 116
    .line 117
    invoke-virtual {v6, v2, v0}, Lteam/opay/business/payroll/PayrollViewModel;->f(Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;Ljr2;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-ne v2, v1, :cond_4

    .line 122
    .line 123
    return-object v1

    .line 124
    :cond_4
    :goto_2
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 125
    .line 126
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 127
    .line 128
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string v6, "<get-lifecycle>(...)"

    .line 133
    .line 134
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 138
    .line 139
    invoke-static {v1, v6}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_b

    .line 144
    .line 145
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 146
    .line 147
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollFragment;->X(Lteam/opay/business/payroll/payroll/PayrollFragment;)Lxkb;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-object v1, v1, Lxkb;->p:Lteam/opay/core/widget/PulseLoaderView;

    .line 152
    .line 153
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 157
    .line 158
    .line 159
    instance-of v1, v2, Lteam/opay/core/http/HttpResult$Success;

    .line 160
    .line 161
    const/4 v3, 0x0

    .line 162
    if-eqz v1, :cond_9

    .line 163
    .line 164
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 165
    .line 166
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollFragment;->a0(Lteam/opay/business/payroll/payroll/PayrollFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v2, Lteam/opay/core/http/HttpResult$Success;

    .line 171
    .line 172
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    check-cast v4, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 177
    .line 178
    if-eqz v4, :cond_6

    .line 179
    .line 180
    invoke-virtual {v4}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getAccountName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    if-eqz v4, :cond_6

    .line 185
    .line 186
    invoke-static {v4}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-nez v5, :cond_5

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_5
    move-object v4, v3

    .line 194
    :goto_3
    if-nez v4, :cond_7

    .line 195
    .line 196
    :cond_6
    iget-object v4, v0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 197
    .line 198
    sget v5, Lteam/opay/business/payroll/R$string;->payroll_default_amount_name:I

    .line 199
    .line 200
    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    const-string v5, "getString(...)"

    .line 205
    .line 206
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :cond_7
    invoke-virtual {v1, v4}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->setRecipientBankAccountName(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 213
    .line 214
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollFragment;->a0(Lteam/opay/business/payroll/payroll/PayrollFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    check-cast v4, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 223
    .line 224
    invoke-virtual {v1, v4}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->setConfirmInfo(Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;)V

    .line 225
    .line 226
    .line 227
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 228
    .line 229
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    check-cast v2, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 234
    .line 235
    if-eqz v2, :cond_8

    .line 236
    .line 237
    invoke-virtual {v2}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getAccountName()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    goto :goto_4

    .line 242
    :cond_8
    move-object v2, v3

    .line 243
    :goto_4
    const/4 v4, 0x0

    .line 244
    const/4 v5, 0x2

    .line 245
    invoke-static {v1, v2, v4, v5, v3}, Lteam/opay/business/payroll/payroll/PayrollFragment;->L0(Lteam/opay/business/payroll/payroll/PayrollFragment;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_9
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 250
    .line 251
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollFragment;->a0(Lteam/opay/business/payroll/payroll/PayrollFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v1, v4}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->setRecipientBankAccountName(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 259
    .line 260
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollFragment;->a0(Lteam/opay/business/payroll/payroll/PayrollFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v1, v3}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->setConfirmInfo(Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;)V

    .line 265
    .line 266
    .line 267
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 268
    .line 269
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    if-eqz v2, :cond_a

    .line 274
    .line 275
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    :cond_a
    invoke-static {v1, v3, v5}, Lteam/opay/business/payroll/payroll/PayrollFragment;->d0(Lteam/opay/business/payroll/payroll/PayrollFragment;Ljava/lang/String;Z)V

    .line 280
    .line 281
    .line 282
    :cond_b
    :goto_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 283
    .line 284
    return-object v1
.end method
