.class public final Lcashier/model/CashierViewModel$a;
.super Lteam/opay/pay/websocket/IWsMessageDelegate;
.source "CashierViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/model/CashierViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/websocket/IWsMessageDelegate<",
        "Lcashier/OrderChannelData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "cashier/model/CashierViewModel$a",
        "Lteam/opay/pay/websocket/IWsMessageDelegate;",
        "Lcashier/OrderChannelData;",
        "",
        "a",
        "()Ljava/lang/String;",
        "",
        "c",
        "()Z",
        "data",
        "",
        "f",
        "(Lcashier/OrderChannelData;)V",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcashier/model/CashierViewModel;


# direct methods
.method public constructor <init>(Lcashier/model/CashierViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/model/CashierViewModel$a;->a:Lcashier/model/CashierViewModel;

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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    check-cast p1, Lcashier/OrderChannelData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcashier/model/CashierViewModel$a;->f(Lcashier/OrderChannelData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Lcashier/OrderChannelData;)V
    .locals 13
    .param p1    # Lcashier/OrderChannelData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcashier/OrderChannelData;->getOrderNo()Ljava/lang/String;

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
    iget-object v3, p0, Lcashier/model/CashierViewModel$a;->a:Lcashier/model/CashierViewModel;

    .line 12
    .line 13
    invoke-virtual {v3}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v3}, Lcashier/data/OrderInfo;->a()Ljava/lang/String;

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
    sget-object v3, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lcashier/OrderChannelData;->getOrderStatus()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move-object v2, v1

    .line 41
    :goto_2
    const-string v9, "SUCCESS"

    .line 42
    .line 43
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    const-string v2, "0"

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    const-string v2, "1"

    .line 53
    .line 54
    :goto_3
    const-string v4, "st"

    .line 55
    .line 56
    invoke-static {v4, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    invoke-virtual {p1}, Lcashier/OrderChannelData;->getFailCode()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    goto :goto_4

    .line 67
    :cond_4
    move-object v4, v1

    .line 68
    :goto_4
    const-string v5, "errorcode"

    .line 69
    .line 70
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    invoke-virtual {p1}, Lcashier/OrderChannelData;->getFailMsg()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    goto :goto_5

    .line 81
    :cond_5
    move-object v5, v1

    .line 82
    :goto_5
    const-string v6, "errormessage"

    .line 83
    .line 84
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const/4 v6, 0x3

    .line 89
    new-array v6, v6, [Lkotlin/Pair;

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    aput-object v2, v6, v7

    .line 93
    .line 94
    aput-object v4, v6, v0

    .line 95
    .line 96
    const/4 v2, 0x2

    .line 97
    aput-object v5, v6, v2

    .line 98
    .line 99
    const/4 v7, 0x4

    .line 100
    const/4 v8, 0x0

    .line 101
    const-string v4, "COMMON_payment_status_websocket_page_show"

    .line 102
    .line 103
    const/4 v2, 0x0

    .line 104
    move-object v5, v6

    .line 105
    move-object v6, v2

    .line 106
    invoke-static/range {v3 .. v8}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Lcashier/model/CashierViewModel$a;->a:Lcashier/model/CashierViewModel;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    invoke-virtual {p1}, Lcashier/OrderChannelData;->getOrderStatus()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    goto :goto_6

    .line 127
    :cond_6
    move-object v2, v1

    .line 128
    :goto_6
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_7

    .line 133
    .line 134
    iget-object p1, p0, Lcashier/model/CashierViewModel$a;->a:Lcashier/model/CashierViewModel;

    .line 135
    .line 136
    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->n0()Landroidx/lifecycle/MutableLiveData;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    new-instance v6, Lcashier/data/CashierOrderResult;

    .line 141
    .line 142
    sget-object v1, Lcashier/data/CashierStatus;->SUCCEEDED:Lcashier/data/CashierStatus;

    .line 143
    .line 144
    const/4 v4, 0x6

    .line 145
    const/4 v5, 0x0

    .line 146
    const/4 v2, 0x0

    .line 147
    const/4 v3, 0x0

    .line 148
    move-object v0, v6

    .line 149
    invoke-direct/range {v0 .. v5}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_e

    .line 156
    .line 157
    :cond_7
    if-eqz p1, :cond_8

    .line 158
    .line 159
    invoke-virtual {p1}, Lcashier/OrderChannelData;->getOrderStatus()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    goto :goto_7

    .line 164
    :cond_8
    move-object v2, v1

    .line 165
    :goto_7
    const-string v3, "FAIL"

    .line 166
    .line 167
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_e

    .line 172
    .line 173
    iget-object v2, p0, Lcashier/model/CashierViewModel$a;->a:Lcashier/model/CashierViewModel;

    .line 174
    .line 175
    sget v3, Lteam/opay/pay/cashier/R$string;->pay_failed_header:I

    .line 176
    .line 177
    invoke-static {v3}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-virtual {p1}, Lcashier/OrderChannelData;->getFailMsg()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    if-eqz v3, :cond_b

    .line 186
    .line 187
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-nez v4, :cond_9

    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_9
    move-object v1, v3

    .line 195
    :goto_8
    if-nez v1, :cond_a

    .line 196
    .line 197
    goto :goto_a

    .line 198
    :cond_a
    :goto_9
    move-object v6, v1

    .line 199
    goto :goto_b

    .line 200
    :cond_b
    :goto_a
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_failed_description:I

    .line 201
    .line 202
    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    goto :goto_9

    .line 207
    :goto_b
    invoke-virtual {p1}, Lcashier/OrderChannelData;->getRepay()Ljava/lang/Boolean;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 212
    .line 213
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    xor-int/lit8 v10, v1, 0x1

    .line 218
    .line 219
    invoke-virtual {p1}, Lcashier/OrderChannelData;->getFailCode()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const-string v1, ""

    .line 224
    .line 225
    if-nez v0, :cond_c

    .line 226
    .line 227
    move-object v7, v1

    .line 228
    goto :goto_c

    .line 229
    :cond_c
    move-object v7, v0

    .line 230
    :goto_c
    iget-object v0, p0, Lcashier/model/CashierViewModel$a;->a:Lcashier/model/CashierViewModel;

    .line 231
    .line 232
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcashier/data/ConfirmPayReq;->a()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    new-instance v0, Lcashier/data/FailedInfo;

    .line 241
    .line 242
    const/16 v11, 0x8

    .line 243
    .line 244
    const/4 v12, 0x0

    .line 245
    const/4 v8, 0x0

    .line 246
    move-object v4, v0

    .line 247
    invoke-direct/range {v4 .. v12}, Lcashier/data/FailedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v0}, Lcashier/model/CashierViewModel;->A0(Lcashier/data/FailedInfo;)V

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Lcashier/model/CashierViewModel$a;->a:Lcashier/model/CashierViewModel;

    .line 254
    .line 255
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->n0()Landroidx/lifecycle/MutableLiveData;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    new-instance v8, Lcashier/data/CashierOrderResult;

    .line 260
    .line 261
    sget-object v3, Lcashier/data/CashierStatus;->FAILED:Lcashier/data/CashierStatus;

    .line 262
    .line 263
    invoke-virtual {p1}, Lcashier/OrderChannelData;->getFailCode()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    if-nez p1, :cond_d

    .line 268
    .line 269
    move-object v4, v1

    .line 270
    goto :goto_d

    .line 271
    :cond_d
    move-object v4, p1

    .line 272
    :goto_d
    const/4 v6, 0x4

    .line 273
    const/4 v7, 0x0

    .line 274
    const/4 v5, 0x0

    .line 275
    move-object v2, v8

    .line 276
    invoke-direct/range {v2 .. v7}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v8}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    :cond_e
    :goto_e
    return-void
.end method
