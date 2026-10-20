.class public final Lteam/opay/pay/fcm/dispatcher/opb/OpbTrackingHandler;
.super Ljava/lang/Object;
.source "OpbTrackingHandler.kt"

# interfaces
.implements Lba7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/fcm/dispatcher/opb/OpbTrackingHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0001\u0012B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\'\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/pay/fcm/dispatcher/opb/OpbTrackingHandler;",
        "Lba7;",
        "<init>",
        "()V",
        "",
        "getType",
        "()Ljava/lang/String;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "",
        "b",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "a",
        "eventName",
        "e",
        "(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V",
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
.field public static final a:Lteam/opay/pay/fcm/dispatcher/opb/OpbTrackingHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/fcm/dispatcher/opb/OpbTrackingHandler$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/fcm/dispatcher/opb/OpbTrackingHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/fcm/dispatcher/opb/OpbTrackingHandler;->a:Lteam/opay/pay/fcm/dispatcher/opb/OpbTrackingHandler$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/fcm/dispatcher/opb/OpbTrackingHandler;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Click notification jump scheme: "

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
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
    const-string v0, "intent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    const/16 v2, 0x21

    .line 15
    .line 16
    const-string v3, "WebSocketMessage"

    .line 17
    .line 18
    if-lt v1, v2, :cond_0

    .line 19
    .line 20
    :try_start_1
    const-class v1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;

    .line 21
    .line 22
    invoke-static {p2, v3, v1}, Lsqb;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    nop

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    instance-of v1, p2, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    move-object p2, v0

    .line 38
    :cond_1
    check-cast p2, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :goto_0
    move-object p2, v0

    .line 42
    :goto_1
    check-cast p2, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;

    .line 43
    .line 44
    if-eqz p2, :cond_5

    .line 45
    .line 46
    invoke-virtual {p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->isInvalidMessage()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    invoke-virtual {p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getActionUrl()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getActionUrl()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getData()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-eqz p2, :cond_4

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_4
    const-string p2, "key_message_info"

    .line 81
    .line 82
    invoke-static {p2, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const/4 v0, 0x1

    .line 87
    new-array v0, v0, [Lkotlin/Pair;

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    aput-object p2, v0, v2

    .line 91
    .line 92
    invoke-static {v1, v0}, Lvd;->b(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    sget-object v0, Ll5c;->a:Ll5c;

    .line 97
    .line 98
    new-instance v1, Lrva;

    .line 99
    .line 100
    invoke-direct {v1, p2}, Lrva;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ll5c;->d(Lkotlin/jvm/functions/Function0;)V

    .line 104
    .line 105
    .line 106
    sget-object v0, Ltd;->a:Ltd;

    .line 107
    .line 108
    invoke-virtual {v0, p2, p1}, Ltd;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    :cond_5
    :goto_2
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
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
    const-string v0, "intent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "wss_message_notification_click"

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0, p2}, Lteam/opay/pay/fcm/dispatcher/opb/OpbTrackingHandler;->e(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    const/16 v2, 0x21

    .line 5
    .line 6
    const-string v3, "WebSocketMessage"

    .line 7
    .line 8
    if-lt v1, v2, :cond_0

    .line 9
    .line 10
    :try_start_1
    const-class v1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;

    .line 11
    .line 12
    invoke-static {p3, v3, v1}, Lsqb;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    goto :goto_1

    .line 17
    :catch_0
    nop

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    instance-of v1, p3, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    move-object p3, v0

    .line 28
    :cond_1
    check-cast p3, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :goto_0
    move-object p3, v0

    .line 32
    :goto_1
    check-cast p3, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;

    .line 33
    .line 34
    if-eqz p3, :cond_7

    .line 35
    .line 36
    invoke-virtual {p3}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->isInvalidMessage()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    sget-object v1, Lfre;->a:Lfre;

    .line 44
    .line 45
    invoke-virtual {p3}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, ""

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    move-object v2, v3

    .line 54
    :cond_3
    const-string v4, "messageId"

    .line 55
    .line 56
    invoke-static {v4, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p3}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getMessageType()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-nez v4, :cond_4

    .line 65
    .line 66
    move-object v4, v3

    .line 67
    :cond_4
    const-string v5, "messageType"

    .line 68
    .line 69
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {p3}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getMessageStyle()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-nez v5, :cond_5

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    move-object v3, v5

    .line 81
    :goto_2
    const-string v5, "messageStyle"

    .line 82
    .line 83
    invoke-static {v5, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {p3}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->getData()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    if-eqz p3, :cond_6

    .line 92
    .line 93
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :cond_6
    const-string p3, "data"

    .line 98
    .line 99
    invoke-static {p3, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    const/4 v0, 0x4

    .line 104
    new-array v0, v0, [Lkotlin/Pair;

    .line 105
    .line 106
    const/4 v5, 0x0

    .line 107
    aput-object v2, v0, v5

    .line 108
    .line 109
    const/4 v2, 0x1

    .line 110
    aput-object v4, v0, v2

    .line 111
    .line 112
    const/4 v2, 0x2

    .line 113
    aput-object v3, v0, v2

    .line 114
    .line 115
    const/4 v2, 0x3

    .line 116
    aput-object p3, v0, v2

    .line 117
    .line 118
    invoke-virtual {v1, p1, p2, v0}, Lfre;->c(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 119
    .line 120
    .line 121
    :cond_7
    return-void
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "opb"

    .line 2
    .line 3
    return-object v0
.end method
