.class final Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VerifyFaceFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/account/verify/VerifyFaceFragment;->l1(Lteam/opay/pay/kyc/base/FaceResult;)V
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
    c = "team.opay.pay.account.verify.VerifyFaceFragment$validation$1"
    f = "VerifyFaceFragment.kt"
    l = {
        0xce
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $faceResult:Lteam/opay/pay/kyc/base/FaceResult;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/account/verify/VerifyFaceFragment;Lteam/opay/pay/kyc/base/FaceResult;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/VerifyFaceFragment;",
            "Lteam/opay/pay/kyc/base/FaceResult;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
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
    new-instance p1, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;-><init>(Lteam/opay/pay/account/verify/VerifyFaceFragment;Lteam/opay/pay/kyc/base/FaceResult;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

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
    iget v2, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->label:I

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
    goto/16 :goto_8

    .line 18
    .line 19
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v1

    .line 27
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v4, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 36
    .line 37
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/VerifyViewModel;->Y()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const-string v5, "valVerifyShowPage"

    .line 46
    .line 47
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iget-object v4, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 51
    .line 52
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/VerifyViewModel;->Q()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const-string v5, "pauseSecurityLockProtect"

    .line 61
    .line 62
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iget-object v4, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 66
    .line 67
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/VerifyViewModel;->f0()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const-string v5, "valVerifyShowPageType"

    .line 76
    .line 77
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    iget-object v4, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 81
    .line 82
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/BaseVerifyFaceFragment;->x0()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const-string v5, "initFaceToken"

    .line 87
    .line 88
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    iget-object v4, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 92
    .line 93
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/BaseVerifyFaceFragment;->A0()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v5, "supportFaceVersion"

    .line 98
    .line 99
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    iget-object v4, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 103
    .line 104
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    const/4 v14, 0x0

    .line 113
    if-eqz v4, :cond_2

    .line 114
    .line 115
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    goto :goto_0

    .line 120
    :cond_2
    move-object v4, v14

    .line 121
    :goto_0
    const-string v5, ""

    .line 122
    .line 123
    if-nez v4, :cond_3

    .line 124
    .line 125
    move-object v7, v5

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    move-object v7, v4

    .line 128
    :goto_1
    iget-object v4, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 129
    .line 130
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    if-eqz v4, :cond_4

    .line 139
    .line 140
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getSecurityId()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    goto :goto_2

    .line 145
    :cond_4
    move-object v4, v14

    .line 146
    :goto_2
    if-nez v4, :cond_5

    .line 147
    .line 148
    move-object v11, v5

    .line 149
    goto :goto_3

    .line 150
    :cond_5
    move-object v11, v4

    .line 151
    :goto_3
    iget-object v4, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 152
    .line 153
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/BaseVerifyFaceFragment;->B0()Lteam/opay/pay/account/verify/ValidationType;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    iget-object v4, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 158
    .line 159
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    iget-object v4, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 168
    .line 169
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/BaseVerifyFaceFragment;->C0()Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_6

    .line 174
    .line 175
    move-object v13, v5

    .line 176
    goto :goto_4

    .line 177
    :cond_6
    iget-object v4, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 178
    .line 179
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/FaceResult;->getImagePath()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    if-nez v4, :cond_7

    .line 184
    .line 185
    move-object v4, v5

    .line 186
    :cond_7
    invoke-static {v4}, Lixb;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    move-object v13, v4

    .line 191
    :goto_4
    iget-object v4, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 192
    .line 193
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/FaceResult;->getTraceId()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    if-nez v4, :cond_8

    .line 198
    .line 199
    move-object/from16 v17, v5

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_8
    move-object/from16 v17, v4

    .line 203
    .line 204
    :goto_5
    iget-object v4, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 205
    .line 206
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/BaseVerifyFaceFragment;->C0()Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-eqz v4, :cond_9

    .line 211
    .line 212
    move-object/from16 v21, v5

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_9
    new-instance v4, Ljava/io/File;

    .line 216
    .line 217
    iget-object v6, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 218
    .line 219
    invoke-virtual {v6}, Lteam/opay/pay/kyc/base/FaceResult;->getShowImagePath()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    if-nez v6, :cond_a

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_a
    move-object v5, v6

    .line 227
    :goto_6
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    move-object/from16 v21, v4

    .line 235
    .line 236
    :goto_7
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    iget-object v4, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 240
    .line 241
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    iget-object v4, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 250
    .line 251
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/VerifyViewModel;->R()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    new-instance v5, Lteam/opay/pay/account/verify/ValidationRequest;

    .line 260
    .line 261
    move-object v4, v5

    .line 262
    const/16 v19, 0x2c00

    .line 263
    .line 264
    const/16 v20, 0x0

    .line 265
    .line 266
    const-string v6, "imageSecret"

    .line 267
    .line 268
    const/4 v15, 0x0

    .line 269
    const/16 v16, 0x0

    .line 270
    .line 271
    const/16 v18, 0x0

    .line 272
    .line 273
    move-object v3, v5

    .line 274
    move-object v5, v7

    .line 275
    move-object v7, v9

    .line 276
    move-object v9, v12

    .line 277
    move-object v12, v13

    .line 278
    move-object/from16 v13, v21

    .line 279
    .line 280
    move-object/from16 v14, v17

    .line 281
    .line 282
    move-object/from16 v17, v2

    .line 283
    .line 284
    invoke-direct/range {v4 .. v20}, Lteam/opay/pay/account/verify/ValidationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 285
    .line 286
    .line 287
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    new-instance v4, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;

    .line 292
    .line 293
    iget-object v5, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->this$0:Lteam/opay/pay/account/verify/VerifyFaceFragment;

    .line 294
    .line 295
    iget-object v6, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 296
    .line 297
    const/4 v7, 0x0

    .line 298
    invoke-direct {v4, v5, v3, v6, v7}, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1$1;-><init>(Lteam/opay/pay/account/verify/VerifyFaceFragment;Lteam/opay/pay/account/verify/ValidationRequest;Lteam/opay/pay/kyc/base/FaceResult;Ljr2;)V

    .line 299
    .line 300
    .line 301
    const/4 v3, 0x1

    .line 302
    iput v3, v0, Lteam/opay/pay/account/verify/VerifyFaceFragment$validation$1;->label:I

    .line 303
    .line 304
    invoke-static {v2, v4, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    if-ne v2, v1, :cond_b

    .line 309
    .line 310
    return-object v1

    .line 311
    :cond_b
    :goto_8
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 312
    .line 313
    return-object v1
.end method
