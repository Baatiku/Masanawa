.class final Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FaceWrapperFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/task/FaceWrapperFragment;->D1(Lteam/opay/pay/kyc/base/FaceResult;)V
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
    c = "team.opay.pay.kyc.task.FaceWrapperFragment$uploadFace$1"
    f = "FaceWrapperFragment.kt"
    l = {
        0x215
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $faceResult:Lteam/opay/pay/kyc/base/FaceResult;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/kyc/task/FaceWrapperFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/base/FaceResult;Lteam/opay/pay/kyc/task/FaceWrapperFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/kyc/base/FaceResult;",
            "Lteam/opay/pay/kyc/task/FaceWrapperFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/FaceWrapperFragment;

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
    new-instance p1, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/FaceWrapperFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;-><init>(Lteam/opay/pay/kyc/base/FaceResult;Lteam/opay/pay/kyc/task/FaceWrapperFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

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
    iget v2, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->label:I

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
    new-instance v2, Ljava/io/File;

    .line 31
    .line 32
    iget-object v4, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 33
    .line 34
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/FaceResult;->getShowImagePath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v5, ""

    .line 39
    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    move-object v4, v5

    .line 43
    :cond_2
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v4, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 47
    .line 48
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/FaceResult;->getTraceId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-nez v4, :cond_3

    .line 53
    .line 54
    move-object v9, v5

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    move-object v9, v4

    .line 57
    :goto_0
    iget-object v4, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/FaceWrapperFragment;

    .line 58
    .line 59
    invoke-virtual {v4}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v4}, Lg4d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v18

    .line 71
    iget-object v4, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/FaceWrapperFragment;

    .line 72
    .line 73
    invoke-virtual {v4}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    iget-object v4, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/FaceWrapperFragment;

    .line 82
    .line 83
    invoke-virtual {v4}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/SceneViewModel;->E()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v15

    .line 91
    iget-object v4, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/FaceWrapperFragment;

    .line 92
    .line 93
    invoke-virtual {v4}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/SceneViewModel;->O()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    if-nez v4, :cond_4

    .line 102
    .line 103
    move-object v12, v5

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    move-object v12, v4

    .line 106
    :goto_1
    iget-object v4, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/FaceWrapperFragment;

    .line 107
    .line 108
    invoke-virtual {v4}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/SceneViewModel;->R()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    if-nez v4, :cond_5

    .line 117
    .line 118
    move-object v10, v5

    .line 119
    goto :goto_2

    .line 120
    :cond_5
    move-object v10, v4

    .line 121
    :goto_2
    iget-object v4, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/FaceWrapperFragment;

    .line 122
    .line 123
    invoke-virtual {v4}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/SceneViewModel;->C()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    if-nez v4, :cond_6

    .line 132
    .line 133
    move-object v13, v5

    .line 134
    goto :goto_3

    .line 135
    :cond_6
    move-object v13, v4

    .line 136
    :goto_3
    iget-object v4, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/FaceWrapperFragment;

    .line 137
    .line 138
    invoke-virtual {v4}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/SceneViewModel;->D()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    if-nez v4, :cond_7

    .line 147
    .line 148
    move-object v14, v5

    .line 149
    goto :goto_4

    .line 150
    :cond_7
    move-object v14, v4

    .line 151
    :goto_4
    iget-object v4, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->$faceResult:Lteam/opay/pay/kyc/base/FaceResult;

    .line 152
    .line 153
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/FaceResult;->getImagePath()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    if-nez v4, :cond_8

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_8
    move-object v5, v4

    .line 161
    :goto_5
    invoke-static {v5}, Lixb;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    const-string v5, "getName(...)"

    .line 170
    .line 171
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v5, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/FaceWrapperFragment;

    .line 175
    .line 176
    invoke-virtual {v5}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v5}, Lteam/opay/pay/kyc/base/SceneViewModel;->F()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v17

    .line 184
    iget-object v5, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/FaceWrapperFragment;

    .line 185
    .line 186
    invoke-virtual {v5}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v5}, Lteam/opay/pay/kyc/base/SceneViewModel;->o0()Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    const/4 v8, 0x0

    .line 195
    if-eqz v5, :cond_9

    .line 196
    .line 197
    invoke-virtual {v5}, Lteam/opay/pay/kyc/base/KycConsultRsp;->m()Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    move-object/from16 v19, v5

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_9
    move-object/from16 v19, v8

    .line 205
    .line 206
    :goto_6
    iget-object v5, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/FaceWrapperFragment;

    .line 207
    .line 208
    invoke-virtual {v5}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->Z0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v5}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    if-eqz v5, :cond_a

    .line 217
    .line 218
    invoke-virtual {v5}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskId()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    move-object/from16 v20, v5

    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_a
    move-object/from16 v20, v8

    .line 226
    .line 227
    :goto_7
    iget-object v5, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/FaceWrapperFragment;

    .line 228
    .line 229
    invoke-static {v5}, Lteam/opay/pay/kyc/task/FaceWrapperFragment;->H0(Lteam/opay/pay/kyc/task/FaceWrapperFragment;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v22

    .line 233
    new-instance v5, Lteam/opay/face/net/FaceRequest;

    .line 234
    .line 235
    move-object v6, v5

    .line 236
    const/16 v23, 0x4000

    .line 237
    .line 238
    const/16 v24, 0x0

    .line 239
    .line 240
    const-string v16, ""

    .line 241
    .line 242
    move-object v3, v8

    .line 243
    move-object/from16 v8, v16

    .line 244
    .line 245
    const/16 v21, 0x0

    .line 246
    .line 247
    move-object/from16 v16, v4

    .line 248
    .line 249
    invoke-direct/range {v6 .. v24}, Lteam/opay/face/net/FaceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 250
    .line 251
    .line 252
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    new-instance v6, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1$1;

    .line 257
    .line 258
    iget-object v7, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->this$0:Lteam/opay/pay/kyc/task/FaceWrapperFragment;

    .line 259
    .line 260
    invoke-direct {v6, v7, v5, v2, v3}, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1$1;-><init>(Lteam/opay/pay/kyc/task/FaceWrapperFragment;Lteam/opay/face/net/FaceRequest;Ljava/io/File;Ljr2;)V

    .line 261
    .line 262
    .line 263
    const/4 v2, 0x1

    .line 264
    iput v2, v0, Lteam/opay/pay/kyc/task/FaceWrapperFragment$uploadFace$1;->label:I

    .line 265
    .line 266
    invoke-static {v4, v6, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    if-ne v2, v1, :cond_b

    .line 271
    .line 272
    return-object v1

    .line 273
    :cond_b
    :goto_8
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 274
    .line 275
    return-object v1
.end method
