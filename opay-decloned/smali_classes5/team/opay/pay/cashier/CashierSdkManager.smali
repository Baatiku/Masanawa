.class public final Lteam/opay/pay/cashier/CashierSdkManager;
.super Lteam/opay/pay/cashier/BaseCashierManager;
.source "CashierSdkManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/CashierSdkManager$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0018\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/pay/cashier/CashierSdkManager;",
        "Lteam/opay/pay/cashier/BaseCashierManager;",
        "paymentActivity",
        "Landroidx/fragment/app/FragmentActivity;",
        "viewModel",
        "Lteam/opay/pay/cashier/PaySheetViewModel;",
        "<init>",
        "(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/PaySheetViewModel;)V",
        "getViewModel",
        "()Lteam/opay/pay/cashier/PaySheetViewModel;",
        "openCashier",
        "",
        "input",
        "Lteam/opay/swarmfoundation/payment/PayInput;",
        "notifyAddMoney",
        "orderNo",
        "",
        "fromOWealth",
        "",
        "afterPayment",
        "payResult",
        "Lcashier/PayResult;",
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
.field private final viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/PaySheetViewModel;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/cashier/PaySheetViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "paymentActivity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewModel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lteam/opay/pay/cashier/BaseCashierManager;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public afterPayment(Lcashier/PayResult;)V
    .locals 17
    .param p1    # Lcashier/PayResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "payResult"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcashier/PayResult;->c()Lcashier/CashierResult;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v3, Lteam/opay/pay/cashier/CashierSdkManager$a;->a:[I

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    aget v1, v3, v1

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    const/4 v5, 0x1

    .line 24
    if-eq v1, v5, :cond_b

    .line 25
    .line 26
    const-string v6, "team.opay.pay.order_no"

    .line 27
    .line 28
    if-eq v1, v3, :cond_a

    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lcashier/PayResult;->c()Lcashier/CashierResult;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v3, Lcashier/CashierResult;->SUCCESS:Lcashier/CashierResult;

    .line 35
    .line 36
    if-ne v1, v3, :cond_0

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    iget-object v3, v0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 42
    .line 43
    invoke-virtual {v3}, Lteam/opay/pay/cashier/PaySheetViewModel;->m0()Lteam/opay/pay/cashier/OrderInput;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v7}, Lteam/opay/pay/cashier/OrderInput;->getServiceType()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-static {v7, v8, v1}, Lfwa;->d(Ljava/lang/String;Landroid/content/Context;Z)Lteam/opay/pay/cashier/SuccessInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v3, v7}, Lteam/opay/pay/cashier/PaySheetViewModel;->d1(Lteam/opay/pay/cashier/SuccessInfo;)V

    .line 60
    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    const/16 v1, 0xca

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/16 v1, 0xcb

    .line 68
    .line 69
    :goto_1
    iget-object v3, v0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 70
    .line 71
    invoke-virtual {v3}, Lteam/opay/pay/cashier/PaySheetViewModel;->y0()Lteam/opay/pay/cashier/result/OutPaySchemeInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string v7, ""

    .line 76
    .line 77
    if-eqz v3, :cond_5

    .line 78
    .line 79
    iget-object v2, v0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 80
    .line 81
    invoke-virtual {v2}, Lteam/opay/pay/cashier/PaySheetViewModel;->y0()Lteam/opay/pay/cashier/result/OutPaySchemeInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    invoke-virtual {v2}, Lteam/opay/pay/cashier/result/OutPaySchemeInfo;->b()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-ne v2, v5, :cond_2

    .line 92
    .line 93
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    sget-object v3, Lteam/opay/pay/cashier/result/OutPayResultFragment;->z:Lteam/opay/pay/cashier/result/OutPayResultFragment$Companion;

    .line 98
    .line 99
    invoke-virtual {v3, v1}, Lteam/opay/pay/cashier/result/OutPayResultFragment$Companion;->a(I)Lteam/opay/pay/cashier/result/OutPayResultFragment;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v2, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_4

    .line 107
    .line 108
    :cond_2
    iget-object v2, v0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 109
    .line 110
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v2, v3}, Lteam/opay/pay/cashier/PaySheetViewModel;->Y(Landroid/app/Activity;)V

    .line 115
    .line 116
    .line 117
    iget-object v2, v0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 118
    .line 119
    invoke-virtual {v2}, Lteam/opay/pay/cashier/PaySheetViewModel;->D0()Landroidx/lifecycle/MutableLiveData;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    new-instance v3, Lteam/opay/pay/cashier/PaymentResult;

    .line 124
    .line 125
    new-instance v4, Landroid/content/Intent;

    .line 126
    .line 127
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 128
    .line 129
    .line 130
    iget-object v5, v0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 131
    .line 132
    invoke-virtual {v5}, Lteam/opay/pay/cashier/PaySheetViewModel;->l0()Lteam/opay/pay/cashier/OrderInfo;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    if-eqz v5, :cond_4

    .line 137
    .line 138
    invoke-virtual {v5}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    if-nez v5, :cond_3

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_3
    move-object v7, v5

    .line 146
    :cond_4
    :goto_2
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-direct {v3, v1, v4}, Lteam/opay/pay/cashier/PaymentResult;-><init>(ILandroid/content/Intent;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_4

    .line 164
    .line 165
    :cond_5
    iget-object v3, v0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 166
    .line 167
    invoke-virtual {v3}, Lteam/opay/pay/cashier/PaySheetViewModel;->j0()Lteam/opay/pay/cashier/CashDeskInput;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v3}, Lteam/opay/pay/cashier/CashDeskInput;->getShowStatePage()Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_7

    .line 176
    .line 177
    iget-object v3, v0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 178
    .line 179
    new-instance v15, Lteam/opay/pay/cashier/OrderInfo;

    .line 180
    .line 181
    invoke-virtual/range {p1 .. p1}, Lcashier/PayResult;->a()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcashier/PayResult;->b()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcashier/PayResult;->d()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    const/16 v14, 0x72

    .line 194
    .line 195
    const/16 v16, 0x0

    .line 196
    .line 197
    const/4 v8, 0x0

    .line 198
    const/4 v11, 0x0

    .line 199
    const/4 v12, 0x0

    .line 200
    const/4 v13, 0x0

    .line 201
    move-object v6, v15

    .line 202
    move-object v4, v15

    .line 203
    move-object/from16 v15, v16

    .line 204
    .line 205
    invoke-direct/range {v6 .. v15}, Lteam/opay/pay/cashier/OrderInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lteam/opay/pay/cashier/newpayment/OWealthGuideData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v4}, Lteam/opay/pay/cashier/PaySheetViewModel;->W0(Lteam/opay/pay/cashier/OrderInfo;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual/range {p1 .. p1}, Lcashier/PayResult;->c()Lcashier/CashierResult;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    sget-object v3, Lcashier/CashierResult;->PENDING:Lcashier/CashierResult;

    .line 216
    .line 217
    if-ne v2, v3, :cond_6

    .line 218
    .line 219
    sget-object v2, Lnfa;->a:Lnfa;

    .line 220
    .line 221
    iget-object v3, v0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 222
    .line 223
    invoke-virtual {v3}, Lteam/opay/pay/cashier/PaySheetViewModel;->n0()Lteam/opay/pay/websocket/IWsMessageDelegate;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    const/4 v4, 0x0

    .line 228
    invoke-static {v2, v4, v3, v5, v4}, Lnfa;->c(Lnfa;Ljava/util/Map;Lteam/opay/pay/websocket/IWsMessageDelegate;ILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    sget-object v3, Lteam/opay/pay/cashier/result/PaymentSuccessFragment;->F:Lteam/opay/pay/cashier/result/PaymentSuccessFragment$Companion;

    .line 236
    .line 237
    invoke-virtual {v3, v1}, Lteam/opay/pay/cashier/result/PaymentSuccessFragment$Companion;->a(I)Lteam/opay/pay/cashier/result/PaymentSuccessFragment;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-static {v2, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_4

    .line 245
    .line 246
    :cond_7
    iget-object v2, v0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 247
    .line 248
    invoke-virtual {v2}, Lteam/opay/pay/cashier/PaySheetViewModel;->D0()Landroidx/lifecycle/MutableLiveData;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    new-instance v3, Lteam/opay/pay/cashier/PaymentResult;

    .line 253
    .line 254
    new-instance v4, Landroid/content/Intent;

    .line 255
    .line 256
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 257
    .line 258
    .line 259
    iget-object v5, v0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 260
    .line 261
    invoke-virtual {v5}, Lteam/opay/pay/cashier/PaySheetViewModel;->l0()Lteam/opay/pay/cashier/OrderInfo;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    if-eqz v5, :cond_9

    .line 266
    .line 267
    invoke-virtual {v5}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    if-nez v5, :cond_8

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_8
    move-object v7, v5

    .line 275
    :cond_9
    :goto_3
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-direct {v3, v1, v4}, Lteam/opay/pay/cashier/PaymentResult;-><init>(ILandroid/content/Intent;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_a
    iget-object v1, v0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 294
    .line 295
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-virtual {v1, v3}, Lteam/opay/pay/cashier/PaySheetViewModel;->Y(Landroid/app/Activity;)V

    .line 300
    .line 301
    .line 302
    iget-object v1, v0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 303
    .line 304
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->D0()Landroidx/lifecycle/MutableLiveData;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    new-instance v3, Lteam/opay/pay/cashier/PaymentResult;

    .line 309
    .line 310
    new-instance v4, Landroid/content/Intent;

    .line 311
    .line 312
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual/range {p1 .. p1}, Lcashier/PayResult;->a()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    const/16 v4, 0xcd

    .line 324
    .line 325
    invoke-direct {v3, v4, v2}, Lteam/opay/pay/cashier/PaymentResult;-><init>(ILandroid/content/Intent;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 336
    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_b
    iget-object v1, v0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 340
    .line 341
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-virtual {v1, v2}, Lteam/opay/pay/cashier/PaySheetViewModel;->Y(Landroid/app/Activity;)V

    .line 346
    .line 347
    .line 348
    iget-object v1, v0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 349
    .line 350
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->D0()Landroidx/lifecycle/MutableLiveData;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    new-instance v2, Lteam/opay/pay/cashier/PaymentResult;

    .line 355
    .line 356
    const/16 v4, 0xc9

    .line 357
    .line 358
    const/4 v5, 0x0

    .line 359
    invoke-direct {v2, v4, v5, v3, v5}, Lteam/opay/pay/cashier/PaymentResult;-><init>(ILandroid/content/Intent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 370
    .line 371
    .line 372
    :goto_4
    return-void
.end method

.method public final getViewModel()Lteam/opay/pay/cashier/PaySheetViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public notifyAddMoney(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "orderNo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->h0()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "v6"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/pay/cashier/CashierSdkManager;->viewModel:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->m0()Lteam/opay/pay/cashier/OrderInput;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lteam/opay/pay/cashier/OrderInput;->getOrderNo()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    if-nez p2, :cond_1

    .line 37
    .line 38
    :cond_0
    sget-object p1, Lb62;->a:Lb62;

    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Lb62;->b(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getAddMoneyCallback()Lkotlin/jvm/functions/Function1;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    new-instance p2, Lorg/json/JSONObject;

    .line 54
    .line 55
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_2
    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/BaseCashierManager;->setAddMoneyCallback(Lkotlin/jvm/functions/Function1;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method public final openCashier(Lteam/opay/swarmfoundation/payment/PayInput;)V
    .locals 2
    .param p1    # Lteam/opay/swarmfoundation/payment/PayInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lb62;->a:Lb62;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1, p1, p0}, Lb62;->f(Landroid/content/Context;Lteam/opay/swarmfoundation/payment/PayInput;Lcashier/CashierDelegate;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
