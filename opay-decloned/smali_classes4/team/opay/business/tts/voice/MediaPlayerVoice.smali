.class public final Lteam/opay/business/tts/voice/MediaPlayerVoice;
.super Lteam/opay/business/tts/voice/Voice;
.source "Voice.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J-\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008j\u0004\u0018\u0001`\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0016\u0010$\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010#R\u0018\u0010\'\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010&R\u0016\u0010)\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,\u00a8\u0006."
    }
    d2 = {
        "Lteam/opay/business/tts/voice/MediaPlayerVoice;",
        "Lteam/opay/business/tts/voice/Voice;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "resId",
        "Lkotlin/Function0;",
        "",
        "Lteam/opay/core/common/android/Block;",
        "onCompletion",
        "f",
        "(ILkotlin/jvm/functions/Function0;)V",
        "h",
        "()V",
        "Landroid/media/AudioAttributes;",
        "attributes",
        "",
        "i",
        "(Landroid/media/AudioAttributes;)Z",
        "d",
        "a",
        "Landroid/content/Context;",
        "Landroid/media/AudioManager;",
        "b",
        "Landroid/media/AudioManager;",
        "am",
        "Lteam/opay/business/tts/internal/VolumeManager;",
        "c",
        "Lid8;",
        "e",
        "()Lteam/opay/business/tts/internal/VolumeManager;",
        "vm",
        "Lteam/opay/business/tts/internal/TtsVolume;",
        "Lteam/opay/business/tts/internal/TtsVolume;",
        "ttsVolume",
        "Landroid/media/AudioFocusRequest;",
        "Landroid/media/AudioFocusRequest;",
        "focusRequest",
        "Z",
        "isPlaying",
        "Landroid/media/MediaPlayer;",
        "g",
        "Landroid/media/MediaPlayer;",
        "mediaPlayer",
        "business-tts_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/media/AudioManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lteam/opay/business/tts/internal/TtsVolume;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Landroid/media/AudioFocusRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Z

.field public g:Landroid/media/MediaPlayer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/business/tts/voice/Voice;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p1}, Lgt;->b(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->b:Landroid/media/AudioManager;

    .line 16
    .line 17
    new-instance p1, Lb59;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lb59;-><init>(Lteam/opay/business/tts/voice/MediaPlayerVoice;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->c:Lid8;

    .line 27
    .line 28
    new-instance p1, Lteam/opay/business/tts/internal/TtsVolume;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-direct {p1, v0, v0}, Lteam/opay/business/tts/internal/TtsVolume;-><init>(II)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->d:Lteam/opay/business/tts/internal/TtsVolume;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic a(Lteam/opay/business/tts/voice/MediaPlayerVoice;)Lteam/opay/business/tts/internal/VolumeManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/tts/voice/MediaPlayerVoice;->k(Lteam/opay/business/tts/voice/MediaPlayerVoice;)Lteam/opay/business/tts/internal/VolumeManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/tts/voice/MediaPlayerVoice;->j(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lteam/opay/business/tts/voice/MediaPlayerVoice;Lkotlin/jvm/functions/Function0;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/tts/voice/MediaPlayerVoice;->g(Lteam/opay/business/tts/voice/MediaPlayerVoice;Lkotlin/jvm/functions/Function0;Landroid/media/MediaPlayer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final g(Lteam/opay/business/tts/voice/MediaPlayerVoice;Lkotlin/jvm/functions/Function0;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/tts/voice/MediaPlayerVoice;->h()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public static final j(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public static final k(Lteam/opay/business/tts/voice/MediaPlayerVoice;)Lteam/opay/business/tts/internal/VolumeManager;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/tts/internal/VolumeManager;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lteam/opay/business/tts/internal/VolumeManager;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->e:Landroid/media/AudioFocusRequest;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->b:Landroid/media/AudioManager;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lz49;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->b:Landroid/media/AudioManager;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public final e()Lteam/opay/business/tts/internal/VolumeManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/tts/internal/VolumeManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public f(ILkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-gtz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void

    .line 9
    :cond_1
    iget-boolean v0, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->f:Z

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_2
    return-void

    .line 19
    :cond_3
    invoke-virtual {p0}, Lteam/opay/business/tts/voice/MediaPlayerVoice;->h()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->f:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/business/tts/voice/MediaPlayerVoice;->e()Lteam/opay/business/tts/internal/VolumeManager;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lteam/opay/business/tts/internal/VolumeManager;->b()Lteam/opay/business/tts/internal/TtsVolume;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->d:Lteam/opay/business/tts/internal/TtsVolume;

    .line 34
    .line 35
    invoke-virtual {v1}, Lteam/opay/business/tts/internal/TtsVolume;->b()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x0

    .line 40
    if-gtz v1, :cond_5

    .line 41
    .line 42
    iput-boolean v2, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->f:Z

    .line 43
    .line 44
    if-eqz p2, :cond_4

    .line 45
    .line 46
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_4
    return-void

    .line 50
    :cond_5
    iget-object v1, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->a:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v1, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p1, :cond_7

    .line 57
    .line 58
    iput-boolean v2, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->f:Z

    .line 59
    .line 60
    if-eqz p2, :cond_6

    .line 61
    .line 62
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_6
    return-void

    .line 66
    :cond_7
    iput-object p1, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->g:Landroid/media/MediaPlayer;

    .line 67
    .line 68
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 69
    .line 70
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 71
    .line 72
    .line 73
    const/16 v2, 0xa

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lteam/opay/business/tts/voice/MediaPlayerVoice;->i(Landroid/media/AudioAttributes;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    invoke-virtual {p0}, Lteam/opay/business/tts/voice/MediaPlayerVoice;->h()V

    .line 97
    .line 98
    .line 99
    if-eqz p2, :cond_8

    .line 100
    .line 101
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    :cond_8
    return-void

    .line 105
    :cond_9
    invoke-virtual {p0}, Lteam/opay/business/tts/voice/MediaPlayerVoice;->e()Lteam/opay/business/tts/internal/VolumeManager;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget-object v2, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->d:Lteam/opay/business/tts/internal/TtsVolume;

    .line 110
    .line 111
    invoke-virtual {v2}, Lteam/opay/business/tts/internal/TtsVolume;->a()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {v1, v2}, Lteam/opay/business/tts/internal/VolumeManager;->c(I)V

    .line 116
    .line 117
    .line 118
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, La59;

    .line 122
    .line 123
    invoke-direct {v0, p0, p2}, La59;-><init>(Lteam/opay/business/tts/voice/MediaPlayerVoice;Lkotlin/jvm/functions/Function0;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 130
    .line 131
    .line 132
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception p1

    .line 136
    sget-object v0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 137
    .line 138
    new-instance v1, Lteam/opay/business/tts/voice/TtsException;

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-direct {v1, v2}, Lteam/opay/business/tts/voice/TtsException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lteam/opay/core/common/spi/a;->d(Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    sget-object v0, Llk8;->c:Llk8;

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v2, "tts -> mediaPlayer start failed: "

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const/4 v1, 0x2

    .line 174
    const/4 v2, 0x0

    .line 175
    invoke-static {v0, p1, v2, v1, v2}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lteam/opay/business/tts/voice/MediaPlayerVoice;->h()V

    .line 179
    .line 180
    .line 181
    if-eqz p2, :cond_a

    .line 182
    .line 183
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 187
    .line 188
    :cond_a
    :goto_0
    return-void
.end method

.method public h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->g:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->f:Z

    .line 8
    .line 9
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/business/tts/voice/MediaPlayerVoice;->e()Lteam/opay/business/tts/internal/VolumeManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lteam/opay/business/tts/internal/VolumeManager;->a()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->d:Lteam/opay/business/tts/internal/TtsVolume;

    .line 20
    .line 21
    invoke-virtual {v1}, Lteam/opay/business/tts/internal/TtsVolume;->a()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lteam/opay/business/tts/voice/MediaPlayerVoice;->e()Lteam/opay/business/tts/internal/VolumeManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->d:Lteam/opay/business/tts/internal/TtsVolume;

    .line 32
    .line 33
    invoke-virtual {v1}, Lteam/opay/business/tts/internal/TtsVolume;->b()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Lteam/opay/business/tts/internal/VolumeManager;->c(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->g:Landroid/media/MediaPlayer;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p0}, Lteam/opay/business/tts/voice/MediaPlayerVoice;->d()V

    .line 51
    .line 52
    .line 53
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_2

    .line 60
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/4 v1, 0x0

    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    sget-object v2, Llk8;->c:Llk8;

    .line 79
    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v4, "tts -> release error: "

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const/4 v3, 0x2

    .line 98
    invoke-static {v2, v0, v1, v3, v1}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_3
    iput-object v1, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->g:Landroid/media/MediaPlayer;

    .line 102
    .line 103
    return-void
.end method

.method public final i(Landroid/media/AudioAttributes;)Z
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {v3}, Lu49;->a(I)Landroid/media/AudioFocusRequest$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lv49;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Lc59;

    .line 19
    .line 20
    invoke-direct {v0}, Lc59;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Lw49;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lx49;->a(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->e:Landroid/media/AudioFocusRequest;

    .line 32
    .line 33
    iget-object v0, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->b:Landroid/media/AudioManager;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1}, Ly49;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-ne p1, v4, :cond_1

    .line 43
    .line 44
    :goto_0
    const/4 v2, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-object p1, p0, Lteam/opay/business/tts/voice/MediaPlayerVoice;->b:Landroid/media/AudioManager;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    const/4 v1, 0x3

    .line 50
    invoke-virtual {p1, v0, v1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-ne p1, v4, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    :goto_1
    return v2
.end method
