.class public final Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;
.super Ljava/lang/Object;
.source "PushDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 ,2\u00020\u0001:\u0001-B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J%\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\'\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\'\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0013\u0010\u0015\u001a\u00020\u0014*\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001b\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u001d\u0010 \u001a\u0004\u0018\u00010\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0018\u001a\u0004\u0008\u001e\u0010\u001fR\u001b\u0010%\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0018\u001a\u0004\u0008#\u0010$R)\u0010+\u001a\u0010\u0012\u000c\u0012\n \'*\u0004\u0018\u00010\u00040\u00040&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u0018\u001a\u0004\u0008)\u0010*\u00a8\u0006."
    }
    d2 = {
        "Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;",
        "",
        "<init>",
        "()V",
        "",
        "pushText",
        "pushSource",
        "filterType",
        "",
        "q",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;",
        "message",
        "p",
        "(Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/content/Context;",
        "context",
        "E",
        "(Landroid/content/Context;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;)V",
        "C",
        "",
        "z",
        "(Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;)Z",
        "a",
        "Lid8;",
        "u",
        "()Landroid/content/Context;",
        "appContext",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "b",
        "w",
        "()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
        "Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "c",
        "x",
        "()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "ioScope",
        "Lteam/opay/core/common/android/collection/FixedLinkedHashSet;",
        "kotlin.jvm.PlatformType",
        "d",
        "v",
        "()Lteam/opay/core/common/android/collection/FixedLinkedHashSet;",
        "fixedMessageSet",
        "e",
        "Companion",
        "opay-push_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final e:Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->e:Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb5c;

    .line 5
    .line 6
    invoke-direct {v0}, Lb5c;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->a:Lid8;

    .line 14
    .line 15
    new-instance v0, Ld5c;

    .line 16
    .line 17
    invoke-direct {v0}, Ld5c;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->b:Lid8;

    .line 25
    .line 26
    new-instance v0, Lf5c;

    .line 27
    .line 28
    invoke-direct {v0}, Lf5c;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->c:Lid8;

    .line 36
    .line 37
    new-instance v0, Lg5c;

    .line 38
    .line 39
    invoke-direct {v0}, Lg5c;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->d:Lid8;

    .line 47
    .line 48
    return-void
.end method

.method public static final A(JI)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "TTS check, diffTime="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, "ms, ttsExpiredInterval="

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, "s"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static final B(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "TTS expired check result: "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static final D(Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getVoiceSound()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getVoicePlay()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "push -> tts, voiceSound ="

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", voicePlay = "

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static final F()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Send notification, SDK_INT="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static final G(Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Notification permission check, hasPermissions="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

.method public static synthetic a()Lteam/opay/core/common/android/collection/FixedLinkedHashSet;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->s()Lteam/opay/core/common/android/collection/FixedLinkedHashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->D(Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->G(Z)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->F()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->B(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(JI)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->A(JI)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->y()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic i()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->t()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic j()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->o()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic k(Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->p(Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->u()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;)Lteam/opay/core/common/android/collection/FixedLinkedHashSet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->v()Lteam/opay/core/common/android/collection/FixedLinkedHashSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;)Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->w()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final o()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static final r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "push -> source = "

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
    const-string p0, ", pushText = "

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static final s()Lteam/opay/core/common/android/collection/FixedLinkedHashSet;
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/core/common/android/collection/FixedLinkedHashSet;

    .line 2
    .line 3
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 4
    .line 5
    sget-object v2, Lq6c;->b:Lq6c;

    .line 6
    .line 7
    invoke-virtual {v2}, Lq6c;->e()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x40

    .line 15
    .line 16
    invoke-direct {v0, v2, v1}, Lteam/opay/core/common/android/collection/FixedLinkedHashSet;-><init>(ILjava/util/Set;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static final t()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 10
    .line 11
    return-object v0
.end method

.method public static final y()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, v0}, Lteam/opay/kotlin/coroutine/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final C(Landroid/content/Context;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Ll5c;->a:Ll5c;

    .line 2
    .line 3
    new-instance v1, Lh5c;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Lh5c;-><init>(Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ll5c;->d(Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getVoicePlay()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p0, p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->z(Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v2, Lfre;->a:Lfre;

    .line 32
    .line 33
    const-string v4, "wss_message_voice_playing_expired"

    .line 34
    .line 35
    new-array v7, v1, [Lkotlin/Pair;

    .line 36
    .line 37
    move-object v3, p1

    .line 38
    move-object v5, p2

    .line 39
    move-object v6, p3

    .line 40
    invoke-virtual/range {v2 .. v7}, Lfre;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-virtual {p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getVoiceSound()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v2, "1"

    .line 49
    .line 50
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    sget-object v0, Lteam/opay/business/tts/TtsPlayer;->f:Lteam/opay/business/tts/TtsPlayer$Companion;

    .line 57
    .line 58
    invoke-virtual {v0}, Lteam/opay/business/tts/TtsPlayer$Companion;->a()Lteam/opay/business/tts/TtsPlayer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v2, Lteam/opay/business/tts/SoundType;->RECEIPT:Lteam/opay/business/tts/SoundType;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Lteam/opay/business/tts/TtsPlayer;->r(Lteam/opay/business/tts/SoundType;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const-string v2, "2"

    .line 69
    .line 70
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    sget-object v0, Lteam/opay/business/tts/TtsPlayer;->f:Lteam/opay/business/tts/TtsPlayer$Companion;

    .line 77
    .line 78
    invoke-virtual {v0}, Lteam/opay/business/tts/TtsPlayer$Companion;->a()Lteam/opay/business/tts/TtsPlayer;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v2, Lteam/opay/business/tts/SoundType;->LARGE_CONFIRM:Lteam/opay/business/tts/SoundType;

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Lteam/opay/business/tts/TtsPlayer;->r(Lteam/opay/business/tts/SoundType;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    sget-object v0, Lteam/opay/business/tts/TtsPlayer;->f:Lteam/opay/business/tts/TtsPlayer$Companion;

    .line 89
    .line 90
    invoke-virtual {v0}, Lteam/opay/business/tts/TtsPlayer$Companion;->a()Lteam/opay/business/tts/TtsPlayer;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getVoicePlay()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v0, v2}, Lteam/opay/business/tts/TtsPlayer;->q(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    sget-object v3, Lfre;->a:Lfre;

    .line 102
    .line 103
    const-string v5, "wss_message_voice_playing"

    .line 104
    .line 105
    new-array v8, v1, [Lkotlin/Pair;

    .line 106
    .line 107
    move-object v4, p1

    .line 108
    move-object v6, p2

    .line 109
    move-object v7, p3

    .line 110
    invoke-virtual/range {v3 .. v8}, Lfre;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_1
    return-void
.end method

.method public final E(Landroid/content/Context;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getDisplayType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MESSAGE"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Ll5c;->a:Ll5c;

    .line 14
    .line 15
    new-instance v1, Lx4c;

    .line 16
    .line 17
    invoke-direct {v1}, Lx4c;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ll5c;->a(Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v2, 0x21

    .line 26
    .line 27
    if-lt v1, v2, :cond_0

    .line 28
    .line 29
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 30
    .line 31
    filled-new-array {v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {p1, v1}, Lynb;->b(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    new-instance v2, Lz4c;

    .line 40
    .line 41
    invoke-direct {v2, v1}, Lz4c;-><init>(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ll5c;->a(Lkotlin/jvm/functions/Function0;)V

    .line 45
    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    sget-object v0, Ln6c;->e:Ln6c;

    .line 50
    .line 51
    invoke-virtual {v0, p1, p2, p3}, Ln6c;->E(Landroid/content/Context;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget-object v0, Ln6c;->e:Ln6c;

    .line 56
    .line 57
    invoke-virtual {v0, p1, p2, p3}, Ln6c;->E(Landroid/content/Context;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method public final p(Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->u()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p0, p3, p1, p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->E(Landroid/content/Context;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->u()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-virtual {p0, p3, p1, p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->C(Landroid/content/Context;Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "pushText"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pushSource"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "filterType"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Ll5c;->a:Ll5c;

    .line 17
    .line 18
    new-instance v1, Lk5c;

    .line 19
    .line 20
    invoke-direct {v1, p2, p1}, Lk5c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ll5c;->d(Lkotlin/jvm/functions/Function0;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->x()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    move-object v3, v0

    .line 34
    move-object v4, p1

    .line 35
    move-object v5, p0

    .line 36
    move-object v6, p2

    .line 37
    move-object v7, p3

    .line 38
    invoke-direct/range {v3 .. v8}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher$dispatchMessage$2;-><init>(Ljava/lang/String;Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;Ljava/lang/String;Ljava/lang/String;Ljr2;)V

    .line 39
    .line 40
    .line 41
    const/4 v6, 0x3

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    move-object v5, v0

    .line 46
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final u()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->a:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    return-object v0
.end method

.method public final v()Lteam/opay/core/common/android/collection/FixedLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/common/android/collection/FixedLinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/common/android/collection/FixedLinkedHashSet;

    .line 8
    .line 9
    return-object v0
.end method

.method public final w()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 8
    .line 9
    return-object v0
.end method

.method public final x()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 8
    .line 9
    return-object v0
.end method

.method public final z(Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;)Z
    .locals 7

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getTransTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v5, v1, v3

    .line 13
    .line 14
    if-lez v5, :cond_1

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {p1}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getTransTime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    sub-long/2addr v1, v3

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    sget-object p1, Ll5c;->a:Ll5c;

    .line 30
    .line 31
    new-instance v3, Li5c;

    .line 32
    .line 33
    const/16 v4, 0x1e

    .line 34
    .line 35
    invoke-direct {v3, v1, v2, v4}, Li5c;-><init>(JI)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v3}, Ll5c;->a(Lkotlin/jvm/functions/Function0;)V

    .line 39
    .line 40
    .line 41
    int-to-long v3, v4

    .line 42
    const-wide/16 v5, 0x3e8

    .line 43
    .line 44
    mul-long v3, v3, v5

    .line 45
    .line 46
    cmp-long p1, v1, v3

    .line 47
    .line 48
    if-lez p1, :cond_0

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 p1, 0x0

    .line 53
    :goto_0
    iput-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 54
    .line 55
    :cond_1
    sget-object p1, Ll5c;->a:Ll5c;

    .line 56
    .line 57
    new-instance v1, Lj5c;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Lj5c;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Ll5c;->a(Lkotlin/jvm/functions/Function0;)V

    .line 63
    .line 64
    .line 65
    iget-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 66
    .line 67
    return p1
.end method
