.class final Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MTNSignUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/onboarding/tabs/MTNSignUtil;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lhm6;)V
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
    c = "team.opay.pay.onboarding.tabs.MTNSignUtil$getMtnSignToken$1"
    f = "MTNSignUtil.kt"
    l = {
        0x24,
        0x29,
        0x33
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lhm6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhm6<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $clientId:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lhm6;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lhm6<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->$clientId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->$callback:Lhm6;

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

.method public static synthetic c(Ljava/lang/Exception;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->invokeSuspend$lambda$2(Ljava/lang/Exception;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->invokeSuspend$lambda$1(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->invokeSuspend$lambda$0(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "hql getMtnSignToken code = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "hql getMtnSignToken error = "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static final invokeSuspend$lambda$2(Ljava/lang/Exception;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "hql getMtnSignToken Exception = "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
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
    new-instance p1, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->$clientId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->$callback:Lhm6;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;-><init>(Ljava/lang/String;Lhm6;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eq v1, v4, :cond_1

    .line 14
    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :try_start_1
    const-string p1, "testingstate"

    .line 44
    .line 45
    const-string v1, "http://lb1-api.chenosis.io"

    .line 46
    .line 47
    new-instance v6, Ljava/net/URL;

    .line 48
    .line 49
    iget-object v7, p0, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->$clientId:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v8, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v9, "/smnv/v1/oauth/authorize?client_id="

    .line 60
    .line 61
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v7, "&response_type=code&state="

    .line 68
    .line 69
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, "&prompt=none&redirect_uri=https://api.opayweb.com"

    .line 76
    .line 77
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Ljava/net/URLConnection;

    .line 96
    .line 97
    const-string v6, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 98
    .line 99
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 103
    .line 104
    const/4 v6, 0x0

    .line 105
    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 106
    .line 107
    .line 108
    const-string v6, "GET"

    .line 109
    .line 110
    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget-object v6, Lteam/opay/pay/onboarding/tabs/MtnTestABTest;->Companion:Lteam/opay/pay/onboarding/tabs/MtnTestABTest$Companion;

    .line 114
    .line 115
    invoke-virtual {v6}, Lteam/opay/pay/onboarding/tabs/MtnTestABTest$Companion;->c()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    mul-int/lit16 v6, v6, 0x3e8

    .line 120
    .line 121
    invoke-virtual {p1, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    const/16 v7, 0x12e

    .line 132
    .line 133
    if-ne v6, v7, :cond_3

    .line 134
    .line 135
    const-string v3, "location"

    .line 136
    .line 137
    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    const-string v1, "code"

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    sget-object v1, Lxk8;->a:Lxk8;

    .line 167
    .line 168
    new-instance v3, Lteam/opay/pay/onboarding/tabs/a;

    .line 169
    .line 170
    invoke-direct {v3, p1}, Lteam/opay/pay/onboarding/tabs/a;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v1, v5, v3, v4, v5}, Lxk8;->i(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    new-instance v3, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1$2;

    .line 181
    .line 182
    iget-object v6, p0, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->$callback:Lhm6;

    .line 183
    .line 184
    invoke-direct {v3, v6, p1, v5}, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1$2;-><init>(Lhm6;Ljava/lang/String;Ljr2;)V

    .line 185
    .line 186
    .line 187
    iput v4, p0, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->label:I

    .line 188
    .line 189
    invoke-static {v1, v3, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    if-ne p1, v0, :cond_4

    .line 194
    .line 195
    return-object v0

    .line 196
    :cond_3
    sget-object v1, Lxk8;->a:Lxk8;

    .line 197
    .line 198
    new-instance v6, Lteam/opay/pay/onboarding/tabs/b;

    .line 199
    .line 200
    invoke-direct {v6, p1}, Lteam/opay/pay/onboarding/tabs/b;-><init>(Ljava/net/HttpURLConnection;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v1, v5, v6, v4, v5}, Lxk8;->i(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    new-instance v6, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1$4;

    .line 211
    .line 212
    iget-object v7, p0, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->$callback:Lhm6;

    .line 213
    .line 214
    invoke-direct {v6, v7, p1, v5}, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1$4;-><init>(Lhm6;Ljava/net/HttpURLConnection;Ljr2;)V

    .line 215
    .line 216
    .line 217
    iput v3, p0, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->label:I

    .line 218
    .line 219
    invoke-static {v1, v6, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    if-ne p1, v0, :cond_4

    .line 224
    .line 225
    return-object v0

    .line 226
    :goto_0
    sget-object v1, Lxk8;->a:Lxk8;

    .line 227
    .line 228
    new-instance v3, Lteam/opay/pay/onboarding/tabs/c;

    .line 229
    .line 230
    invoke-direct {v3, p1}, Lteam/opay/pay/onboarding/tabs/c;-><init>(Ljava/lang/Exception;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v1, v5, v3, v4, v5}, Lxk8;->i(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    new-instance v3, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1$6;

    .line 241
    .line 242
    iget-object v4, p0, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->$callback:Lhm6;

    .line 243
    .line 244
    invoke-direct {v3, v4, p1, v5}, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1$6;-><init>(Lhm6;Ljava/lang/Exception;Ljr2;)V

    .line 245
    .line 246
    .line 247
    iput v2, p0, Lteam/opay/pay/onboarding/tabs/MTNSignUtil$getMtnSignToken$1;->label:I

    .line 248
    .line 249
    invoke-static {v1, v3, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-ne p1, v0, :cond_4

    .line 254
    .line 255
    return-object v0

    .line 256
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 257
    .line 258
    return-object p1
.end method
