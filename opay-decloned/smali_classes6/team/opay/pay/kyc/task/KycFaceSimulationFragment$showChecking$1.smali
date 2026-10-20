.class final Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KycFaceSimulationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;->L0()V
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
    c = "team.opay.pay.kyc.task.KycFaceSimulationFragment$showChecking$1"
    f = "KycFaceSimulationFragment.kt"
    l = {
        0x78
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->this$0:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;

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
    new-instance p1, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->this$0:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;-><init>(Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    iget v4, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->label:I

    .line 9
    .line 10
    if-eqz v4, :cond_1

    .line 11
    .line 12
    if-ne v4, v2, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->this$0:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;

    .line 30
    .line 31
    invoke-static {p1}, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;->t0(Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;)Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskNode;->getFaceLoadingTime()Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-wide/16 v4, 0xbb8

    .line 49
    .line 50
    :goto_0
    iput v2, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->label:I

    .line 51
    .line 52
    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-ne p1, v3, :cond_3

    .line 57
    .line 58
    return-object v3

    .line 59
    :cond_3
    :goto_1
    iget-object p1, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->this$0:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;

    .line 60
    .line 61
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, La0b;

    .line 66
    .line 67
    iget-object p1, p1, La0b;->f:Lcom/airbnb/lottie/LottieAnimationView;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->this$0:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;

    .line 73
    .line 74
    invoke-static {p1}, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;->t0(Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;)Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const/4 v3, 0x0

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskNode;->getFaceResultCode()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    move-object p1, v3

    .line 87
    :goto_2
    const-string v4, "00000"

    .line 88
    .line 89
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_5

    .line 94
    .line 95
    iget-object p1, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->this$0:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;

    .line 96
    .line 97
    invoke-static {p1}, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;->r0(Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;)V

    .line 98
    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_5
    const-string v5, "90009"

    .line 102
    .line 103
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_8

    .line 108
    .line 109
    sget-object p1, Lteam/opay/pay/kyc/task/dialog/KycBindMutiDialog;->o:Lteam/opay/pay/kyc/task/dialog/KycBindMutiDialog$Companion;

    .line 110
    .line 111
    iget-object v5, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->this$0:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;

    .line 112
    .line 113
    invoke-static {v5}, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;->t0(Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;)Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    if-eqz v5, :cond_6

    .line 118
    .line 119
    invoke-virtual {v5}, Lteam/opay/pay/kyc/base/KycTaskNode;->getFaceResultMessage()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    goto :goto_3

    .line 124
    :cond_6
    move-object v5, v3

    .line 125
    :goto_3
    if-nez v5, :cond_7

    .line 126
    .line 127
    const-string v5, ""

    .line 128
    .line 129
    :cond_7
    invoke-static {p1, v5, v3, v1, v3}, Lteam/opay/pay/kyc/task/dialog/KycBindMutiDialog$Companion;->b(Lteam/opay/pay/kyc/task/dialog/KycBindMutiDialog$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/kyc/task/dialog/KycBindMutiDialog;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object v5, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->this$0:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;

    .line 134
    .line 135
    invoke-static {v5, p1}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_8
    iget-object p1, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->this$0:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;

    .line 140
    .line 141
    invoke-static {p1}, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;->q0(Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;)V

    .line 142
    .line 143
    .line 144
    :goto_4
    iget-object p1, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->this$0:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;

    .line 145
    .line 146
    invoke-static {p1}, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;->t0(Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;)Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-eqz p1, :cond_9

    .line 151
    .line 152
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskNode;->getFaceResultCode()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    goto :goto_5

    .line 157
    :cond_9
    move-object p1, v3

    .line 158
    :goto_5
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_10

    .line 163
    .line 164
    iget-object p1, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->this$0:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;

    .line 165
    .line 166
    invoke-static {p1}, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;->t0(Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;)Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_a

    .line 171
    .line 172
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskNode;->getNextNode()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    goto :goto_6

    .line 177
    :cond_a
    move-object p1, v3

    .line 178
    :goto_6
    if-eqz p1, :cond_b

    .line 179
    .line 180
    const/4 p1, 0x1

    .line 181
    goto :goto_7

    .line 182
    :cond_b
    const/4 p1, 0x0

    .line 183
    :goto_7
    iget-object v4, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->this$0:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;

    .line 184
    .line 185
    invoke-static {v4}, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;->t0(Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;)Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    if-eqz v4, :cond_c

    .line 190
    .line 191
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/KycTaskNode;->getFaceResultCode()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    goto :goto_8

    .line 196
    :cond_c
    move-object v4, v3

    .line 197
    :goto_8
    const-string v5, "04015"

    .line 198
    .line 199
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    new-instance v5, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .line 207
    .line 208
    if-eqz p1, :cond_d

    .line 209
    .line 210
    const-string p1, "scan"

    .line 211
    .line 212
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    :cond_d
    if-eqz v4, :cond_e

    .line 216
    .line 217
    const-string p1, "check_id"

    .line 218
    .line 219
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    :cond_e
    iget-object v6, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->this$0:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;

    .line 223
    .line 224
    sget-object p1, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 225
    .line 226
    invoke-virtual {p1, v5}, Lteam/opay/pay/kyc/a;->v(Ljava/util/List;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    const-string v4, "button"

    .line 231
    .line 232
    invoke-static {v4, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    iget-object v4, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->this$0:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;

    .line 237
    .line 238
    invoke-static {v4}, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;->s0(Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;)Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/SceneViewModel;->g0()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    const-string v5, "route"

    .line 247
    .line 248
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    iget-object v5, p0, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment$showChecking$1;->this$0:Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;

    .line 253
    .line 254
    invoke-static {v5}, Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;->t0(Lteam/opay/pay/kyc/task/KycFaceSimulationFragment;)Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    if-eqz v5, :cond_f

    .line 259
    .line 260
    invoke-virtual {v5}, Lteam/opay/pay/kyc/base/KycTaskNode;->getFaceResultCode()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    :cond_f
    const-string v5, "errorCode"

    .line 265
    .line 266
    invoke-static {v5, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    const/4 v5, 0x3

    .line 271
    new-array v8, v5, [Lkotlin/Pair;

    .line 272
    .line 273
    aput-object p1, v8, v0

    .line 274
    .line 275
    aput-object v4, v8, v2

    .line 276
    .line 277
    aput-object v3, v8, v1

    .line 278
    .line 279
    const/16 v11, 0xc

    .line 280
    .line 281
    const/4 v12, 0x0

    .line 282
    const-string v7, "page_oface_verfied_failed_show"

    .line 283
    .line 284
    const/4 v9, 0x0

    .line 285
    const/4 v10, 0x0

    .line 286
    invoke-static/range {v6 .. v12}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    :cond_10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 290
    .line 291
    return-object p1
.end method
