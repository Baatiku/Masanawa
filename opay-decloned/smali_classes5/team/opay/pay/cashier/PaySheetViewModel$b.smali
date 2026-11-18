.class public final Lteam/opay/pay/cashier/PaySheetViewModel$b;
.super Lteam/opay/pay/websocket/IWsMessageDelegate;
.source "PaySheetViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/cashier/PaySheetViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/home/security/SecretSecurityRepository;Lteam/opay/pay/cashier/CashierRepository;Laj0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/websocket/IWsMessageDelegate<",
        "Lteam/opay/pay/cashier/OrderChannelData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "team/opay/pay/cashier/PaySheetViewModel$b",
        "Lteam/opay/pay/websocket/IWsMessageDelegate;",
        "Lteam/opay/pay/cashier/OrderChannelData;",
        "",
        "a",
        "()Ljava/lang/String;",
        "",
        "c",
        "()Z",
        "data",
        "",
        "f",
        "(Lteam/opay/pay/cashier/OrderChannelData;)V",
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
.field public final synthetic a:Lteam/opay/pay/cashier/PaySheetViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/cashier/PaySheetViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/PaySheetViewModel$b;->a:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/pay/websocket/IWsMessageDelegate;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "opay_app_cashier_pay_result_event"

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/cashier/OrderChannelData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/PaySheetViewModel$b;->f(Lteam/opay/pay/cashier/OrderChannelData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Lteam/opay/pay/cashier/OrderChannelData;)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderChannelData;->getOrderNo()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v2, v1

    .line 11
    :goto_0
    iget-object v3, p0, Lteam/opay/pay/cashier/PaySheetViewModel$b;->a:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 12
    .line 13
    invoke-virtual {v3}, Lteam/opay/pay/cashier/PaySheetViewModel;->l0()Lteam/opay/pay/cashier/OrderInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v3}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object v3, v1

    .line 25
    :goto_1
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_e

    .line 30
    .line 31
    sget-object v2, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderChannelData;->getOrderStatus()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move-object v3, v1

    .line 41
    :goto_2
    const-string v4, "SUCCESS"

    .line 42
    .line 43
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    const-string v3, "0"

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    const-string v3, "1"

    .line 53
    .line 54
    :goto_3
    const-string v5, "st"

    .line 55
    .line 56
    invoke-static {v5, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderChannelData;->getFailCode()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    goto :goto_4

    .line 67
    :cond_4
    move-object v5, v1

    .line 68
    :goto_4
    const-string v6, "errorcode"

    .line 69
    .line 70
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderChannelData;->getFailMsg()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    goto :goto_5

    .line 81
    :cond_5
    move-object v6, v1

    .line 82
    :goto_5
    const-string v7, "errormessage"

    .line 83
    .line 84
    invoke-static {v7, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    const/4 v7, 0x3

    .line 89
    new-array v7, v7, [Lkotlin/Pair;

    .line 90
    .line 91
    const/4 v8, 0x0

    .line 92
    aput-object v3, v7, v8

    .line 93
    .line 94
    aput-object v5, v7, v0

    .line 95
    .line 96
    const/4 v3, 0x2

    .line 97
    aput-object v6, v7, v3

    .line 98
    .line 99
    const-string v3, "COMMON_payment_status_websocket_page_show"

    .line 100
    .line 101
    invoke-virtual {v2, v3, v7}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lteam/opay/pay/cashier/PaySheetViewModel$b;->a:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 105
    .line 106
    invoke-virtual {v2}, Lteam/opay/pay/cashier/PaySheetViewModel;->F0()Landroidx/lifecycle/MutableLiveData;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderChannelData;->getOrderStatus()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    goto :goto_6

    .line 122
    :cond_6
    move-object v2, v1

    .line 123
    :goto_6
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_7

    .line 128
    .line 129
    iget-object p1, p0, Lteam/opay/pay/cashier/PaySheetViewModel$b;->a:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 130
    .line 131
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->L0()Landroidx/lifecycle/MutableLiveData;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    new-instance v6, Lteam/opay/pay/cashier/OrderResult;

    .line 136
    .line 137
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->SUCCEEDED:Lteam/opay/pay/cashier/OrderStatus;

    .line 138
    .line 139
    const/4 v4, 0x6

    .line 140
    const/4 v5, 0x0

    .line 141
    const/4 v2, 0x0

    .line 142
    const/4 v3, 0x0

    .line 143
    move-object v0, v6

    .line 144
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/cashier/OrderResult;-><init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_e

    .line 151
    .line 152
    :cond_7
    if-eqz p1, :cond_8

    .line 153
    .line 154
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderChannelData;->getOrderStatus()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    goto :goto_7

    .line 159
    :cond_8
    move-object v2, v1

    .line 160
    :goto_7
    const-string v3, "FAIL"

    .line 161
    .line 162
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_e

    .line 167
    .line 168
    iget-object v2, p0, Lteam/opay/pay/cashier/PaySheetViewModel$b;->a:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 169
    .line 170
    invoke-static {v2}, Lteam/opay/pay/cashier/PaySheetViewModel;->K(Lteam/opay/pay/cashier/PaySheetViewModel;)Landroid/app/Application;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    sget v4, Lteam/opay/pay/R$string;->payment_failed_header:I

    .line 175
    .line 176
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    const-string v3, "getString(...)"

    .line 181
    .line 182
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderChannelData;->getFailMsg()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    if-eqz v4, :cond_b

    .line 190
    .line 191
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-nez v5, :cond_9

    .line 196
    .line 197
    goto :goto_8

    .line 198
    :cond_9
    move-object v1, v4

    .line 199
    :goto_8
    if-nez v1, :cond_a

    .line 200
    .line 201
    goto :goto_a

    .line 202
    :cond_a
    :goto_9
    move-object v7, v1

    .line 203
    goto :goto_b

    .line 204
    :cond_b
    :goto_a
    iget-object v1, p0, Lteam/opay/pay/cashier/PaySheetViewModel$b;->a:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 205
    .line 206
    invoke-static {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->K(Lteam/opay/pay/cashier/PaySheetViewModel;)Landroid/app/Application;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    sget v4, Lteam/opay/pay/R$string;->payment_failed_description:I

    .line 211
    .line 212
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto :goto_9

    .line 220
    :goto_b
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderChannelData;->getRepay()Ljava/lang/Boolean;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 225
    .line 226
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    xor-int/lit8 v11, v1, 0x1

    .line 231
    .line 232
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderChannelData;->getFailCode()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const-string v1, ""

    .line 237
    .line 238
    if-nez v0, :cond_c

    .line 239
    .line 240
    move-object v9, v1

    .line 241
    goto :goto_c

    .line 242
    :cond_c
    move-object v9, v0

    .line 243
    :goto_c
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel$b;->a:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 244
    .line 245
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->g0()Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->a()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    new-instance v0, Lteam/opay/pay/cashier/FailedInfo;

    .line 254
    .line 255
    const/4 v12, 0x4

    .line 256
    const/4 v13, 0x0

    .line 257
    const/4 v8, 0x0

    .line 258
    move-object v5, v0

    .line 259
    invoke-direct/range {v5 .. v13}, Lteam/opay/pay/cashier/FailedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->U0(Lteam/opay/pay/cashier/FailedInfo;)V

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel$b;->a:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 266
    .line 267
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->L0()Landroidx/lifecycle/MutableLiveData;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    new-instance v8, Lteam/opay/pay/cashier/OrderResult;

    .line 272
    .line 273
    sget-object v3, Lteam/opay/pay/cashier/OrderStatus;->FAILED:Lteam/opay/pay/cashier/OrderStatus;

    .line 274
    .line 275
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderChannelData;->getFailCode()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    if-nez p1, :cond_d

    .line 280
    .line 281
    move-object v4, v1

    .line 282
    goto :goto_d

    .line 283
    :cond_d
    move-object v4, p1

    .line 284
    :goto_d
    const/4 v6, 0x4

    .line 285
    const/4 v7, 0x0

    .line 286
    const/4 v5, 0x0

    .line 287
    move-object v2, v8

    .line 288
    invoke-direct/range {v2 .. v7}, Lteam/opay/pay/cashier/OrderResult;-><init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v8}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    :cond_e
    :goto_e
    return-void
.end method
