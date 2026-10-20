.class final Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/MainViewModel;->Z0(Lteam/opay/pay/home/MainActivity;)V
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
    c = "team.opay.pay.home.MainViewModel$loadSplashAds$1"
    f = "MainViewModel.kt"
    l = {
        0x15a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Lteam/opay/pay/home/MainActivity;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/home/MainViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/MainViewModel;Lteam/opay/pay/home/MainActivity;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/MainViewModel;",
            "Lteam/opay/pay/home/MainActivity;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->$context:Lteam/opay/pay/home/MainActivity;

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
    new-instance p1, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->$context:Lteam/opay/pay/home/MainActivity;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;-><init>(Lteam/opay/pay/home/MainViewModel;Lteam/opay/pay/home/MainActivity;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

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
    iget v2, v0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->label:I

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
    sget-object v4, Lteam/opay/olocation/OLocationManager;->a:Lteam/opay/olocation/OLocationManager;

    .line 41
    .line 42
    invoke-virtual {v4}, Lteam/opay/olocation/OLocationManager;->g()Landroid/location/Location;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iget-object v5, v0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 47
    .line 48
    invoke-static {v5}, Lteam/opay/pay/home/MainViewModel;->Z(Lteam/opay/pay/home/MainViewModel;)Lteam/opay/core/api/e;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v5}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const/4 v6, 0x0

    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    invoke-virtual {v5}, Lteam/opay/core/api/GraphQL$User;->k()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    move-object v8, v5

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move-object v8, v6

    .line 66
    :goto_0
    if-eqz v4, :cond_3

    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    .line 69
    .line 70
    .line 71
    move-result-wide v9

    .line 72
    invoke-static {v9, v10}, Ldf1;->b(D)Ljava/lang/Double;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    move-object v9, v5

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move-object v9, v6

    .line 79
    :goto_1
    if-eqz v4, :cond_4

    .line 80
    .line 81
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    invoke-static {v4, v5}, Ldf1;->b(D)Ljava/lang/Double;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    move-object v10, v4

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    move-object v10, v6

    .line 92
    :goto_2
    iget-object v4, v0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->$context:Lteam/opay/pay/home/MainActivity;

    .line 93
    .line 94
    invoke-static {v4}, Lgmf;->d(Landroid/content/Context;)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    iget-object v5, v0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 99
    .line 100
    invoke-static {v5}, Lteam/opay/pay/home/MainViewModel;->Z(Lteam/opay/pay/home/MainViewModel;)Lteam/opay/core/api/e;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-interface {v5}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    if-eqz v5, :cond_5

    .line 109
    .line 110
    invoke-virtual {v5}, Lteam/opay/core/api/GraphQL$User;->h()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    move-object v12, v5

    .line 115
    goto :goto_3

    .line 116
    :cond_5
    move-object v12, v6

    .line 117
    :goto_3
    iget-object v5, v0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->$context:Lteam/opay/pay/home/MainActivity;

    .line 118
    .line 119
    invoke-static {v5}, Lgmf;->c(Landroid/content/Context;)I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v2, :cond_6

    .line 124
    .line 125
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    goto :goto_4

    .line 130
    :cond_6
    move-object v7, v6

    .line 131
    :goto_4
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    if-eqz v2, :cond_7

    .line 136
    .line 137
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-static {v2}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    goto :goto_5

    .line 146
    :cond_7
    move-object v2, v6

    .line 147
    :goto_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    iget-object v2, v0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 152
    .line 153
    invoke-virtual {v2}, Lteam/opay/pay/home/MainViewModel;->U0()Lteam/opay/core/settings/SettingsStorage;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2}, Lteam/opay/core/settings/SettingsStorage;->i()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    iget-object v2, v0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 162
    .line 163
    invoke-virtual {v2}, Lteam/opay/pay/home/MainViewModel;->U0()Lteam/opay/core/settings/SettingsStorage;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v2}, Lteam/opay/core/settings/SettingsStorage;->j()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v15

    .line 171
    iget-object v2, v0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 172
    .line 173
    invoke-static {v2}, Lteam/opay/pay/home/MainViewModel;->Z(Lteam/opay/pay/home/MainViewModel;)Lteam/opay/core/api/e;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-interface {v2}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    if-eqz v2, :cond_8

    .line 182
    .line 183
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$User;->i()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    move-object/from16 v18, v2

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_8
    move-object/from16 v18, v6

    .line 191
    .line 192
    :goto_6
    new-instance v2, Lcom/opay/team/home/bean/AdsDataReq;

    .line 193
    .line 194
    invoke-static {v4}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v16

    .line 198
    invoke-static {v5}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v17

    .line 202
    move-object v7, v2

    .line 203
    invoke-direct/range {v7 .. v18}, Lcom/opay/team/home/bean/AdsDataReq;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v4, v0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 207
    .line 208
    invoke-static {v4}, Lteam/opay/pay/home/MainViewModel;->X(Lteam/opay/pay/home/MainViewModel;)Lcom/opay/team/home/api/HomeApiService$b;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-interface {v4, v2}, Lcom/opay/team/home/api/HomeApiService$b;->j(Lcom/opay/team/home/bean/AdsDataReq;)Lretrofit2/Call;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    iget-object v4, v0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 217
    .line 218
    const-string v5, "200"

    .line 219
    .line 220
    invoke-static {v2, v4, v5}, Lkpc;->d(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    new-instance v5, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1$1;

    .line 229
    .line 230
    iget-object v7, v0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->$context:Lteam/opay/pay/home/MainActivity;

    .line 231
    .line 232
    iget-object v8, v0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 233
    .line 234
    invoke-direct {v5, v2, v7, v8, v6}, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1$1;-><init>(Landroidx/lifecycle/LiveData;Lteam/opay/pay/home/MainActivity;Lteam/opay/pay/home/MainViewModel;Ljr2;)V

    .line 235
    .line 236
    .line 237
    iput v3, v0, Lteam/opay/pay/home/MainViewModel$loadSplashAds$1;->label:I

    .line 238
    .line 239
    invoke-static {v4, v5, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    if-ne v2, v1, :cond_9

    .line 244
    .line 245
    return-object v1

    .line 246
    :cond_9
    :goto_7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 247
    .line 248
    return-object v1
.end method
