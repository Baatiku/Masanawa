.class final Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SignMoreSheetFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    c = "team.opay.pay.onboarding.tabs.SignMoreSheetFragment$onViewCreated$1"
    f = "SignMoreSheetFragment.kt"
    l = {
        0x3d,
        0x4e,
        0x5b,
        0x65
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isVoice:Z

.field label:I

.field final synthetic this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;ZLjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;",
            "Z",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 2
    .line 3
    iput-boolean p2, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->$isVoice:Z

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
    new-instance p1, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 4
    .line 5
    iget-boolean v1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->$isVoice:Z

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;-><init>(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;ZLjr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

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
    iget v2, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    const/4 v4, 0x3

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    const/16 v7, 0x3e8

    .line 14
    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    if-eq v2, v6, :cond_3

    .line 18
    .line 19
    if-eq v2, v5, :cond_2

    .line 20
    .line 21
    if-eq v2, v4, :cond_1

    .line 22
    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1

    .line 38
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 56
    .line 57
    invoke-static {v2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->U(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lteam/opay/core/settings/SettingsStorage;->M()J

    .line 62
    .line 63
    .line 64
    move-result-wide v8

    .line 65
    iget-object v2, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 66
    .line 67
    invoke-static {v2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->U(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lteam/opay/core/settings/SettingsStorage;->L()J

    .line 72
    .line 73
    .line 74
    move-result-wide v12

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v10

    .line 79
    sub-long/2addr v10, v8

    .line 80
    int-to-long v8, v7

    .line 81
    div-long v14, v10, v8

    .line 82
    .line 83
    cmp-long v2, v14, v12

    .line 84
    .line 85
    if-gez v2, :cond_5

    .line 86
    .line 87
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    new-instance v8, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;

    .line 92
    .line 93
    iget-object v11, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 94
    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    move-object v10, v8

    .line 98
    invoke-direct/range {v10 .. v16}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;-><init>(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;JJLjr2;)V

    .line 99
    .line 100
    .line 101
    iput v6, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->label:I

    .line 102
    .line 103
    invoke-static {v2, v8, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    if-ne v2, v1, :cond_6

    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_5
    iget-object v2, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 111
    .line 112
    invoke-static {v2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->Y(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    :goto_0
    iget-object v2, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 116
    .line 117
    invoke-static {v2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->U(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lteam/opay/core/settings/SettingsStorage;->Q()J

    .line 122
    .line 123
    .line 124
    move-result-wide v8

    .line 125
    iget-object v2, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 126
    .line 127
    invoke-static {v2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->U(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2}, Lteam/opay/core/settings/SettingsStorage;->P()J

    .line 132
    .line 133
    .line 134
    move-result-wide v12

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v10

    .line 139
    sub-long/2addr v10, v8

    .line 140
    int-to-long v8, v7

    .line 141
    div-long v14, v10, v8

    .line 142
    .line 143
    cmp-long v2, v14, v12

    .line 144
    .line 145
    if-gez v2, :cond_7

    .line 146
    .line 147
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    new-instance v6, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$2;

    .line 152
    .line 153
    iget-object v11, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 154
    .line 155
    const/16 v16, 0x0

    .line 156
    .line 157
    move-object v10, v6

    .line 158
    invoke-direct/range {v10 .. v16}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$2;-><init>(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;JJLjr2;)V

    .line 159
    .line 160
    .line 161
    iput v5, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->label:I

    .line 162
    .line 163
    invoke-static {v2, v6, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    if-ne v2, v1, :cond_8

    .line 168
    .line 169
    return-object v1

    .line 170
    :cond_7
    iget-object v2, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 171
    .line 172
    invoke-static {v2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->a0(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)V

    .line 173
    .line 174
    .line 175
    :cond_8
    :goto_1
    iget-boolean v2, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->$isVoice:Z

    .line 176
    .line 177
    if-nez v2, :cond_a

    .line 178
    .line 179
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    new-instance v3, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$3;

    .line 184
    .line 185
    iget-object v5, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 186
    .line 187
    const/4 v6, 0x0

    .line 188
    invoke-direct {v3, v5, v6}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$3;-><init>(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;Ljr2;)V

    .line 189
    .line 190
    .line 191
    iput v4, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->label:I

    .line 192
    .line 193
    invoke-static {v2, v3, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    if-ne v2, v1, :cond_9

    .line 198
    .line 199
    return-object v1

    .line 200
    :cond_9
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 201
    .line 202
    return-object v1

    .line 203
    :cond_a
    iget-object v2, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 204
    .line 205
    invoke-static {v2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->U(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v2}, Lteam/opay/core/settings/SettingsStorage;->O()J

    .line 210
    .line 211
    .line 212
    move-result-wide v4

    .line 213
    iget-object v2, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 214
    .line 215
    invoke-static {v2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->U(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lteam/opay/core/settings/SettingsStorage;->N()J

    .line 220
    .line 221
    .line 222
    move-result-wide v10

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 224
    .line 225
    .line 226
    move-result-wide v8

    .line 227
    sub-long/2addr v8, v4

    .line 228
    int-to-long v4, v7

    .line 229
    div-long v12, v8, v4

    .line 230
    .line 231
    cmp-long v2, v12, v10

    .line 232
    .line 233
    if-gez v2, :cond_b

    .line 234
    .line 235
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    new-instance v4, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$4;

    .line 240
    .line 241
    iget-object v9, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 242
    .line 243
    const/4 v14, 0x0

    .line 244
    move-object v8, v4

    .line 245
    invoke-direct/range {v8 .. v14}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$4;-><init>(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;JJLjr2;)V

    .line 246
    .line 247
    .line 248
    iput v3, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->label:I

    .line 249
    .line 250
    invoke-static {v2, v4, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    if-ne v2, v1, :cond_c

    .line 255
    .line 256
    return-object v1

    .line 257
    :cond_b
    iget-object v1, v0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 258
    .line 259
    invoke-static {v1}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->Z(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)V

    .line 260
    .line 261
    .line 262
    :cond_c
    :goto_3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 263
    .line 264
    return-object v1
.end method
