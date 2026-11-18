.class final Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FinanceViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->c0(Lag8;ZLjava/lang/String;)V
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
    c = "com.opay.team.newhome.viewmodel.FinanceViewModel$requestNewFinanceData$1"
    f = "FinanceViewModel.kt"
    l = {
        0x66
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $defaultFile:Ljava/lang/String;

.field final synthetic $lifecycleOwner:Lag8;

.field final synthetic $noCache:Z

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/viewmodel/FinanceViewModel;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;Ljava/lang/String;Lag8;ZLjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/viewmodel/FinanceViewModel;",
            "Ljava/lang/String;",
            "Lag8;",
            "Z",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->this$0:Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->$defaultFile:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->$lifecycleOwner:Lag8;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->$noCache:Z

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 6
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
    new-instance p1, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->this$0:Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->$defaultFile:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->$lifecycleOwner:Lag8;

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->$noCache:Z

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;-><init>(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;Ljava/lang/String;Lag8;ZLjr2;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

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
    iget v2, v0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->label:I

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
    goto/16 :goto_7

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
    new-instance v23, Lcom/opay/team/newhome/bean/NewHomeServiceReq;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IUserLocationGenerator;->latitude()D

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    invoke-static {v5, v6}, Ldf1;->b(D)Ljava/lang/Double;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move-object v5, v4

    .line 55
    :goto_0
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IUserLocationGenerator;->longitude()D

    .line 58
    .line 59
    .line 60
    move-result-wide v6

    .line 61
    invoke-static {v6, v7}, Ldf1;->b(D)Ljava/lang/Double;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move-object v6, v4

    .line 67
    :goto_1
    invoke-static {v2}, Ljmf;->o(Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    sget-object v7, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 72
    .line 73
    sget-object v9, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 74
    .line 75
    invoke-virtual {v9}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-virtual {v10}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    invoke-virtual {v7, v10}, Lteam/opay/swarmfoundation/device/AuthUtil;->D(Landroid/content/Context;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionCode()I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    invoke-static {v7}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move-object v7, v4

    .line 99
    :goto_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    if-eqz v2, :cond_6

    .line 104
    .line 105
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/ICityDataGenerator;->cityId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    if-nez v7, :cond_5

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_5
    :goto_3
    move-object v12, v7

    .line 113
    goto :goto_5

    .line 114
    :cond_6
    :goto_4
    const-string v7, ""

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :goto_5
    invoke-virtual {v9}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v7}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-static {v7}, Lgmf;->d(Landroid/content/Context;)I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    invoke-static {v7}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    invoke-virtual {v9}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v7}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-static {v7}, Lgmf;->c(Landroid/content/Context;)I

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    invoke-static {v7}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v14

    .line 149
    if-eqz v2, :cond_7

    .line 150
    .line 151
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->role()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    goto :goto_6

    .line 156
    :cond_7
    move-object v2, v4

    .line 157
    :goto_6
    const v21, 0xf000

    .line 158
    .line 159
    .line 160
    const/16 v22, 0x0

    .line 161
    .line 162
    const-string v7, "NG"

    .line 163
    .line 164
    const-string v15, "1"

    .line 165
    .line 166
    const-string v16, "1"

    .line 167
    .line 168
    const/16 v17, 0x0

    .line 169
    .line 170
    const/16 v18, 0x0

    .line 171
    .line 172
    const/16 v19, 0x0

    .line 173
    .line 174
    const/16 v20, 0x0

    .line 175
    .line 176
    move-object/from16 v4, v23

    .line 177
    .line 178
    move-object v9, v10

    .line 179
    move-object v10, v11

    .line 180
    move-object v11, v12

    .line 181
    move-object v12, v13

    .line 182
    move-object v13, v14

    .line 183
    move-object v14, v2

    .line 184
    invoke-direct/range {v4 .. v22}, Lcom/opay/team/newhome/bean/NewHomeServiceReq;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 185
    .line 186
    .line 187
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    new-instance v11, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;

    .line 192
    .line 193
    iget-object v5, v0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->this$0:Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 194
    .line 195
    iget-object v7, v0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->$defaultFile:Ljava/lang/String;

    .line 196
    .line 197
    iget-object v8, v0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->$lifecycleOwner:Lag8;

    .line 198
    .line 199
    iget-boolean v9, v0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->$noCache:Z

    .line 200
    .line 201
    const/4 v10, 0x0

    .line 202
    move-object v4, v11

    .line 203
    move-object/from16 v6, v23

    .line 204
    .line 205
    invoke-direct/range {v4 .. v10}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;-><init>(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;Lcom/opay/team/newhome/bean/NewHomeServiceReq;Ljava/lang/String;Lag8;ZLjr2;)V

    .line 206
    .line 207
    .line 208
    iput v3, v0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->label:I

    .line 209
    .line 210
    invoke-static {v2, v11, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    if-ne v2, v1, :cond_8

    .line 215
    .line 216
    return-object v1

    .line 217
    :cond_8
    :goto_7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 218
    .line 219
    return-object v1
.end method
