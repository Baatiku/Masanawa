.class final Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TtsMessageFilter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/push/core/delegate/TtsMessageFilter;->filter(Landroid/content/Context;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;)V
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
    c = "team.opay.business.push.core.delegate.TtsMessageFilter$filter$1"
    f = "TtsMessageFilter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $message:Lteam/opay/business/push/core/api/PushMessage;

.field final synthetic $pushSource:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(Lteam/opay/business/push/core/api/PushMessage;Landroid/content/Context;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/push/core/api/PushMessage;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$message:Lteam/opay/business/push/core/api/PushMessage;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$pushSource:Ljava/lang/String;

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
    new-instance p1, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$message:Lteam/opay/business/push/core/api/PushMessage;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$pushSource:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;-><init>(Lteam/opay/business/push/core/api/PushMessage;Landroid/content/Context;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lik8;->c:Lik8;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$message:Lteam/opay/business/push/core/api/PushMessage;

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/business/push/core/api/PushMessage;->getVoiceSound()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$message:Lteam/opay/business/push/core/api/PushMessage;

    .line 20
    .line 21
    invoke-virtual {v1}, Lteam/opay/business/push/core/api/PushMessage;->getVoicePlay()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "push -> tts, voiceSound ="

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", voicePlay = "

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x2

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-static {p1, v0, v2, v1, v2}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$message:Lteam/opay/business/push/core/api/PushMessage;

    .line 56
    .line 57
    invoke-virtual {p1}, Lteam/opay/business/push/core/api/PushMessage;->getVoicePlay()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_0

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    iget-object p1, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$message:Lteam/opay/business/push/core/api/PushMessage;

    .line 71
    .line 72
    invoke-static {p1}, Lpdf;->a(Lteam/opay/business/push/core/api/PushMessage;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const/4 v0, 0x0

    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    sget-object v1, Lzqe;->a:Lzqe;

    .line 80
    .line 81
    iget-object v2, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$context:Landroid/content/Context;

    .line 82
    .line 83
    iget-object v4, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$message:Lteam/opay/business/push/core/api/PushMessage;

    .line 84
    .line 85
    iget-object v5, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$pushSource:Ljava/lang/String;

    .line 86
    .line 87
    new-array v6, v0, [Lkotlin/Pair;

    .line 88
    .line 89
    const-string v3, "wss_message_voice_playing_expired"

    .line 90
    .line 91
    invoke-virtual/range {v1 .. v6}, Lzqe;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 92
    .line 93
    .line 94
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_1
    iget-object p1, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$message:Lteam/opay/business/push/core/api/PushMessage;

    .line 98
    .line 99
    invoke-virtual {p1}, Lteam/opay/business/push/core/api/PushMessage;->getVoiceSound()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v1, "1"

    .line 104
    .line 105
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_2

    .line 110
    .line 111
    sget-object p1, Lteam/opay/business/tts/TtsPlayer;->f:Lteam/opay/business/tts/TtsPlayer$Companion;

    .line 112
    .line 113
    invoke-virtual {p1}, Lteam/opay/business/tts/TtsPlayer$Companion;->a()Lteam/opay/business/tts/TtsPlayer;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    sget-object v1, Lteam/opay/business/tts/SoundType;->RECEIPT:Lteam/opay/business/tts/SoundType;

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Lteam/opay/business/tts/TtsPlayer;->r(Lteam/opay/business/tts/SoundType;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_2
    const-string v1, "2"

    .line 124
    .line 125
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_3

    .line 130
    .line 131
    sget-object p1, Lteam/opay/business/tts/TtsPlayer;->f:Lteam/opay/business/tts/TtsPlayer$Companion;

    .line 132
    .line 133
    invoke-virtual {p1}, Lteam/opay/business/tts/TtsPlayer$Companion;->a()Lteam/opay/business/tts/TtsPlayer;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    sget-object v1, Lteam/opay/business/tts/SoundType;->LARGE_CONFIRM:Lteam/opay/business/tts/SoundType;

    .line 138
    .line 139
    invoke-virtual {p1, v1}, Lteam/opay/business/tts/TtsPlayer;->r(Lteam/opay/business/tts/SoundType;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_3
    sget-object p1, Lteam/opay/business/tts/TtsPlayer;->f:Lteam/opay/business/tts/TtsPlayer$Companion;

    .line 144
    .line 145
    invoke-virtual {p1}, Lteam/opay/business/tts/TtsPlayer$Companion;->a()Lteam/opay/business/tts/TtsPlayer;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget-object v1, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$message:Lteam/opay/business/push/core/api/PushMessage;

    .line 150
    .line 151
    invoke-virtual {v1}, Lteam/opay/business/push/core/api/PushMessage;->getVoicePlay()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {p1, v1}, Lteam/opay/business/tts/TtsPlayer;->q(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :goto_0
    sget-object v2, Lzqe;->a:Lzqe;

    .line 159
    .line 160
    iget-object v3, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$context:Landroid/content/Context;

    .line 161
    .line 162
    iget-object v5, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$message:Lteam/opay/business/push/core/api/PushMessage;

    .line 163
    .line 164
    iget-object v6, p0, Lteam/opay/business/push/core/delegate/TtsMessageFilter$filter$1;->$pushSource:Ljava/lang/String;

    .line 165
    .line 166
    new-array v7, v0, [Lkotlin/Pair;

    .line 167
    .line 168
    const-string v4, "wss_message_voice_playing"

    .line 169
    .line 170
    invoke-virtual/range {v2 .. v7}, Lzqe;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 174
    .line 175
    return-object p1

    .line 176
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 179
    .line 180
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1
.end method
