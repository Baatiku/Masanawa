.class public final Lteam/opay/business/tts/TtsPlayer$1$1;
.super Ljava/lang/Object;
.source "TTSPlayer.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/tts/TtsPlayer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lzr2;

.field public final synthetic b:Lteam/opay/business/tts/TtsPlayer;


# direct methods
.method public constructor <init>(Lzr2;Lteam/opay/business/tts/TtsPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/tts/TtsPlayer$1$1;->a:Lzr2;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/tts/TtsPlayer$1$1;->b:Lteam/opay/business/tts/TtsPlayer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/business/tts/SoundMaterial;Ljr2;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/tts/SoundMaterial;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lteam/opay/business/tts/TtsPlayer$1$1$emit$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lteam/opay/business/tts/TtsPlayer$1$1$emit$1;

    .line 7
    .line 8
    iget v1, v0, Lteam/opay/business/tts/TtsPlayer$1$1$emit$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lteam/opay/business/tts/TtsPlayer$1$1$emit$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lteam/opay/business/tts/TtsPlayer$1$1$emit$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lteam/opay/business/tts/TtsPlayer$1$1$emit$1;-><init>(Lteam/opay/business/tts/TtsPlayer$1$1;Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lteam/opay/business/tts/TtsPlayer$1$1$emit$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lteam/opay/business/tts/TtsPlayer$1$1$emit$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    iget-object p1, v0, Lteam/opay/business/tts/TtsPlayer$1$1$emit$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lteam/opay/business/tts/SoundMaterial;

    .line 43
    .line 44
    iget-object v0, v0, Lteam/opay/business/tts/TtsPlayer$1$1$emit$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lteam/opay/business/tts/TtsPlayer$1$1;

    .line 47
    .line 48
    :try_start_0
    invoke-static {p2}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p2

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    invoke-static {p2}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    sget-object p2, Llk8;->c:Llk8;

    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v6, "tts -> play, material: "

    .line 73
    .line 74
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v6, " "

    .line 81
    .line 82
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {p2, v2, v5, v3, v5}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object p2, p0, Lteam/opay/business/tts/TtsPlayer$1$1;->b:Lteam/opay/business/tts/TtsPlayer;

    .line 93
    .line 94
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 95
    .line 96
    new-instance v2, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;

    .line 97
    .line 98
    invoke-direct {v2, p1, p2, v5}, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;-><init>(Lteam/opay/business/tts/SoundMaterial;Lteam/opay/business/tts/TtsPlayer;Ljr2;)V

    .line 99
    .line 100
    .line 101
    iput-object p0, v0, Lteam/opay/business/tts/TtsPlayer$1$1$emit$1;->L$0:Ljava/lang/Object;

    .line 102
    .line 103
    iput-object p1, v0, Lteam/opay/business/tts/TtsPlayer$1$1$emit$1;->L$1:Ljava/lang/Object;

    .line 104
    .line 105
    iput v4, v0, Lteam/opay/business/tts/TtsPlayer$1$1$emit$1;->label:I

    .line 106
    .line 107
    const-wide/32 v6, 0xea60

    .line 108
    .line 109
    .line 110
    invoke-static {v6, v7, v2, v0}, Lkotlinx/coroutines/TimeoutKt;->c(JLkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    if-ne p2, v1, :cond_3

    .line 115
    .line 116
    return-object v1

    .line 117
    :cond_3
    move-object v0, p0

    .line 118
    :goto_1
    :try_start_2
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    goto :goto_3

    .line 125
    :catchall_1
    move-exception p2

    .line 126
    move-object v0, p0

    .line 127
    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 128
    .line 129
    invoke-static {p2}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    :goto_3
    iget-object v0, v0, Lteam/opay/business/tts/TtsPlayer$1$1;->b:Lteam/opay/business/tts/TtsPlayer;

    .line 138
    .line 139
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    if-eqz p2, :cond_4

    .line 144
    .line 145
    new-instance v1, Lteam/opay/business/tts/voice/TtsException;

    .line 146
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v4, "play flow timeout : material: "

    .line 153
    .line 154
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p1, ", error: "

    .line 161
    .line 162
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-direct {v1, p1}, Lteam/opay/business/tts/voice/TtsException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sget-object p1, Llk8;->c:Llk8;

    .line 176
    .line 177
    invoke-static {p1, v1, v5, v3, v5}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    sget-object p1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 181
    .line 182
    invoke-virtual {p1, v1}, Lteam/opay/core/common/spi/a;->d(Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v0}, Lteam/opay/business/tts/TtsPlayer;->g(Lteam/opay/business/tts/TtsPlayer;)Lteam/opay/business/tts/Tts;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lteam/opay/business/tts/Tts;->e()V

    .line 190
    .line 191
    .line 192
    invoke-static {v0}, Lteam/opay/business/tts/TtsPlayer;->h(Lteam/opay/business/tts/TtsPlayer;)Lteam/opay/business/tts/voice/MediaPlayerVoice;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lteam/opay/business/tts/voice/MediaPlayerVoice;->h()V

    .line 197
    .line 198
    .line 199
    new-instance p1, Lteam/opay/business/tts/voice/MediaPlayerVoice;

    .line 200
    .line 201
    invoke-static {v0}, Lteam/opay/business/tts/TtsPlayer;->d(Lteam/opay/business/tts/TtsPlayer;)Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-direct {p1, p2}, Lteam/opay/business/tts/voice/MediaPlayerVoice;-><init>(Landroid/content/Context;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v0, p1}, Lteam/opay/business/tts/TtsPlayer;->k(Lteam/opay/business/tts/TtsPlayer;Lteam/opay/business/tts/voice/MediaPlayerVoice;)V

    .line 209
    .line 210
    .line 211
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 212
    .line 213
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/business/tts/SoundMaterial;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/tts/TtsPlayer$1$1;->c(Lteam/opay/business/tts/SoundMaterial;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
