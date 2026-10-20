.class public final Lteam/opay/business/push/core/biz/PushDispatcher;
.super Ljava/lang/Object;
.source "PushDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/push/core/biz/PushDispatcher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 )2\u00020\u0001:\u0001*B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\'\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001d\u0010\u001d\u001a\u0004\u0018\u00010\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0015\u001a\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\"\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u0015\u001a\u0004\u0008 \u0010!R)\u0010(\u001a\u0010\u0012\u000c\u0012\n $*\u0004\u0018\u00010\u00040\u00040#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u0015\u001a\u0004\u0008&\u0010\'\u00a8\u0006+"
    }
    d2 = {
        "Lteam/opay/business/push/core/biz/PushDispatcher;",
        "",
        "<init>",
        "()V",
        "",
        "pushText",
        "pushSource",
        "filterType",
        "",
        "l",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Lteam/opay/business/push/core/api/PushMessage;",
        "message",
        "k",
        "(Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;Ljava/lang/String;)V",
        "receiveId",
        "msgId",
        "t",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/content/Context;",
        "a",
        "Lid8;",
        "o",
        "()Landroid/content/Context;",
        "appContext",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "b",
        "q",
        "()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
        "Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "c",
        "r",
        "()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "ioScope",
        "Lteam/opay/core/common/android/collection/FixedLinkedHashSet;",
        "kotlin.jvm.PlatformType",
        "d",
        "p",
        "()Lteam/opay/core/common/android/collection/FixedLinkedHashSet;",
        "fixedMessageSet",
        "e",
        "Companion",
        "business-push-core_release"
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
.field public static final e:Lteam/opay/business/push/core/biz/PushDispatcher$Companion;
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
    new-instance v0, Lteam/opay/business/push/core/biz/PushDispatcher$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/business/push/core/biz/PushDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/business/push/core/biz/PushDispatcher;->e:Lteam/opay/business/push/core/biz/PushDispatcher$Companion;

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
    new-instance v0, Ly4c;

    .line 5
    .line 6
    invoke-direct {v0}, Ly4c;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/business/push/core/biz/PushDispatcher;->a:Lid8;

    .line 14
    .line 15
    new-instance v0, La5c;

    .line 16
    .line 17
    invoke-direct {v0}, La5c;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lteam/opay/business/push/core/biz/PushDispatcher;->b:Lid8;

    .line 25
    .line 26
    new-instance v0, Lc5c;

    .line 27
    .line 28
    invoke-direct {v0}, Lc5c;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lteam/opay/business/push/core/biz/PushDispatcher;->c:Lid8;

    .line 36
    .line 37
    new-instance v0, Le5c;

    .line 38
    .line 39
    invoke-direct {v0}, Le5c;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lteam/opay/business/push/core/biz/PushDispatcher;->d:Lid8;

    .line 47
    .line 48
    return-void
.end method

.method public static synthetic a()Lteam/opay/core/common/android/collection/FixedLinkedHashSet;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/push/core/biz/PushDispatcher;->m()Lteam/opay/core/common/android/collection/FixedLinkedHashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/push/core/biz/PushDispatcher;->n()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/push/core/biz/PushDispatcher;->s()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/push/core/biz/PushDispatcher;->j()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic e(Lteam/opay/business/push/core/biz/PushDispatcher;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/business/push/core/biz/PushDispatcher;->k(Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lteam/opay/business/push/core/biz/PushDispatcher;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/push/core/biz/PushDispatcher;->o()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lteam/opay/business/push/core/biz/PushDispatcher;)Lteam/opay/core/common/android/collection/FixedLinkedHashSet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/push/core/biz/PushDispatcher;->p()Lteam/opay/core/common/android/collection/FixedLinkedHashSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lteam/opay/business/push/core/biz/PushDispatcher;)Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/push/core/biz/PushDispatcher;->q()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i(Lteam/opay/business/push/core/biz/PushDispatcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/push/core/biz/PushDispatcher;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final j()Landroid/content/Context;
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

.method public static final m()Lteam/opay/core/common/android/collection/FixedLinkedHashSet;
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/core/common/android/collection/FixedLinkedHashSet;

    .line 2
    .line 3
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 4
    .line 5
    sget-object v2, Lr6c;->d:Lr6c;

    .line 6
    .line 7
    invoke-virtual {v2}, Lr6c;->n()Ljava/util/Set;

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

.method public static final n()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
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

.method public static final s()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
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
.method public final k(Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/business/push/core/biz/IMessageFilter;->Companion:Lteam/opay/business/push/core/biz/IMessageFilter$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/business/push/core/biz/IMessageFilter$a;->b()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lteam/opay/business/push/core/biz/IMessageFilter;

    .line 22
    .line 23
    invoke-interface {v1}, Lteam/opay/business/push/core/biz/IMessageFilter;->matchType()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lteam/opay/business/push/core/biz/PushDispatcher;->o()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v1, v2, p1, p2}, Lteam/opay/business/push/core/biz/IMessageFilter;->filter(Landroid/content/Context;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object p2, Lp5c;->a:Lp5c;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lp5c;->e(Lteam/opay/business/push/core/api/PushMessage;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
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
    sget-object v0, Lik8;->c:Lik8;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "push -> source = "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", pushText = "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v3, 0x2

    .line 45
    invoke-static {v0, v1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->p(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/business/push/core/biz/PushDispatcher;->r()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    new-instance v0, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;

    .line 53
    .line 54
    const/4 v10, 0x0

    .line 55
    move-object v5, v0

    .line 56
    move-object v6, p1

    .line 57
    move-object v7, p0

    .line 58
    move-object v8, p2

    .line 59
    move-object v9, p3

    .line 60
    invoke-direct/range {v5 .. v10}, Lteam/opay/business/push/core/biz/PushDispatcher$dispatchMessage$1;-><init>(Ljava/lang/String;Lteam/opay/business/push/core/biz/PushDispatcher;Ljava/lang/String;Ljava/lang/String;Ljr2;)V

    .line 61
    .line 62
    .line 63
    const/4 v8, 0x3

    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    move-object v7, v0

    .line 68
    invoke-static/range {v4 .. v9}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final o()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/push/core/biz/PushDispatcher;->a:Lid8;

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

.method public final p()Lteam/opay/core/common/android/collection/FixedLinkedHashSet;
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
    iget-object v0, p0, Lteam/opay/business/push/core/biz/PushDispatcher;->d:Lid8;

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

.method public final q()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/push/core/biz/PushDispatcher;->b:Lid8;

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

.method public final r()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/push/core/biz/PushDispatcher;->c:Lid8;

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

.method public final t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lr6c;->d:Lr6c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/business/push/core/IPushStorage;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "7"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lteam/opay/business/push/core/api/ReceiveRequest;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Lteam/opay/business/push/core/api/ReceiveRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/business/push/core/biz/PushDispatcher;->r()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v4, Lteam/opay/business/push/core/biz/PushDispatcher$receiveMessage$1;

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-direct {v4, v0, p1}, Lteam/opay/business/push/core/biz/PushDispatcher$receiveMessage$1;-><init>(Lteam/opay/business/push/core/api/ReceiveRequest;Ljr2;)V

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x3

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
