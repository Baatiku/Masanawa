.class final Lteam/opay/business/js/BusinessWebDelegate$playSound$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BusinessWebDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/js/BusinessWebDelegate;->playSound(Lcom/opay/webview/WebFoundationJsData;)V
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
    c = "team.opay.business.js.BusinessWebDelegate$playSound$1"
    f = "BusinessWebDelegate.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

.field label:I


# direct methods
.method public constructor <init>(Lcom/opay/webview/WebFoundationJsData;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/webview/WebFoundationJsData;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/js/BusinessWebDelegate$playSound$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$playSound$1;->$webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

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
    new-instance p1, Lteam/opay/business/js/BusinessWebDelegate$playSound$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/js/BusinessWebDelegate$playSound$1;->$webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/business/js/BusinessWebDelegate$playSound$1;-><init>(Lcom/opay/webview/WebFoundationJsData;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$playSound$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$playSound$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/js/BusinessWebDelegate$playSound$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$playSound$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lteam/opay/business/js/BusinessWebDelegate$playSound$1;->label:I

    .line 7
    .line 8
    if-nez v1, :cond_6

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 14
    .line 15
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$playSound$1;->$webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    move-object v1, v0

    .line 24
    :cond_0
    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    new-instance p1, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .line 32
    .line 33
    :goto_0
    sget-object v1, Lil8;->c:Lil8;

    .line 34
    .line 35
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "toString(...)"

    .line 40
    .line 41
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static {v1, v2, v4, v3, v4}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "soundType"

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    move-object v1, v0

    .line 58
    :cond_1
    const-string v2, "RECEIPT"

    .line 59
    .line 60
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    sget-object p1, Lteam/opay/business/tts/TtsPlayer;->f:Lteam/opay/business/tts/TtsPlayer$Companion;

    .line 67
    .line 68
    invoke-virtual {p1}, Lteam/opay/business/tts/TtsPlayer$Companion;->a()Lteam/opay/business/tts/TtsPlayer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object v0, Lteam/opay/business/tts/SoundType;->RECEIPT:Lteam/opay/business/tts/SoundType;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lteam/opay/business/tts/TtsPlayer;->r(Lteam/opay/business/tts/SoundType;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const-string v2, "LARGE_CONFIRM"

    .line 79
    .line 80
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    sget-object p1, Lteam/opay/business/tts/TtsPlayer;->f:Lteam/opay/business/tts/TtsPlayer$Companion;

    .line 87
    .line 88
    invoke-virtual {p1}, Lteam/opay/business/tts/TtsPlayer$Companion;->a()Lteam/opay/business/tts/TtsPlayer;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    sget-object v0, Lteam/opay/business/tts/SoundType;->LARGE_CONFIRM:Lteam/opay/business/tts/SoundType;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lteam/opay/business/tts/TtsPlayer;->r(Lteam/opay/business/tts/SoundType;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    const-string v1, "voicePlay"

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-nez p1, :cond_4

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    move-object v0, p1

    .line 108
    :goto_1
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_5

    .line 113
    .line 114
    sget-object p1, Lteam/opay/business/tts/TtsPlayer;->f:Lteam/opay/business/tts/TtsPlayer$Companion;

    .line 115
    .line 116
    invoke-virtual {p1}, Lteam/opay/business/tts/TtsPlayer$Companion;->a()Lteam/opay/business/tts/TtsPlayer;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1, v0}, Lteam/opay/business/tts/TtsPlayer;->q(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 124
    .line 125
    return-object p1

    .line 126
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 127
    .line 128
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 129
    .line 130
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1
.end method
