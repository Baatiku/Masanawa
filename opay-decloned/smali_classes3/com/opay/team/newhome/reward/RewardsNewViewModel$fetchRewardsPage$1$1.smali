.class final Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsNewViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1$a;
    }
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
    c = "com.opay.team.newhome.reward.RewardsNewViewModel$fetchRewardsPage$1$1"
    f = "RewardsNewViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $call:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lcom/opay/team/newhome/reward/RewardsHomeRsp;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $viewLifecycleOwner:Lag8;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Lag8;Lcom/opay/team/newhome/reward/RewardsNewViewModel;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lcom/opay/team/newhome/reward/RewardsHomeRsp;",
            ">;>;",
            "Lag8;",
            "Lcom/opay/team/newhome/reward/RewardsNewViewModel;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;->$call:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;->$viewLifecycleOwner:Lag8;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;->invokeSuspend$lambda$0(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->l0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1$a;->a:[I

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    aget v0, v1, v0

    .line 40
    .line 41
    if-eq v0, v3, :cond_4

    .line 42
    .line 43
    const/4 p1, 0x2

    .line 44
    if-eq v0, p1, :cond_2

    .line 45
    .line 46
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 47
    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->j0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v0, Lkotlin/Pair;

    .line 56
    .line 57
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-nez p2, :cond_3

    .line 70
    .line 71
    const-string p2, ""

    .line 72
    .line 73
    :cond_3
    invoke-direct {v0, v1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->s0()Landroidx/lifecycle/MutableLiveData;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const/4 p1, 0x3

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_3

    .line 92
    .line 93
    :cond_4
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/opay/team/newhome/reward/RewardsHomeRsp;

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->L0(Lcom/opay/team/newhome/reward/RewardsHomeRsp;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->s0()Landroidx/lifecycle/MutableLiveData;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->t0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Lcom/opay/team/newhome/reward/RewardsHomeRsp;

    .line 122
    .line 123
    invoke-static {p0, v1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->F(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lcom/opay/team/newhome/reward/RewardsHomeRsp;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-static {p0, p1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->w(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lcom/opay/team/newhome/reward/RewardsHomeRsp;

    .line 138
    .line 139
    invoke-static {p0, p1, v0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->G(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;Lcom/opay/team/newhome/reward/RewardsHomeRsp;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->w0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lcom/opay/team/newhome/reward/RewardsHomeRsp;

    .line 151
    .line 152
    const/4 v2, 0x0

    .line 153
    if-eqz v1, :cond_5

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsHomeRsp;->b()Lcom/opay/team/newhome/reward/RewardsSummary;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-eqz v1, :cond_5

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsSummary;->a()Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    goto :goto_1

    .line 166
    :cond_5
    move-object v1, v2

    .line 167
    :goto_1
    if-nez v1, :cond_6

    .line 168
    .line 169
    const-string v1, "--"

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_6
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Lcom/opay/team/newhome/reward/RewardsHomeRsp;

    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsHomeRsp;->b()Lcom/opay/team/newhome/reward/RewardsSummary;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsSummary;->a()Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    :goto_2
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->v0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    check-cast v1, Lcom/opay/team/newhome/reward/RewardsHomeRsp;

    .line 202
    .line 203
    if-eqz v1, :cond_7

    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsHomeRsp;->b()Lcom/opay/team/newhome/reward/RewardsSummary;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-eqz v1, :cond_7

    .line 210
    .line 211
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsSummary;->b()Ljava/lang/Long;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    if-nez v1, :cond_8

    .line 216
    .line 217
    :cond_7
    const-wide/16 v3, 0x0

    .line 218
    .line 219
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    :cond_8
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->x0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    check-cast v1, Lcom/opay/team/newhome/reward/RewardsHomeRsp;

    .line 235
    .line 236
    if-eqz v1, :cond_9

    .line 237
    .line 238
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsHomeRsp;->b()Lcom/opay/team/newhome/reward/RewardsSummary;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    if-eqz v1, :cond_9

    .line 243
    .line 244
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsSummary;->c()Ljava/lang/Boolean;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    :cond_9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 249
    .line 250
    invoke-static {v2, v1}, Lgmf;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    check-cast p2, Lcom/opay/team/newhome/reward/RewardsHomeRsp;

    .line 262
    .line 263
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->H(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;Lcom/opay/team/newhome/reward/RewardsHomeRsp;)V

    .line 264
    .line 265
    .line 266
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 267
    .line 268
    return-object p0
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
    new-instance p1, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;->$call:Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;->$viewLifecycleOwner:Lag8;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;-><init>(Landroidx/lifecycle/LiveData;Lag8;Lcom/opay/team/newhome/reward/RewardsNewViewModel;Ljr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;->$call:Landroidx/lifecycle/LiveData;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;->$viewLifecycleOwner:Lag8;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 16
    .line 17
    new-instance v2, Lcom/opay/team/newhome/reward/d;

    .line 18
    .line 19
    invoke-direct {v2, v1, v0}, Lcom/opay/team/newhome/reward/d;-><init>(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method
