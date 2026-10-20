.class final Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PayrollAmountFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->k0()V
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
    c = "team.opay.business.payroll.payroll.PayrollAmountFragment$createPreOrder$1"
    f = "PayrollAmountFragment.kt"
    l = {
        0x12c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/payroll/payroll/PayrollAmountFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

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
    new-instance p1, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;-><init>(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 41

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
    iget v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    move-object/from16 v2, p1

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v1

    .line 29
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 33
    .line 34
    invoke-static {v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->R(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/core/common/amount/Country;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lteam/opay/core/common/amount/Country;->getCountryCode()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    new-instance v7, Lteam/opay/core/common/amount/MoneyAmount;

    .line 43
    .line 44
    iget-object v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 45
    .line 46
    invoke-static {v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getAmount()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v4, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 55
    .line 56
    invoke-static {v4}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->R(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/core/common/amount/Country;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Lteam/opay/core/common/amount/Country;->getCurrency()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-direct {v7, v2, v4}, Lteam/opay/core/common/amount/MoneyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 68
    .line 69
    invoke-static {v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string v4, ""

    .line 78
    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    move-object/from16 v21, v4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    move-object/from16 v21, v2

    .line 85
    .line 86
    :goto_0
    iget-object v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 87
    .line 88
    invoke-static {v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankAccountNo()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-nez v2, :cond_3

    .line 97
    .line 98
    move-object v14, v4

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    move-object v14, v2

    .line 101
    :goto_1
    iget-object v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 102
    .line 103
    invoke-static {v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankCode()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-nez v2, :cond_4

    .line 112
    .line 113
    move-object/from16 v16, v4

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    move-object/from16 v16, v2

    .line 117
    .line 118
    :goto_2
    iget-object v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 119
    .line 120
    invoke-static {v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-nez v2, :cond_5

    .line 129
    .line 130
    move-object v15, v4

    .line 131
    goto :goto_3

    .line 132
    :cond_5
    move-object v15, v2

    .line 133
    :goto_3
    iget-object v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 134
    .line 135
    invoke-static {v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankAccountName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    if-nez v2, :cond_6

    .line 144
    .line 145
    move-object/from16 v22, v4

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_6
    move-object/from16 v22, v2

    .line 149
    .line 150
    :goto_4
    new-instance v2, Lteam/opay/business/payroll/api/DisplayText;

    .line 151
    .line 152
    iget-object v5, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 153
    .line 154
    invoke-static {v5}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v5}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankAccountNo()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    if-nez v5, :cond_7

    .line 163
    .line 164
    move-object v5, v4

    .line 165
    :cond_7
    iget-object v6, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 166
    .line 167
    invoke-static {v6}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {v6}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankAccountName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    if-nez v6, :cond_8

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_8
    move-object v4, v6

    .line 179
    :goto_5
    iget-object v6, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 180
    .line 181
    invoke-static {v6}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v6}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    iget-object v9, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 190
    .line 191
    invoke-static {v9}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    invoke-virtual {v9}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankAccountNo()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    new-instance v10, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v11, "<font color=\"#1dcf9f\"><b>"

    .line 205
    .line 206
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v6, " "

    .line 213
    .line 214
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v6, "</b></font>"

    .line 221
    .line 222
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-direct {v2, v5, v4, v6}, Lteam/opay/business/payroll/api/DisplayText;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v4, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 233
    .line 234
    invoke-static {v4}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->U(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v4}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getConfirmInfo()Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    if-eqz v4, :cond_9

    .line 243
    .line 244
    invoke-virtual {v4}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getUseMpos()Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    move/from16 v33, v4

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_9
    const/4 v4, 0x0

    .line 252
    const/16 v33, 0x0

    .line 253
    .line 254
    :goto_6
    new-instance v4, Lteam/opay/business/payroll/api/OrderInput;

    .line 255
    .line 256
    const/16 v39, 0x1

    .line 257
    .line 258
    const/16 v40, 0x0

    .line 259
    .line 260
    const-string v5, "bank"

    .line 261
    .line 262
    const-string v6, "bank"

    .line 263
    .line 264
    const/4 v9, 0x0

    .line 265
    const/4 v10, 0x0

    .line 266
    const/4 v11, 0x0

    .line 267
    const/4 v12, 0x0

    .line 268
    const/4 v13, 0x0

    .line 269
    const/16 v17, 0x0

    .line 270
    .line 271
    const/16 v18, 0x0

    .line 272
    .line 273
    const/16 v19, 0x0

    .line 274
    .line 275
    const/16 v20, 0x0

    .line 276
    .line 277
    const/16 v23, 0x0

    .line 278
    .line 279
    const/16 v25, 0x0

    .line 280
    .line 281
    const/16 v26, 0x0

    .line 282
    .line 283
    const/16 v27, 0x0

    .line 284
    .line 285
    const/16 v28, 0x0

    .line 286
    .line 287
    const/16 v29, 0x0

    .line 288
    .line 289
    const/16 v30, 0x0

    .line 290
    .line 291
    const/16 v31, 0x0

    .line 292
    .line 293
    const/16 v32, 0x0

    .line 294
    .line 295
    const/16 v34, 0x0

    .line 296
    .line 297
    const/16 v35, 0x0

    .line 298
    .line 299
    const/16 v36, 0x0

    .line 300
    .line 301
    const/16 v37, 0x0

    .line 302
    .line 303
    const v38, -0x100b0e10

    .line 304
    .line 305
    .line 306
    move-object/from16 p1, v4

    .line 307
    .line 308
    move-object/from16 v24, v2

    .line 309
    .line 310
    invoke-direct/range {v4 .. v40}, Lteam/opay/business/payroll/api/OrderInput;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/common/amount/MoneyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/business/payroll/api/DisplayText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 311
    .line 312
    .line 313
    iget-object v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 314
    .line 315
    invoke-static {v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->V(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/PayrollViewModel;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    iput v3, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->label:I

    .line 320
    .line 321
    move-object/from16 v3, p1

    .line 322
    .line 323
    invoke-virtual {v2, v3, v0}, Lteam/opay/business/payroll/PayrollViewModel;->t(Lteam/opay/business/payroll/api/OrderInput;Ljr2;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    if-ne v2, v1, :cond_a

    .line 328
    .line 329
    return-object v1

    .line 330
    :cond_a
    :goto_7
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 331
    .line 332
    instance-of v1, v2, Lteam/opay/core/http/HttpResult$Success;

    .line 333
    .line 334
    const/4 v3, 0x0

    .line 335
    if-eqz v1, :cond_d

    .line 336
    .line 337
    move-object v1, v2

    .line 338
    check-cast v1, Lteam/opay/core/http/HttpResult$Success;

    .line 339
    .line 340
    invoke-virtual {v1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    check-cast v4, Lteam/opay/business/payroll/api/PreOrderResp;

    .line 345
    .line 346
    if-eqz v4, :cond_b

    .line 347
    .line 348
    invoke-virtual {v4}, Lteam/opay/core/http/HttpBusiness;->a()Lteam/opay/core/http/BusinessInfo;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    if-eqz v4, :cond_b

    .line 353
    .line 354
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 355
    .line 356
    sget-object v3, Lid3;->a:Lid3;

    .line 357
    .line 358
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    const-string v6, "getChildFragmentManager(...)"

    .line 363
    .line 364
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    new-instance v6, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1$a;

    .line 368
    .line 369
    invoke-direct {v6, v1, v2, v4}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1$a;-><init>(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;Lteam/opay/core/http/HttpResult;Lteam/opay/core/http/BusinessInfo;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v3, v5, v4, v6}, Lid3;->n(Landroidx/fragment/app/FragmentManager;Lteam/opay/core/http/BusinessInfo;Lfa3;)V

    .line 373
    .line 374
    .line 375
    goto :goto_8

    .line 376
    :cond_b
    iget-object v2, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 377
    .line 378
    invoke-virtual {v1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    check-cast v1, Lteam/opay/business/payroll/api/PreOrderResp;

    .line 383
    .line 384
    if-eqz v1, :cond_c

    .line 385
    .line 386
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/PreOrderResp;->b()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    :cond_c
    invoke-static {v2, v3}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->W(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    goto :goto_8

    .line 394
    :cond_d
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 395
    .line 396
    invoke-static {v1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->Q(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lzkb;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    iget-object v1, v1, Lzkb;->f:Lteam/opay/core/widget/PulseLoaderView;

    .line 401
    .line 402
    const-string v4, "loadingView"

    .line 403
    .line 404
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 408
    .line 409
    .line 410
    iget-object v1, v0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 411
    .line 412
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    if-eqz v2, :cond_e

    .line 417
    .line 418
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    :cond_e
    invoke-static {v1, v3}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->e0(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    :goto_8
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 426
    .line 427
    return-object v1
.end method
