.class final Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PayrollAmountFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->s0(Ljava/lang/String;Z)V
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
    c = "team.opay.business.payroll.payroll.PayrollAmountFragment$lookupTransferPopUp$1"
    f = "PayrollAmountFragment.kt"
    l = {
        0xc3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $fromClick:Z

.field final synthetic $stepType:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lteam/opay/business/payroll/payroll/PayrollAmountFragment;ZLjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/business/payroll/payroll/PayrollAmountFragment;",
            "Z",
            "Ljr2<",
            "-",
            "Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->$stepType:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 4
    .line 5
    iput-boolean p3, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->$fromClick:Z

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 3
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
    new-instance p1, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->$stepType:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 6
    .line 7
    iget-boolean v2, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->$fromClick:Z

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;-><init>(Ljava/lang/String;Lteam/opay/business/payroll/payroll/PayrollAmountFragment;ZLjr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v1

    .line 7
    iget v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->label:I

    .line 8
    .line 9
    const-string v3, "loadingView"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    const-string v6, "AMOUNT_BEFORE"

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    if-ne v2, v5, :cond_0

    .line 19
    .line 20
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object/from16 v2, p1

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v1

    .line 35
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->$stepType:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 47
    .line 48
    invoke-static {v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->T(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)[Z

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    aput-boolean v5, v2, v4

    .line 53
    .line 54
    iget-object v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 55
    .line 56
    invoke-static {v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->d0(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 61
    .line 62
    invoke-static {v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->Q(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lzkb;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iget-object v2, v2, Lzkb;->f:Lteam/opay/core/widget/PulseLoaderView;

    .line 67
    .line 68
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Lg0g;->h(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    new-instance v2, Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;

    .line 75
    .line 76
    iget-object v8, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 77
    .line 78
    invoke-static {v8}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {v8}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankAccountNo()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    const-string v9, ""

    .line 87
    .line 88
    if-nez v8, :cond_3

    .line 89
    .line 90
    move-object v10, v9

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    move-object v10, v8

    .line 93
    :goto_1
    iget-object v8, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 94
    .line 95
    invoke-static {v8}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-virtual {v8}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankCode()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    if-nez v8, :cond_4

    .line 104
    .line 105
    move-object v11, v9

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    move-object v11, v8

    .line 108
    :goto_2
    iget-object v8, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 109
    .line 110
    invoke-static {v8}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->V(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/PayrollViewModel;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v8}, Lteam/opay/business/payroll/PayrollViewModel;->x()Lteam/opay/core/common/amount/Country;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-virtual {v8}, Lteam/opay/core/common/amount/Country;->getCountryCode()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    iget-object v13, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->$stepType:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v8, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 125
    .line 126
    invoke-static {v8}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-virtual {v8}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getConfirmInfo()Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    if-eqz v8, :cond_5

    .line 135
    .line 136
    invoke-virtual {v8}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getServiceId()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    move-object v14, v8

    .line 141
    goto :goto_3

    .line 142
    :cond_5
    move-object v14, v7

    .line 143
    :goto_3
    iget-object v8, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 144
    .line 145
    invoke-static {v8}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-virtual {v8}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getAmount()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v15

    .line 153
    iget-object v8, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 154
    .line 155
    invoke-static {v8}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-virtual {v8}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v16

    .line 163
    iget-object v8, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 164
    .line 165
    invoke-static {v8}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-virtual {v8}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getConfirmInfo()Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    if-eqz v8, :cond_6

    .line 174
    .line 175
    invoke-virtual {v8}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getTimeDis()Ljava/lang/Long;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    move-object/from16 v17, v8

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_6
    move-object/from16 v17, v7

    .line 183
    .line 184
    :goto_4
    move-object v8, v2

    .line 185
    move-object v9, v10

    .line 186
    move-object v10, v11

    .line 187
    move-object v11, v12

    .line 188
    move-object v12, v13

    .line 189
    move-object v13, v14

    .line 190
    move-object v14, v15

    .line 191
    move-object/from16 v15, v16

    .line 192
    .line 193
    move-object/from16 v16, v17

    .line 194
    .line 195
    invoke-direct/range {v8 .. v16}, Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    .line 197
    .line 198
    iget-object v8, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 199
    .line 200
    invoke-static {v8}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->V(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/PayrollViewModel;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    iput v5, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->label:I

    .line 205
    .line 206
    invoke-virtual {v8, v2, v0}, Lteam/opay/business/payroll/PayrollViewModel;->f(Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;Ljr2;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    if-ne v2, v1, :cond_7

    .line 211
    .line 212
    return-object v1

    .line 213
    :cond_7
    :goto_5
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 214
    .line 215
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 216
    .line 217
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    const-string v5, "<get-lifecycle>(...)"

    .line 222
    .line 223
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 227
    .line 228
    invoke-static {v1, v5}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_18

    .line 233
    .line 234
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->$stepType:Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_8

    .line 241
    .line 242
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 243
    .line 244
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->T(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)[Z

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    aput-boolean v4, v1, v4

    .line 249
    .line 250
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 251
    .line 252
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->d0(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)V

    .line 253
    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_8
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 257
    .line 258
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->Q(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lzkb;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    iget-object v1, v1, Lzkb;->f:Lteam/opay/core/widget/PulseLoaderView;

    .line 263
    .line 264
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 268
    .line 269
    .line 270
    :goto_6
    instance-of v1, v2, Lteam/opay/core/http/HttpResult$Success;

    .line 271
    .line 272
    if-eqz v1, :cond_15

    .line 273
    .line 274
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 275
    .line 276
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    check-cast v2, Lteam/opay/core/http/HttpResult$Success;

    .line 281
    .line 282
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    check-cast v3, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 287
    .line 288
    invoke-virtual {v1, v3}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->setConfirmInfo(Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;)V

    .line 289
    .line 290
    .line 291
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->$stepType:Ljava/lang/String;

    .line 292
    .line 293
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_e

    .line 298
    .line 299
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 300
    .line 301
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    check-cast v2, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 310
    .line 311
    if-eqz v2, :cond_a

    .line 312
    .line 313
    invoke-virtual {v2}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getAccountName()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    if-eqz v2, :cond_a

    .line 318
    .line 319
    invoke-static {v2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    if-nez v3, :cond_9

    .line 324
    .line 325
    goto :goto_7

    .line 326
    :cond_9
    move-object v2, v7

    .line 327
    :goto_7
    if-nez v2, :cond_d

    .line 328
    .line 329
    :cond_a
    iget-object v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 330
    .line 331
    invoke-static {v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v2}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankAccountName()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    if-eqz v2, :cond_b

    .line 340
    .line 341
    invoke-static {v2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    if-nez v3, :cond_b

    .line 346
    .line 347
    move-object v7, v2

    .line 348
    :cond_b
    if-nez v7, :cond_c

    .line 349
    .line 350
    iget-object v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 351
    .line 352
    sget v3, Lteam/opay/business/payroll/R$string;->payroll_default_amount_name:I

    .line 353
    .line 354
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    const-string v3, "getString(...)"

    .line 359
    .line 360
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    goto :goto_8

    .line 364
    :cond_c
    move-object v2, v7

    .line 365
    :cond_d
    :goto_8
    invoke-virtual {v1, v2}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->setRecipientBankAccountName(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 369
    .line 370
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->X(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)V

    .line 371
    .line 372
    .line 373
    iget-boolean v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->$fromClick:Z

    .line 374
    .line 375
    if-eqz v1, :cond_18

    .line 376
    .line 377
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 378
    .line 379
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getAmount()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    if-eqz v1, :cond_18

    .line 388
    .line 389
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 390
    .line 391
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->Q(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lzkb;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    iget-object v1, v1, Lzkb;->c:Lcom/google/android/material/button/MaterialButton;

    .line 396
    .line 397
    invoke-virtual {v1}, Landroid/view/View;->callOnClick()Z

    .line 398
    .line 399
    .line 400
    goto/16 :goto_a

    .line 401
    .line 402
    :cond_e
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    check-cast v1, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 407
    .line 408
    if-eqz v1, :cond_f

    .line 409
    .line 410
    invoke-virtual {v1}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getUpWindowType()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v7

    .line 414
    :cond_f
    if-eqz v7, :cond_14

    .line 415
    .line 416
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    sparse-switch v1, :sswitch_data_0

    .line 421
    .line 422
    .line 423
    goto :goto_9

    .line 424
    :sswitch_0
    const-string v1, "FIRST_LARGE_AMOUNT"

    .line 425
    .line 426
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    if-nez v1, :cond_10

    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_10
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 434
    .line 435
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    check-cast v2, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 440
    .line 441
    invoke-static {v1, v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->b0(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;)V

    .line 442
    .line 443
    .line 444
    goto/16 :goto_a

    .line 445
    .line 446
    :sswitch_1
    const-string v1, "FIRST_LARGE_AMOUNT_FAST"

    .line 447
    .line 448
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-nez v1, :cond_11

    .line 453
    .line 454
    goto :goto_9

    .line 455
    :cond_11
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 456
    .line 457
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    check-cast v2, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 462
    .line 463
    invoke-static {v1, v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->a0(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;)V

    .line 464
    .line 465
    .line 466
    goto :goto_a

    .line 467
    :sswitch_2
    const-string v1, "REPEAT"

    .line 468
    .line 469
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    if-nez v1, :cond_12

    .line 474
    .line 475
    goto :goto_9

    .line 476
    :cond_12
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 477
    .line 478
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    check-cast v2, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 483
    .line 484
    invoke-static {v1, v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->Z(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;)V

    .line 485
    .line 486
    .line 487
    goto :goto_a

    .line 488
    :sswitch_3
    const-string v1, "LARGE_AMOUNT"

    .line 489
    .line 490
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    if-nez v1, :cond_13

    .line 495
    .line 496
    goto :goto_9

    .line 497
    :cond_13
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 498
    .line 499
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    check-cast v2, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 504
    .line 505
    invoke-static {v1, v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->c0(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;)V

    .line 506
    .line 507
    .line 508
    goto :goto_a

    .line 509
    :cond_14
    :goto_9
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 510
    .line 511
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->P(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)V

    .line 512
    .line 513
    .line 514
    goto :goto_a

    .line 515
    :cond_15
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->$stepType:Ljava/lang/String;

    .line 516
    .line 517
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v1

    .line 521
    if-eqz v1, :cond_17

    .line 522
    .line 523
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 524
    .line 525
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-virtual {v1, v7}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->setConfirmInfo(Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;)V

    .line 530
    .line 531
    .line 532
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 533
    .line 534
    invoke-virtual {v1}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    if-eqz v2, :cond_16

    .line 543
    .line 544
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v7

    .line 548
    :cond_16
    invoke-static {v1, v7}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    goto :goto_a

    .line 552
    :cond_17
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$lookupTransferPopUp$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 553
    .line 554
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->P(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)V

    .line 555
    .line 556
    .line 557
    :cond_18
    :goto_a
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 558
    .line 559
    return-object v1

    .line 560
    nop

    .line 561
    :sswitch_data_0
    .sparse-switch
        -0x76422604 -> :sswitch_3
        -0x7020de65 -> :sswitch_2
        0x3996ccd0 -> :sswitch_1
        0x4c54134b -> :sswitch_0
    .end sparse-switch
.end method
