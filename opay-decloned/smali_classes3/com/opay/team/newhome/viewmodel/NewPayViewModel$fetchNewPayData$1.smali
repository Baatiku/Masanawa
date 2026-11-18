.class final Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewPayViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->W(Lag8;Landroid/content/Context;)V
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
    c = "com.opay.team.newhome.viewmodel.NewPayViewModel$fetchNewPayData$1"
    f = "NewPayViewModel.kt"
    l = {
        0x100
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $lifecycleOwner:Lag8;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lag8;Landroid/content/Context;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel;",
            "Lag8;",
            "Landroid/content/Context;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;->$lifecycleOwner:Lag8;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;->$context:Landroid/content/Context;

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
    new-instance p1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;->$lifecycleOwner:Lag8;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;->$context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lag8;Landroid/content/Context;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v2, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;->label:I

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
    goto/16 :goto_6

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
    sget-object v2, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 31
    .line 32
    const-class v4, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IUserLocationGenerator;->latitude()D

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    invoke-static {v5, v6}, Ldf1;->b(D)Ljava/lang/Double;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    move-object v7, v5

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move-object v7, v4

    .line 54
    :goto_0
    if-eqz v2, :cond_3

    .line 55
    .line 56
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IUserLocationGenerator;->longitude()D

    .line 57
    .line 58
    .line 59
    move-result-wide v5

    .line 60
    invoke-static {v5, v6}, Ldf1;->b(D)Ljava/lang/Double;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    move-object v8, v5

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move-object v8, v4

    .line 67
    :goto_1
    invoke-static {v2}, Ljmf;->o(Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    sget-object v5, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 72
    .line 73
    sget-object v6, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 74
    .line 75
    invoke-virtual {v6}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    invoke-virtual {v9}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-virtual {v5, v9}, Lteam/opay/swarmfoundation/device/AuthUtil;->D(Landroid/content/Context;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionCode()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-static {v5}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move-object v5, v4

    .line 99
    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    if-eqz v2, :cond_6

    .line 104
    .line 105
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/ICityDataGenerator;->cityId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    if-nez v5, :cond_5

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_5
    :goto_3
    move-object v13, v5

    .line 113
    goto :goto_5

    .line 114
    :cond_6
    :goto_4
    const-string v5, ""

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :goto_5
    invoke-virtual {v6}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-static {v5}, Lgmf;->d(Landroid/content/Context;)I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-virtual {v6}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v6}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-static {v6}, Lgmf;->c(Landroid/content/Context;)I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-eqz v2, :cond_7

    .line 142
    .line 143
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->role()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    :cond_7
    move-object/from16 v16, v4

    .line 148
    .line 149
    sget-object v2, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->P:Lcom/opay/team/newhome/viewmodel/NewPayViewModel$Companion;

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$Companion;->a()Z

    .line 152
    .line 153
    .line 154
    move-result v21

    .line 155
    new-instance v2, Lcom/opay/team/newhome/bean/NewHomeServiceReq;

    .line 156
    .line 157
    invoke-static {v5}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    invoke-static {v6}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v15

    .line 165
    const/16 v23, 0x1000

    .line 166
    .line 167
    const/16 v24, 0x0

    .line 168
    .line 169
    const-string v9, "NG"

    .line 170
    .line 171
    const-string v17, "1"

    .line 172
    .line 173
    const-string v18, "1"

    .line 174
    .line 175
    const/16 v19, 0x0

    .line 176
    .line 177
    const/16 v20, 0x1

    .line 178
    .line 179
    const/16 v22, 0x4

    .line 180
    .line 181
    move-object v6, v2

    .line 182
    invoke-direct/range {v6 .. v24}, Lcom/opay/team/newhome/bean/NewHomeServiceReq;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 183
    .line 184
    .line 185
    iget-object v4, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 186
    .line 187
    invoke-static {v4}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->C(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lcom/opay/team/home/api/HomeApiService$b;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-interface {v4, v2}, Lcom/opay/team/home/api/HomeApiService$b;->c(Lcom/opay/team/newhome/bean/NewHomeServiceReq;)Lretrofit2/Call;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    new-instance v4, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;

    .line 200
    .line 201
    iget-object v7, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 202
    .line 203
    iget-object v8, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;->$lifecycleOwner:Lag8;

    .line 204
    .line 205
    iget-object v9, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;->$context:Landroid/content/Context;

    .line 206
    .line 207
    const/4 v10, 0x0

    .line 208
    move-object v5, v4

    .line 209
    invoke-direct/range {v5 .. v10}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;-><init>(Lretrofit2/Call;Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lag8;Landroid/content/Context;Ljr2;)V

    .line 210
    .line 211
    .line 212
    iput v3, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;->label:I

    .line 213
    .line 214
    invoke-static {v2, v4, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    if-ne v2, v1, :cond_8

    .line 219
    .line 220
    return-object v1

    .line 221
    :cond_8
    :goto_6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 222
    .line 223
    return-object v1
.end method
