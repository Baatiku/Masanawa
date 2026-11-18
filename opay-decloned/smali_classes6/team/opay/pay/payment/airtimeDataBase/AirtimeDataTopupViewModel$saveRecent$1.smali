.class final Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AirtimeDataTopupViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->N1()V
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
    c = "team.opay.pay.payment.airtimeDataBase.AirtimeDataTopupViewModel$saveRecent$1"
    f = "AirtimeDataTopupViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

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
    new-instance p1, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;-><init>(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_9

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->R(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object v3, v2

    .line 34
    check-cast v3, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;

    .line 35
    .line 36
    invoke-virtual {v3}, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;->b()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    const-string v4, ""

    .line 43
    .line 44
    :cond_1
    invoke-static {v4}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->P0()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v5}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->b1()Lteam/opay/core/api/GraphQL$ServiceType;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    sget-object v5, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 67
    .line 68
    if-ne v4, v5, :cond_2

    .line 69
    .line 70
    invoke-virtual {v3}, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;->a()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-static {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->N(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ne v3, v4, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v3}, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;->d()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-static {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->N(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-ne v3, v4, :cond_0

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    const/4 v2, 0x0

    .line 93
    :goto_0
    check-cast v2, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;

    .line 94
    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    invoke-virtual {v2, v0, v1}, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;->f(J)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    new-instance v0, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;

    .line 106
    .line 107
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 108
    .line 109
    invoke-virtual {v1}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->P0()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v5

    .line 117
    const/16 v9, 0xc

    .line 118
    .line 119
    const/4 v10, 0x0

    .line 120
    const/4 v7, 0x0

    .line 121
    const/4 v8, 0x0

    .line 122
    move-object v3, v0

    .line 123
    invoke-direct/range {v3 .. v10}, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;-><init>(Ljava/lang/String;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 127
    .line 128
    invoke-virtual {v1}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->b1()Lteam/opay/core/api/GraphQL$ServiceType;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    sget-object v2, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 133
    .line 134
    if-ne v1, v2, :cond_5

    .line 135
    .line 136
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 137
    .line 138
    invoke-static {v1}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->N(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;->e(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 147
    .line 148
    invoke-static {v1}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->N(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;->g(I)V

    .line 153
    .line 154
    .line 155
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-static {v0}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 160
    .line 161
    .line 162
    :goto_2
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 163
    .line 164
    new-instance v1, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_7

    .line 178
    .line 179
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    move-object v3, v2

    .line 184
    check-cast v3, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;

    .line 185
    .line 186
    invoke-virtual {v3}, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;->c()J

    .line 187
    .line 188
    .line 189
    move-result-wide v3

    .line 190
    invoke-static {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->O(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    const v6, 0xea60

    .line 195
    .line 196
    .line 197
    mul-int v5, v5, v6

    .line 198
    .line 199
    int-to-long v5, v5

    .line 200
    cmp-long v7, v3, v5

    .line 201
    .line 202
    if-lez v7, :cond_6

    .line 203
    .line 204
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_7
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 209
    .line 210
    invoke-virtual {p1}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->b1()Lteam/opay/core/api/GraphQL$ServiceType;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 215
    .line 216
    if-ne p1, v0, :cond_8

    .line 217
    .line 218
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 219
    .line 220
    invoke-static {p1}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->Q(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)Lteam/opay/core/settings/NoClearStorage;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 225
    .line 226
    invoke-static {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->M(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)Lcom/google/gson/Gson;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {p1, v0}, Lteam/opay/core/settings/NoClearStorage;->t1(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_8
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 239
    .line 240
    invoke-static {p1}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->Q(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)Lteam/opay/core/settings/NoClearStorage;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$saveRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 245
    .line 246
    invoke-static {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->M(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)Lcom/google/gson/Gson;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {p1, v0}, Lteam/opay/core/settings/NoClearStorage;->Y0(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 258
    .line 259
    return-object p1

    .line 260
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 261
    .line 262
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 263
    .line 264
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p1
.end method
