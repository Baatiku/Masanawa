.class final Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BusinessWebDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/js/BusinessWebDelegate;->callbackH5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/ApiError;Ljr2;)Ljava/lang/Object;
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
    c = "team.opay.business.js.BusinessWebDelegate$callbackH5$2"
    f = "BusinessWebDelegate.kt"
    l = {
        0xf4,
        0x100
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $error:Lteam/opay/core/http/arch/ApiError;

.field final synthetic $fileUrl:Ljava/lang/String;

.field final synthetic $mimeType:Ljava/lang/String;

.field final synthetic $path:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/business/js/BusinessWebDelegate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/ApiError;Lteam/opay/business/js/BusinessWebDelegate;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/http/arch/ApiError;",
            "Lteam/opay/business/js/BusinessWebDelegate;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->$mimeType:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->$path:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->$fileUrl:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->$error:Lteam/opay/core/http/arch/ApiError;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 7
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
    new-instance p1, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->$mimeType:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->$path:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->$fileUrl:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->$error:Lteam/opay/core/http/arch/ApiError;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/ApiError;Lteam/opay/business/js/BusinessWebDelegate;Ljr2;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lorg/json/JSONObject;

    .line 45
    .line 46
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lpd1;->a:Lpd1;

    .line 50
    .line 51
    iget-object v5, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->$mimeType:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v5}, Lpd1;->d(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    sget-object p1, Lteam/opay/business/js/utils/Base64Utils;->a:Lteam/opay/business/js/utils/Base64Utils;

    .line 60
    .line 61
    iget-object v5, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->$path:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    iput v2, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->label:I

    .line 66
    .line 67
    invoke-virtual {p1, v5, p0}, Lteam/opay/business/js/utils/Base64Utils;->a(Ljava/lang/String;Ljr2;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-ne p1, v0, :cond_3

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 75
    .line 76
    const-string v2, "UTF-8"

    .line 77
    .line 78
    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v2, "base64"

    .line 83
    .line 84
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    :cond_4
    const-string p1, "mimeType"

    .line 88
    .line 89
    iget-object v2, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->$mimeType:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->$fileUrl:Ljava/lang/String;

    .line 95
    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-lez v2, :cond_5

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    move-object p1, v4

    .line 106
    :goto_1
    if-eqz p1, :cond_6

    .line 107
    .line 108
    const-string v2, "url"

    .line 109
    .line 110
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    :cond_6
    iget-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->$error:Lteam/opay/core/http/arch/ApiError;

    .line 114
    .line 115
    if-eqz p1, :cond_7

    .line 116
    .line 117
    const-string v2, "errCode"

    .line 118
    .line 119
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->c()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    const-string v2, "errMsg"

    .line 127
    .line 128
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    .line 134
    .line 135
    :cond_7
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-instance v2, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2$4;

    .line 140
    .line 141
    iget-object v5, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 142
    .line 143
    invoke-direct {v2, v5, v1, v4}, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2$4;-><init>(Lteam/opay/business/js/BusinessWebDelegate;Lorg/json/JSONObject;Ljr2;)V

    .line 144
    .line 145
    .line 146
    iput-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->L$0:Ljava/lang/Object;

    .line 147
    .line 148
    iput v3, p0, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;->label:I

    .line 149
    .line 150
    invoke-static {p1, v2, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    if-ne p1, v0, :cond_8

    .line 155
    .line 156
    return-object v0

    .line 157
    :cond_8
    move-object v0, v1

    .line 158
    :goto_2
    sget-object p1, Lil8;->c:Lil8;

    .line 159
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v2, "---callback -> json = "

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {p1, v0, v4, v3, v4}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 181
    .line 182
    return-object p1
.end method
