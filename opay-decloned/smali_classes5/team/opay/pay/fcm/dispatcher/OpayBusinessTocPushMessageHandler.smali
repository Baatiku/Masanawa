.class public final Lteam/opay/pay/fcm/dispatcher/OpayBusinessTocPushMessageHandler;
.super Ljava/lang/Object;
.source "OpayBusinessTocPushMessageHandler.kt"

# interfaces
.implements Lpa7;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0017\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u0010\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u000fR\u001b\u0010\u0015\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/pay/fcm/dispatcher/OpayBusinessTocPushMessageHandler;",
        "Lpa7;",
        "<init>",
        "()V",
        "",
        "b",
        "()Ljava/lang/String;",
        "Landroid/content/Context;",
        "context",
        "Lteam/opay/pay/fcm/model/PushRemoteMessage;",
        "message",
        "",
        "a",
        "(Landroid/content/Context;Lteam/opay/pay/fcm/model/PushRemoteMessage;)V",
        "name",
        "Ljava/lang/String;",
        "TAG",
        "Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;",
        "Lid8;",
        "g",
        "()Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;",
        "dispatcher",
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


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
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
    const-string v0, "OpayBusinessTocPushMessageHandler"

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/pay/fcm/dispatcher/OpayBusinessTocPushMessageHandler;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lyqa;

    .line 9
    .line 10
    invoke-direct {v0}, Lyqa;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lteam/opay/pay/fcm/dispatcher/OpayBusinessTocPushMessageHandler;->b:Lid8;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic c()Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/fcm/dispatcher/OpayBusinessTocPushMessageHandler;->f()Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d(Lteam/opay/pay/fcm/model/PushRemoteMessage;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/fcm/dispatcher/OpayBusinessTocPushMessageHandler;->h(Lteam/opay/pay/fcm/model/PushRemoteMessage;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/fcm/dispatcher/OpayBusinessTocPushMessageHandler;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final f()Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final h(Lteam/opay/pay/fcm/model/PushRemoteMessage;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Handling message: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

.method public static final i(Ljava/lang/Throwable;)Ljava/lang/String;
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
    const-string v1, "Message format error! throwable: "

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
.method public a(Landroid/content/Context;Lteam/opay/pay/fcm/model/PushRemoteMessage;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/fcm/model/PushRemoteMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
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
    const-string p1, "message"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Ll5c;->a:Ll5c;

    .line 12
    .line 13
    new-instance v0, Lzqa;

    .line 14
    .line 15
    invoke-direct {v0, p2}, Lzqa;-><init>(Lteam/opay/pay/fcm/model/PushRemoteMessage;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ll5c;->a(Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 22
    .line 23
    invoke-virtual {p2}, Lteam/opay/pay/fcm/model/PushRemoteMessage;->getData()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Ljt6;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_0

    .line 52
    .line 53
    move-object p2, p1

    .line 54
    check-cast p2, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/pay/fcm/dispatcher/OpayBusinessTocPushMessageHandler;->g()Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "firebase"

    .line 64
    .line 65
    const-string v2, "biz"

    .line 66
    .line 67
    invoke-virtual {v0, p2, v1, v2}, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    sget-object p2, Ll5c;->a:Ll5c;

    .line 77
    .line 78
    new-instance v0, Lara;

    .line 79
    .line 80
    invoke-direct {v0, p1}, Lara;-><init>(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v0}, Ll5c;->c(Lkotlin/jvm/functions/Function0;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "opay-business-toc"

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/OpayBusinessTocPushMessageHandler;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/fcm/dispatcher/opb/PushDispatcher;

    .line 8
    .line 9
    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/OpayBusinessTocPushMessageHandler;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
