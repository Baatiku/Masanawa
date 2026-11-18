.class final Lteam/opay/business/tts/TtsPlayer$1$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TTSPlayer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/tts/TtsPlayer$1$1;->c(Lteam/opay/business/tts/SoundMaterial;Ljr2;)Ljava/lang/Object;
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
    c = "team.opay.business.tts.TtsPlayer$1$1$1$1"
    f = "TTSPlayer.kt"
    l = {
        0x2b,
        0x2c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $material:Lteam/opay/business/tts/SoundMaterial;

.field label:I

.field final synthetic this$0:Lteam/opay/business/tts/TtsPlayer;


# direct methods
.method public constructor <init>(Lteam/opay/business/tts/SoundMaterial;Lteam/opay/business/tts/TtsPlayer;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/tts/SoundMaterial;",
            "Lteam/opay/business/tts/TtsPlayer;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/tts/TtsPlayer$1$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;->$material:Lteam/opay/business/tts/SoundMaterial;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;->this$0:Lteam/opay/business/tts/TtsPlayer;

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
    new-instance p1, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;->$material:Lteam/opay/business/tts/SoundMaterial;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;->this$0:Lteam/opay/business/tts/TtsPlayer;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;-><init>(Lteam/opay/business/tts/SoundMaterial;Lteam/opay/business/tts/TtsPlayer;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;->$material:Lteam/opay/business/tts/SoundMaterial;

    .line 32
    .line 33
    instance-of v1, p1, Lteam/opay/business/tts/SoundMaterial$Text;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    iget-object v1, p0, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;->this$0:Lteam/opay/business/tts/TtsPlayer;

    .line 38
    .line 39
    check-cast p1, Lteam/opay/business/tts/SoundMaterial$Text;

    .line 40
    .line 41
    invoke-virtual {p1}, Lteam/opay/business/tts/SoundMaterial$Text;->a()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput v3, p0, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;->label:I

    .line 46
    .line 47
    invoke-static {v1, p1, p0}, Lteam/opay/business/tts/TtsPlayer;->i(Lteam/opay/business/tts/TtsPlayer;Ljava/lang/String;Ljr2;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_5

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_3
    instance-of v1, p1, Lteam/opay/business/tts/SoundMaterial$Voice;

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    iget-object v1, p0, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;->this$0:Lteam/opay/business/tts/TtsPlayer;

    .line 59
    .line 60
    check-cast p1, Lteam/opay/business/tts/SoundMaterial$Voice;

    .line 61
    .line 62
    invoke-virtual {p1}, Lteam/opay/business/tts/SoundMaterial$Voice;->a()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iput v2, p0, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;->label:I

    .line 67
    .line 68
    invoke-static {v1, p1, p0}, Lteam/opay/business/tts/TtsPlayer;->j(Lteam/opay/business/tts/TtsPlayer;ILjr2;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-ne p1, v0, :cond_5

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_4
    instance-of v0, p1, Lteam/opay/business/tts/SoundMaterial$Sound;

    .line 76
    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    iget-object v0, p0, Lteam/opay/business/tts/TtsPlayer$1$1$1$1;->this$0:Lteam/opay/business/tts/TtsPlayer;

    .line 80
    .line 81
    check-cast p1, Lteam/opay/business/tts/SoundMaterial$Sound;

    .line 82
    .line 83
    invoke-virtual {p1}, Lteam/opay/business/tts/SoundMaterial$Sound;->a()Lteam/opay/business/tts/SoundType;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v0, p1}, Lteam/opay/business/tts/TtsPlayer;->r(Lteam/opay/business/tts/SoundType;)V

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p1

    .line 93
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 94
    .line 95
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 96
    .line 97
    .line 98
    throw p1
.end method
