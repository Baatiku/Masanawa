.class final Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChangePayrollInfoDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->o0()V
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
    c = "team.opay.sme.store.user.ChangePayrollInfoDialog$lookupTransferPopUp$1"
    f = "ChangePayrollInfoDialog.kt"
    l = {
        0xfa
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/user/ChangePayrollInfoDialog;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

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
    new-instance p1, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;-><init>(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

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
    iget v2, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const-string v4, ""

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    move-object/from16 v2, p1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 34
    .line 35
    invoke-static {v2}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->c0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lcud;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v2, v2, Lcud;->g:Lteam/opay/core/widget/PulseLoaderView;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-static {v2}, Lg0g;->h(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    new-instance v2, Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;

    .line 49
    .line 50
    iget-object v5, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 51
    .line 52
    invoke-static {v5}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->d0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v5}, Lteam/opay/sme/store/api/PayrollBankInfo;->getCardNumber()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    if-nez v5, :cond_3

    .line 61
    .line 62
    move-object v6, v4

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move-object v6, v5

    .line 65
    :goto_0
    iget-object v5, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 66
    .line 67
    invoke-static {v5}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->d0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v5}, Lteam/opay/sme/store/api/PayrollBankInfo;->getBankCode()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    if-nez v5, :cond_4

    .line 76
    .line 77
    move-object v7, v4

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    move-object v7, v5

    .line 80
    :goto_1
    iget-object v5, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 81
    .line 82
    invoke-static {v5}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->e0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lteam/opay/sme/store/StoreViewModel;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v5}, Lteam/opay/sme/store/StoreViewModel;->N()Lteam/opay/core/common/amount/Country;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v5}, Lteam/opay/core/common/amount/Country;->getCountryCode()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    const/16 v14, 0xf0

    .line 95
    .line 96
    const/4 v15, 0x0

    .line 97
    const-string v9, "AMOUNT_BEFORE"

    .line 98
    .line 99
    const/4 v10, 0x0

    .line 100
    const/4 v11, 0x0

    .line 101
    const/4 v12, 0x0

    .line 102
    const/4 v13, 0x0

    .line 103
    move-object v5, v2

    .line 104
    invoke-direct/range {v5 .. v15}, Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    .line 106
    .line 107
    iget-object v5, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 108
    .line 109
    invoke-static {v5}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->e0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lteam/opay/sme/store/StoreViewModel;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    iput v3, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->label:I

    .line 114
    .line 115
    invoke-virtual {v5, v2, v0}, Lteam/opay/sme/store/StoreViewModel;->f(Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;Ljr2;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    if-ne v2, v1, :cond_5

    .line 120
    .line 121
    return-object v1

    .line 122
    :cond_5
    :goto_2
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 123
    .line 124
    iget-object v1, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 125
    .line 126
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-interface {v1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 135
    .line 136
    invoke-static {v1, v5}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_e

    .line 141
    .line 142
    iget-object v1, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 143
    .line 144
    invoke-static {v1}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->c0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lcud;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_6

    .line 149
    .line 150
    iget-object v1, v1, Lcud;->g:Lteam/opay/core/widget/PulseLoaderView;

    .line 151
    .line 152
    if-eqz v1, :cond_6

    .line 153
    .line 154
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 155
    .line 156
    .line 157
    :cond_6
    instance-of v1, v2, Lteam/opay/core/http/HttpResult$Success;

    .line 158
    .line 159
    const/4 v5, 0x0

    .line 160
    if-eqz v1, :cond_c

    .line 161
    .line 162
    iget-object v1, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 163
    .line 164
    invoke-static {v1}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->d0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v2, Lteam/opay/core/http/HttpResult$Success;

    .line 169
    .line 170
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 175
    .line 176
    if-eqz v3, :cond_7

    .line 177
    .line 178
    invoke-virtual {v3}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getAccountName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    goto :goto_3

    .line 183
    :cond_7
    move-object v3, v5

    .line 184
    :goto_3
    if-nez v3, :cond_8

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_8
    move-object v4, v3

    .line 188
    :goto_4
    invoke-virtual {v1, v4}, Lteam/opay/sme/store/api/PayrollBankInfo;->setBankAccountName(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v1, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 192
    .line 193
    invoke-static {v1}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->d0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iget-object v3, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 198
    .line 199
    invoke-static {v3}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->d0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 208
    .line 209
    if-eqz v4, :cond_9

    .line 210
    .line 211
    invoke-virtual {v4}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getServiceId()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    goto :goto_5

    .line 216
    :cond_9
    move-object v4, v5

    .line 217
    :goto_5
    invoke-virtual {v3, v4}, Lteam/opay/sme/store/api/PayrollBankInfo;->getServiceType(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v1, v3}, Lteam/opay/sme/store/api/PayrollBankInfo;->setServiceType(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 225
    .line 226
    invoke-static {v1}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->d0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    check-cast v3, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 235
    .line 236
    if-eqz v3, :cond_a

    .line 237
    .line 238
    invoke-virtual {v3}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getSupport()Ljava/lang/Boolean;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    goto :goto_6

    .line 243
    :cond_a
    move-object v3, v5

    .line 244
    :goto_6
    invoke-virtual {v1, v3}, Lteam/opay/sme/store/api/PayrollBankInfo;->setSupport(Ljava/lang/Boolean;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 248
    .line 249
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    check-cast v2, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 254
    .line 255
    if-eqz v2, :cond_b

    .line 256
    .line 257
    invoke-virtual {v2}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getAccountName()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    goto :goto_7

    .line 262
    :cond_b
    move-object v2, v5

    .line 263
    :goto_7
    const/4 v3, 0x0

    .line 264
    const/4 v4, 0x2

    .line 265
    invoke-static {v1, v2, v3, v4, v5}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->A0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    iget-object v1, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 269
    .line 270
    invoke-static {v1}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->b0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)V

    .line 271
    .line 272
    .line 273
    goto :goto_8

    .line 274
    :cond_c
    iget-object v1, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 275
    .line 276
    invoke-static {v1}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->d0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v1, v4}, Lteam/opay/sme/store/api/PayrollBankInfo;->setBankAccountName(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget-object v1, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 284
    .line 285
    invoke-static {v1}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->d0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {v1, v5}, Lteam/opay/sme/store/api/PayrollBankInfo;->setSupport(Ljava/lang/Boolean;)V

    .line 290
    .line 291
    .line 292
    iget-object v1, v0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$lookupTransferPopUp$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 293
    .line 294
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    if-eqz v2, :cond_d

    .line 299
    .line 300
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    :cond_d
    invoke-static {v1, v5, v3}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->f0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;Ljava/lang/String;Z)V

    .line 305
    .line 306
    .line 307
    :cond_e
    :goto_8
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 308
    .line 309
    return-object v1
.end method
