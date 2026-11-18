.class final Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NetworkDiagnosisManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->r(Z)V
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
    c = "team.opay.core.networkstatus.NetworkDiagnosisManager$startJob$1"
    f = "NetworkDiagnosisManager.kt"
    l = {
        0x10b,
        0x88,
        0x118
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $onetimeJob:Z

.field J$0:J

.field J$1:J

.field J$2:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;


# direct methods
.method public constructor <init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;ZLjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/networkstatus/NetworkDiagnosisManager;",
            "Z",
            "Ljr2<",
            "-",
            "Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 2
    .line 3
    iput-boolean p2, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->$onetimeJob:Z

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
    .locals 3
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
    new-instance v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 4
    .line 5
    iget-boolean v2, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->$onetimeJob:Z

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;-><init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;ZLjr2;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v2, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    if-eqz v2, :cond_4

    .line 14
    .line 15
    if-eq v2, v5, :cond_3

    .line 16
    .line 17
    if-eq v2, v4, :cond_2

    .line 18
    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    iget-wide v7, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$2:J

    .line 22
    .line 23
    iget-wide v9, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$1:J

    .line 24
    .line 25
    iget-wide v11, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$0:J

    .line 26
    .line 27
    iget-object v2, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$3:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 30
    .line 31
    iget-object v13, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$2:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    .line 34
    .line 35
    iget-object v14, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$1:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v14, Lkotlin/jvm/internal/Ref$LongRef;

    .line 38
    .line 39
    iget-object v15, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v15, Lzr2;

    .line 42
    .line 43
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    move-object v5, v0

    .line 47
    const/4 v0, 0x3

    .line 48
    :cond_0
    move-wide/from16 v20, v11

    .line 49
    .line 50
    move-object v12, v2

    .line 51
    move-wide v2, v7

    .line 52
    move-wide v7, v9

    .line 53
    move-wide/from16 v9, v20

    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_2
    iget-wide v7, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$2:J

    .line 66
    .line 67
    iget-wide v9, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$1:J

    .line 68
    .line 69
    iget-wide v11, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$0:J

    .line 70
    .line 71
    iget-object v2, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$5:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v2, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 74
    .line 75
    iget-object v13, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$4:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v13, Lbf9;

    .line 78
    .line 79
    iget-object v14, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$3:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 82
    .line 83
    iget-object v15, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$2:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    .line 86
    .line 87
    iget-object v3, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$1:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v3, Lkotlin/jvm/internal/Ref$LongRef;

    .line 90
    .line 91
    iget-object v4, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$0:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v4, Lzr2;

    .line 94
    .line 95
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    move-object/from16 v5, p1

    .line 99
    .line 100
    move-object/from16 v20, v3

    .line 101
    .line 102
    move-object v3, v2

    .line 103
    move-object v2, v14

    .line 104
    move-object/from16 v14, v20

    .line 105
    .line 106
    move-object/from16 v21, v15

    .line 107
    .line 108
    move-object v15, v4

    .line 109
    move-object v4, v13

    .line 110
    move-object/from16 v13, v21

    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :catchall_0
    move-exception v0

    .line 115
    move-object v2, v6

    .line 116
    goto/16 :goto_8

    .line 117
    .line 118
    :cond_3
    iget-wide v2, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$2:J

    .line 119
    .line 120
    iget-wide v7, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$1:J

    .line 121
    .line 122
    iget-wide v9, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$0:J

    .line 123
    .line 124
    iget-object v4, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$5:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v4, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 127
    .line 128
    iget-object v11, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$4:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v11, Lbf9;

    .line 131
    .line 132
    iget-object v12, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$3:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 135
    .line 136
    iget-object v13, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$2:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    .line 139
    .line 140
    iget-object v14, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$1:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v14, Lkotlin/jvm/internal/Ref$LongRef;

    .line 143
    .line 144
    iget-object v15, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$0:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v15, Lzr2;

    .line 147
    .line 148
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    move-wide/from16 v20, v2

    .line 152
    .line 153
    move-object v2, v4

    .line 154
    move-wide/from16 v3, v20

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iget-object v2, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$0:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v2, Lzr2;

    .line 163
    .line 164
    new-instance v3, Lkotlin/jvm/internal/Ref$LongRef;

    .line 165
    .line 166
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 167
    .line 168
    .line 169
    const-wide/16 v7, 0x1388

    .line 170
    .line 171
    iput-wide v7, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 172
    .line 173
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 174
    .line 175
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 176
    .line 177
    .line 178
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 179
    .line 180
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 181
    .line 182
    .line 183
    const-wide/32 v10, 0xea60

    .line 184
    .line 185
    .line 186
    move-object v15, v2

    .line 187
    move-object v14, v3

    .line 188
    move-object v13, v4

    .line 189
    move-wide v2, v7

    .line 190
    move-object v12, v9

    .line 191
    move-wide v7, v10

    .line 192
    move-wide v9, v2

    .line 193
    :goto_0
    invoke-static {v15}, Lkotlinx/coroutines/g;->h(Lzr2;)Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_9

    .line 198
    .line 199
    iget-object v4, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 200
    .line 201
    invoke-static {v4}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->h(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Lbf9;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    iget-object v11, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 206
    .line 207
    iput-object v15, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$0:Ljava/lang/Object;

    .line 208
    .line 209
    iput-object v14, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$1:Ljava/lang/Object;

    .line 210
    .line 211
    iput-object v13, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$2:Ljava/lang/Object;

    .line 212
    .line 213
    iput-object v12, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$3:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object v4, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$4:Ljava/lang/Object;

    .line 216
    .line 217
    iput-object v11, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$5:Ljava/lang/Object;

    .line 218
    .line 219
    iput-wide v9, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$0:J

    .line 220
    .line 221
    iput-wide v7, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$1:J

    .line 222
    .line 223
    iput-wide v2, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$2:J

    .line 224
    .line 225
    iput v5, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->label:I

    .line 226
    .line 227
    invoke-interface {v4, v6, v1}, Lbf9;->t(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    if-ne v5, v0, :cond_5

    .line 232
    .line 233
    return-object v0

    .line 234
    :cond_5
    move-object/from16 v20, v11

    .line 235
    .line 236
    move-object v11, v4

    .line 237
    move-wide v3, v2

    .line 238
    move-object/from16 v2, v20

    .line 239
    .line 240
    :goto_1
    :try_start_1
    iput-object v15, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$0:Ljava/lang/Object;

    .line 241
    .line 242
    iput-object v14, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$1:Ljava/lang/Object;

    .line 243
    .line 244
    iput-object v13, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$2:Ljava/lang/Object;

    .line 245
    .line 246
    iput-object v12, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$3:Ljava/lang/Object;

    .line 247
    .line 248
    iput-object v11, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$4:Ljava/lang/Object;

    .line 249
    .line 250
    iput-object v2, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$5:Ljava/lang/Object;

    .line 251
    .line 252
    iput-wide v9, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$0:J

    .line 253
    .line 254
    iput-wide v7, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$1:J

    .line 255
    .line 256
    iput-wide v3, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$2:J

    .line 257
    .line 258
    const/4 v5, 0x2

    .line 259
    iput v5, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->label:I

    .line 260
    .line 261
    invoke-static {v2, v1}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->k(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljr2;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 265
    if-ne v5, v0, :cond_6

    .line 266
    .line 267
    return-object v0

    .line 268
    :cond_6
    move-wide/from16 v20, v3

    .line 269
    .line 270
    move-object v3, v2

    .line 271
    move-object v4, v11

    .line 272
    move-object v2, v12

    .line 273
    move-wide v11, v9

    .line 274
    move-wide v9, v7

    .line 275
    move-wide/from16 v7, v20

    .line 276
    .line 277
    :goto_2
    :try_start_2
    check-cast v5, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 278
    .line 279
    invoke-virtual {v5}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->isOPayApiConnected()Z

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    move-object/from16 v17, v0

    .line 284
    .line 285
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 288
    .line 289
    if-eqz v0, :cond_7

    .line 290
    .line 291
    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-ne v6, v0, :cond_7

    .line 296
    .line 297
    iget v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 298
    .line 299
    const/16 v16, 0x1

    .line 300
    .line 301
    add-int/lit8 v0, v0, 0x1

    .line 302
    .line 303
    iput v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 304
    .line 305
    move-object/from16 p1, v2

    .line 306
    .line 307
    iget-wide v1, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 308
    .line 309
    move-object/from16 v18, v4

    .line 310
    .line 311
    move-object/from16 v19, v5

    .line 312
    .line 313
    int-to-long v4, v0

    .line 314
    mul-long v4, v4, v7

    .line 315
    .line 316
    add-long/2addr v1, v4

    .line 317
    :try_start_4
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 318
    .line 319
    .line 320
    move-result-wide v0

    .line 321
    iput-wide v0, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 322
    .line 323
    const/4 v0, 0x1

    .line 324
    goto :goto_5

    .line 325
    :catchall_1
    move-exception v0

    .line 326
    :goto_3
    move-object/from16 v1, p0

    .line 327
    .line 328
    move-object/from16 v13, v18

    .line 329
    .line 330
    :goto_4
    const/4 v2, 0x0

    .line 331
    goto/16 :goto_8

    .line 332
    .line 333
    :catchall_2
    move-exception v0

    .line 334
    move-object/from16 v18, v4

    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_7
    move-object/from16 p1, v2

    .line 338
    .line 339
    move-object/from16 v18, v4

    .line 340
    .line 341
    move-object/from16 v19, v5

    .line 342
    .line 343
    :try_start_5
    iput-wide v11, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 344
    .line 345
    const/4 v0, 0x1

    .line 346
    iput v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 347
    .line 348
    :goto_5
    invoke-static {v3}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->j(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Lxe9;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    move-object/from16 v5, v19

    .line 353
    .line 354
    invoke-interface {v1, v5}, Lxe9;->a(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 358
    .line 359
    invoke-direct {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 360
    .line 361
    .line 362
    move-object/from16 v2, p1

    .line 363
    .line 364
    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 365
    .line 366
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 367
    .line 368
    move-object/from16 v3, v18

    .line 369
    .line 370
    const/4 v1, 0x0

    .line 371
    invoke-interface {v3, v1}, Lbf9;->u(Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    move-object/from16 v1, p0

    .line 375
    .line 376
    iget-boolean v3, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->$onetimeJob:Z

    .line 377
    .line 378
    if-eqz v3, :cond_8

    .line 379
    .line 380
    iget-object v3, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 381
    .line 382
    invoke-static {v3}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->g(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    if-nez v3, :cond_8

    .line 391
    .line 392
    goto/16 :goto_9

    .line 393
    .line 394
    :cond_8
    sget-object v3, Lqk8;->c:Lqk8;

    .line 395
    .line 396
    iget-wide v4, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 397
    .line 398
    new-instance v6, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    const-string v0, "diagnosisJob delay: "

    .line 404
    .line 405
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    const/4 v4, 0x2

    .line 416
    const/4 v5, 0x0

    .line 417
    invoke-static {v3, v0, v5, v4, v5}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    iget-object v0, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 421
    .line 422
    new-instance v3, Lkotlinx/coroutines/selects/SelectImplementation;

    .line 423
    .line 424
    invoke-interface/range {p0 .. p0}, Ljr2;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    invoke-direct {v3, v6}, Lkotlinx/coroutines/selects/SelectImplementation;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 429
    .line 430
    .line 431
    move-wide/from16 v18, v7

    .line 432
    .line 433
    iget-wide v6, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 434
    .line 435
    new-instance v8, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1$2$1;

    .line 436
    .line 437
    invoke-direct {v8, v5}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1$2$1;-><init>(Ljr2;)V

    .line 438
    .line 439
    .line 440
    invoke-static {v3, v6, v7, v8}, Lkotlinx/coroutines/selects/a;->a(Lfed;JLkotlin/jvm/functions/Function1;)V

    .line 441
    .line 442
    .line 443
    invoke-static {v0}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->i(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Ly92;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->l()Lhed;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    new-instance v6, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1$2$2;

    .line 452
    .line 453
    invoke-direct {v6, v5}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1$2$2;-><init>(Ljr2;)V

    .line 454
    .line 455
    .line 456
    invoke-interface {v3, v0, v6}, Lfed;->c(Lhed;Lkotlin/jvm/functions/Function2;)V

    .line 457
    .line 458
    .line 459
    iput-object v15, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$0:Ljava/lang/Object;

    .line 460
    .line 461
    iput-object v14, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$1:Ljava/lang/Object;

    .line 462
    .line 463
    iput-object v13, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$2:Ljava/lang/Object;

    .line 464
    .line 465
    iput-object v2, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$3:Ljava/lang/Object;

    .line 466
    .line 467
    iput-object v5, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$4:Ljava/lang/Object;

    .line 468
    .line 469
    iput-object v5, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->L$5:Ljava/lang/Object;

    .line 470
    .line 471
    iput-wide v11, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$0:J

    .line 472
    .line 473
    iput-wide v9, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$1:J

    .line 474
    .line 475
    move-wide/from16 v7, v18

    .line 476
    .line 477
    iput-wide v7, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->J$2:J

    .line 478
    .line 479
    const/4 v0, 0x3

    .line 480
    iput v0, v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;->label:I

    .line 481
    .line 482
    invoke-virtual {v3, v1}, Lkotlinx/coroutines/selects/SelectImplementation;->p(Ljr2;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    move-object/from16 v5, v17

    .line 487
    .line 488
    if-ne v3, v5, :cond_0

    .line 489
    .line 490
    return-object v5

    .line 491
    :goto_6
    move-object v0, v5

    .line 492
    const/4 v5, 0x1

    .line 493
    const/4 v6, 0x0

    .line 494
    goto/16 :goto_0

    .line 495
    .line 496
    :catchall_3
    move-exception v0

    .line 497
    move-object/from16 v1, p0

    .line 498
    .line 499
    move-object/from16 v3, v18

    .line 500
    .line 501
    :goto_7
    move-object v13, v3

    .line 502
    goto/16 :goto_4

    .line 503
    .line 504
    :catchall_4
    move-exception v0

    .line 505
    move-object v3, v4

    .line 506
    goto :goto_7

    .line 507
    :catchall_5
    move-exception v0

    .line 508
    move-object v13, v11

    .line 509
    goto/16 :goto_4

    .line 510
    .line 511
    :goto_8
    invoke-interface {v13, v2}, Lbf9;->u(Ljava/lang/Object;)V

    .line 512
    .line 513
    .line 514
    throw v0

    .line 515
    :cond_9
    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 516
    .line 517
    return-object v0
.end method
