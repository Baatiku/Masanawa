.class public final Lteam/opay/pay/update/network/UpdateApiService;
.super Ljava/lang/Object;
.source "UpdateApiService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/update/network/UpdateApiService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001fB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J7\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010JE\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00042\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00062\u0012\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u0011H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J7\u0010\u0017\u001a\u00020\u00132\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\u0012\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u0011H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001c\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u001d\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/pay/update/network/UpdateApiService;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "",
        "mutableMap",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/update/network/UpdateResultData;",
        "Lteam/opay/pay/update/bean/UpdateVerCheckRsp;",
        "b",
        "(Landroid/content/Context;Ljava/util/Map;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/update/network/UpdateApiService$a;",
        "d",
        "(Landroid/content/Context;)Lteam/opay/pay/update/network/UpdateApiService$a;",
        "Landroidx/lifecycle/MutableLiveData;",
        "liveData",
        "",
        "c",
        "(Landroid/content/Context;Ljava/util/Map;Landroidx/lifecycle/MutableLiveData;Ljr2;)Ljava/lang/Object;",
        "data",
        "f",
        "(Lteam/opay/pay/update/network/UpdateResultData;Landroidx/lifecycle/MutableLiveData;Ljr2;)Ljava/lang/Object;",
        "Lid8;",
        "e",
        "()Ljava/lang/String;",
        "HOME_UPDATE_HOST",
        "Lteam/opay/pay/update/network/UpdateApiService$a;",
        "updateApi",
        "a",
        "update_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lteam/opay/pay/update/network/UpdateApiService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static c:Lteam/opay/pay/update/network/UpdateApiService$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/update/network/UpdateApiService;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/update/network/UpdateApiService;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/pay/update/network/UpdateApiService;->a:Lteam/opay/pay/update/network/UpdateApiService;

    .line 7
    .line 8
    sget-object v0, Lteam/opay/pay/update/network/UpdateApiService$HOME_UPDATE_HOST$2;->INSTANCE:Lteam/opay/pay/update/network/UpdateApiService$HOME_UPDATE_HOST$2;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lteam/opay/pay/update/network/UpdateApiService;->b:Lid8;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lteam/opay/pay/update/network/UpdateApiService;Landroid/content/Context;Ljava/util/Map;Landroidx/lifecycle/MutableLiveData;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/update/network/UpdateApiService;->c(Landroid/content/Context;Ljava/util/Map;Landroidx/lifecycle/MutableLiveData;Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Ljava/util/Map;)Landroidx/lifecycle/LiveData;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/update/network/UpdateResultData<",
            "Lteam/opay/pay/update/bean/UpdateVerCheckRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lkotlinx/coroutines/g;->a(Lkotlin/coroutines/CoroutineContext;)Lzr2;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v5, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v5, p1, p2, v0, v1}, Lteam/opay/pay/update/network/UpdateApiService$checkUpdate$1;-><init>(Landroid/content/Context;Ljava/util/Map;Landroidx/lifecycle/MutableLiveData;Ljr2;)V

    .line 23
    .line 24
    .line 25
    const/4 v6, 0x3

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public final c(Landroid/content/Context;Ljava/util/Map;Landroidx/lifecycle/MutableLiveData;Ljr2;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/update/network/UpdateResultData<",
            "Lteam/opay/pay/update/bean/UpdateVerCheckRsp;",
            ">;>;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    move-object/from16 v0, p4

    .line 6
    .line 7
    instance-of v3, v0, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v0

    .line 12
    check-cast v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;

    .line 13
    .line 14
    iget v4, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;

    .line 27
    .line 28
    invoke-direct {v3, v1, v0}, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;-><init>(Lteam/opay/pay/update/network/UpdateApiService;Ljr2;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget v5, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->label:I

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    const/4 v7, 0x2

    .line 41
    const/4 v8, 0x1

    .line 42
    const/4 v9, 0x0

    .line 43
    if-eqz v5, :cond_4

    .line 44
    .line 45
    if-eq v5, v8, :cond_3

    .line 46
    .line 47
    if-eq v5, v7, :cond_2

    .line 48
    .line 49
    if-ne v5, v6, :cond_1

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_2
    iget-object v2, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->L$1:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Landroidx/lifecycle/MutableLiveData;

    .line 67
    .line 68
    iget-object v5, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v5, Lteam/opay/pay/update/network/UpdateApiService;

    .line 71
    .line 72
    :goto_1
    :try_start_0
    invoke-static {v0}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :catch_0
    move-exception v0

    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_3
    iget-object v2, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->L$1:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Landroidx/lifecycle/MutableLiveData;

    .line 83
    .line 84
    iget-object v5, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->L$0:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v5, Lteam/opay/pay/update/network/UpdateApiService;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    invoke-static {v0}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 93
    .line 94
    sget-object v5, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 95
    .line 96
    const-string v10, "application/json;charset=UTF-8"

    .line 97
    .line 98
    invoke-virtual {v5, v10}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    new-instance v10, Lcom/google/gson/Gson;

    .line 103
    .line 104
    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    .line 105
    .line 106
    .line 107
    move-object/from16 v11, p2

    .line 108
    .line 109
    invoke-virtual {v10, v11}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    const-string v11, "Gson().toJson(mutableMap)"

    .line 114
    .line 115
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v5, v10}, Lokhttp3/RequestBody$Companion;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lteam/opay/pay/update/network/UpdateApiService;->d(Landroid/content/Context;)Lteam/opay/pay/update/network/UpdateApiService$a;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-interface {v5, v0}, Lteam/opay/pay/update/network/UpdateApiService$a;->a(Lokhttp3/RequestBody;)Lretrofit2/Call;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-eqz v5, :cond_5

    .line 139
    .line 140
    new-instance v5, Lteam/opay/pay/update/network/UpdateResultData;

    .line 141
    .line 142
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    const/4 v14, 0x4

    .line 147
    const/4 v15, 0x0

    .line 148
    const/4 v11, 0x0

    .line 149
    const/4 v13, 0x0

    .line 150
    move-object v10, v5

    .line 151
    invoke-direct/range {v10 .. v15}, Lteam/opay/pay/update/network/UpdateResultData;-><init>(ILjava/lang/Object;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 152
    .line 153
    .line 154
    iput-object v1, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->L$0:Ljava/lang/Object;

    .line 155
    .line 156
    iput-object v2, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->L$1:Ljava/lang/Object;

    .line 157
    .line 158
    iput v8, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->label:I

    .line 159
    .line 160
    invoke-virtual {v1, v5, v2, v3}, Lteam/opay/pay/update/network/UpdateApiService;->f(Lteam/opay/pay/update/network/UpdateResultData;Landroidx/lifecycle/MutableLiveData;Ljr2;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    if-ne v0, v4, :cond_6

    .line 165
    .line 166
    return-object v4

    .line 167
    :catch_1
    move-exception v0

    .line 168
    move-object v5, v1

    .line 169
    goto :goto_2

    .line 170
    :cond_5
    new-instance v5, Lteam/opay/pay/update/network/UpdateResultData;

    .line 171
    .line 172
    invoke-virtual {v0}, Lretrofit2/Response;->message()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    const/4 v10, 0x0

    .line 177
    invoke-direct {v5, v10, v9, v0}, Lteam/opay/pay/update/network/UpdateResultData;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iput-object v1, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->L$0:Ljava/lang/Object;

    .line 181
    .line 182
    iput-object v2, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->L$1:Ljava/lang/Object;

    .line 183
    .line 184
    iput v7, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->label:I

    .line 185
    .line 186
    invoke-virtual {v1, v5, v2, v3}, Lteam/opay/pay/update/network/UpdateApiService;->f(Lteam/opay/pay/update/network/UpdateResultData;Landroidx/lifecycle/MutableLiveData;Ljr2;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    if-ne v0, v4, :cond_6

    .line 191
    .line 192
    return-object v4

    .line 193
    :goto_2
    new-instance v7, Lteam/opay/pay/update/network/UpdateResultData;

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-direct {v7, v8, v9, v0}, Lteam/opay/pay/update/network/UpdateResultData;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iput-object v9, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->L$0:Ljava/lang/Object;

    .line 203
    .line 204
    iput-object v9, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->L$1:Ljava/lang/Object;

    .line 205
    .line 206
    iput v6, v3, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->label:I

    .line 207
    .line 208
    invoke-virtual {v5, v7, v2, v3}, Lteam/opay/pay/update/network/UpdateApiService;->f(Lteam/opay/pay/update/network/UpdateResultData;Landroidx/lifecycle/MutableLiveData;Ljr2;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    if-ne v0, v4, :cond_6

    .line 213
    .line 214
    return-object v4

    .line 215
    :cond_6
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 216
    .line 217
    return-object v0
.end method

.method public final d(Landroid/content/Context;)Lteam/opay/pay/update/network/UpdateApiService$a;
    .locals 1

    .line 1
    sget-object p1, Lteam/opay/pay/update/network/UpdateApiService;->c:Lteam/opay/pay/update/network/UpdateApiService$a;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lretrofit2/Retrofit$Builder;

    .line 6
    .line 7
    invoke-direct {p1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v0, Lteam/opay/pay/update/network/UpdateApiService;->a:Lteam/opay/pay/update/network/UpdateApiService;

    .line 19
    .line 20
    invoke-virtual {v0}, Lteam/opay/pay/update/network/UpdateApiService;->e()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {}, Lteam/opay/pay/update/network/OkHttpUtilsKt;->h()Lokhttp3/OkHttpClient;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-class v0, Lteam/opay/pay/update/network/UpdateApiService$a;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lteam/opay/pay/update/network/UpdateApiService$a;

    .line 47
    .line 48
    sput-object p1, Lteam/opay/pay/update/network/UpdateApiService;->c:Lteam/opay/pay/update/network/UpdateApiService$a;

    .line 49
    .line 50
    const-string v0, "api"

    .line 51
    .line 52
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-object p1
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/update/network/UpdateApiService;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public final f(Lteam/opay/pay/update/network/UpdateResultData;Landroidx/lifecycle/MutableLiveData;Ljr2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/update/network/UpdateResultData<",
            "Lteam/opay/pay/update/bean/UpdateVerCheckRsp;",
            ">;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/update/network/UpdateResultData<",
            "Lteam/opay/pay/update/bean/UpdateVerCheckRsp;",
            ">;>;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lteam/opay/pay/update/network/UpdateApiService$postResult$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p2, p1, v2}, Lteam/opay/pay/update/network/UpdateApiService$postResult$2;-><init>(Landroidx/lifecycle/MutableLiveData;Lteam/opay/pay/update/network/UpdateResultData;Ljr2;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p3}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method
