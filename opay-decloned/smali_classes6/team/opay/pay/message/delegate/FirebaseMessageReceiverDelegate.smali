.class public final Lteam/opay/pay/message/delegate/FirebaseMessageReceiverDelegate;
.super Ljava/lang/Object;
.source "FirebaseMessageReceiverDelegate.kt"

# interfaces
.implements Lteam/opay/swarmfoundation/message/IMessageReceiverDelegate;


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/message/IMessageReceiverDelegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001d\u0010\u0013\u001a\u0004\u0018\u00010\u000e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/message/delegate/FirebaseMessageReceiverDelegate;",
        "Lteam/opay/swarmfoundation/message/IMessageReceiverDelegate;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "",
        "msgData",
        "",
        "receivedMessage",
        "(Landroid/content/Context;Ljava/util/Map;)V",
        "matchType",
        "()Ljava/lang/String;",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "delegate$delegate",
        "Lid8;",
        "getDelegate",
        "()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "delegate",
        "message_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final delegate$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lteam/opay/pay/message/delegate/FirebaseMessageReceiverDelegate$delegate$2;->INSTANCE:Lteam/opay/pay/message/delegate/FirebaseMessageReceiverDelegate$delegate$2;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lteam/opay/pay/message/delegate/FirebaseMessageReceiverDelegate;->delegate$delegate:Lid8;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/message/delegate/FirebaseMessageReceiverDelegate;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/message/delegate/FirebaseMessageReceiverDelegate;->receivedMessage$lambda-0(Lteam/opay/pay/message/delegate/FirebaseMessageReceiverDelegate;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final receivedMessage$lambda-0(Lteam/opay/pay/message/delegate/FirebaseMessageReceiverDelegate;Ljava/util/Map;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$msgData"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/message/delegate/FirebaseMessageReceiverDelegate;->getDelegate()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const-string v1, "messageId"

    .line 24
    .line 25
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "opay_expireTime"

    .line 37
    .line 38
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "expire_time"

    .line 43
    .line 44
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object v1, Lsz9;->a:Lsz9;

    .line 52
    .line 53
    const-string/jumbo v2, "virtualParam"

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Lsz9;->c(Ljava/lang/String;)[Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lkotlin/jvm/internal/SpreadBuilder;->c()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    new-array p1, p1, [Lkotlin/Pair;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, [Lkotlin/Pair;

    .line 80
    .line 81
    const-string v0, "fcm_message_expire_page_show"

    .line 82
    .line 83
    invoke-interface {p0, v0, p1}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public final getDelegate()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/delegate/FirebaseMessageReceiverDelegate;->delegate$delegate:Lid8;

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

.method public matchType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "opay"

    .line 2
    .line 3
    return-object v0
.end method

.method public receivedMessage(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "msgData"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "opay_isExpireTime"

    .line 12
    .line 13
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "true"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance p1, Lteam/opay/swarmfoundation/ScopeExecutors;

    .line 30
    .line 31
    invoke-direct {p1}, Lteam/opay/swarmfoundation/ScopeExecutors;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lteam/opay/swarmfoundation/ScopeExecutors;->a()Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Lz26;

    .line 39
    .line 40
    invoke-direct {v0, p0, p2}, Lz26;-><init>(Lteam/opay/pay/message/delegate/FirebaseMessageReceiverDelegate;Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    sget-object v0, Lsz9;->a:Lsz9;

    .line 48
    .line 49
    sget-object v1, Lteam/opay/pay/message/delegate/MessageSource;->FIREBASE:Lteam/opay/pay/message/delegate/MessageSource;

    .line 50
    .line 51
    invoke-virtual {v0, p1, p2, v1}, Lsz9;->e(Landroid/content/Context;Ljava/util/Map;Lteam/opay/pay/message/delegate/MessageSource;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
