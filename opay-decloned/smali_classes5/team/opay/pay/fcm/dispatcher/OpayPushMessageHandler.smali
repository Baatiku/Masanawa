.class public final Lteam/opay/pay/fcm/dispatcher/OpayPushMessageHandler;
.super Ljava/lang/Object;
.source "OpayPushMessageHandler.kt"

# interfaces
.implements Lpa7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/fcm/dispatcher/OpayPushMessageHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0017\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/pay/fcm/dispatcher/OpayPushMessageHandler;",
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
.field public static final a:Lteam/opay/pay/fcm/dispatcher/OpayPushMessageHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/fcm/dispatcher/OpayPushMessageHandler$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/fcm/dispatcher/OpayPushMessageHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/fcm/dispatcher/OpayPushMessageHandler;->a:Lteam/opay/pay/fcm/dispatcher/OpayPushMessageHandler$Companion;

    .line 8
    .line 9
    const-string v0, "CUserPushMessageHandler"

    .line 10
    .line 11
    sput-object v0, Lteam/opay/pay/fcm/dispatcher/OpayPushMessageHandler;->b:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "virtualParam"

    .line 14
    .line 15
    sput-object v0, Lteam/opay/pay/fcm/dispatcher/OpayPushMessageHandler;->c:Ljava/lang/String;

    .line 16
    .line 17
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

.method public static synthetic c(Lteam/opay/pay/fcm/model/PushRemoteMessage;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/fcm/dispatcher/OpayPushMessageHandler;->h(Lteam/opay/pay/fcm/model/PushRemoteMessage;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/pay/fcm/model/PushRemoteMessage;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/fcm/dispatcher/OpayPushMessageHandler;->f(Lteam/opay/pay/fcm/model/PushRemoteMessage;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/pay/fcm/dispatcher/customer/PushCustomerMessage;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/fcm/dispatcher/OpayPushMessageHandler;->g(Lteam/opay/pay/fcm/dispatcher/customer/PushCustomerMessage;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final f(Lteam/opay/pay/fcm/model/PushRemoteMessage;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Handling C-user message: "

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

.method public static final g(Lteam/opay/pay/fcm/dispatcher/customer/PushCustomerMessage;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Processing message - "

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

.method public static final h(Lteam/opay/pay/fcm/model/PushRemoteMessage;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/fcm/model/PushRemoteMessage;->getType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/fcm/model/PushRemoteMessage;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    invoke-static {p0, v4, v5, v2, v3}, Lteam/opay/pay/fcm/model/PushRemoteMessage;->isExpired$default(Lteam/opay/pay/fcm/model/PushRemoteMessage;JILjava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/fcm/model/PushRemoteMessage;->getElapsedTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v5, "Processing message - type="

    .line 27
    .line 28
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ", action="

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, ", expired="

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", elapsedTime="

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, "ms"

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lteam/opay/pay/fcm/model/PushRemoteMessage;)V
    .locals 5
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
    const-string v0, "message"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Ll5c;->a:Ll5c;

    .line 12
    .line 13
    new-instance v1, Lpra;

    .line 14
    .line 15
    invoke-direct {v1, p2}, Lpra;-><init>(Lteam/opay/pay/fcm/model/PushRemoteMessage;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ll5c;->a(Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    invoke-static {p2, v3, v4, v1, v2}, Lteam/opay/pay/fcm/model/PushRemoteMessage;->isExpired$default(Lteam/opay/pay/fcm/model/PushRemoteMessage;JILjava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p2}, Lteam/opay/pay/fcm/model/PushRemoteMessage;->getElapsedTime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    new-instance p1, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v0, "messageId"

    .line 45
    .line 46
    invoke-virtual {p2}, Lteam/opay/pay/fcm/model/PushRemoteMessage;->getMessageId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    const-string v0, "expire_time"

    .line 58
    .line 59
    invoke-static {v0, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lteam/opay/pay/fcm/model/PushRemoteMessage;->getData()Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    sget-object v0, Lteam/opay/pay/fcm/dispatcher/OpayPushMessageHandler;->c:Ljava/lang/String;

    .line 71
    .line 72
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    const-string v0, "virtualParam"

    .line 77
    .line 78
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    sget-object p2, Lnre;->a:Lnre;

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    new-array v0, v0, [Lkotlin/Pair;

    .line 89
    .line 90
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, [Lkotlin/Pair;

    .line 95
    .line 96
    array-length v0, p1

    .line 97
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, [Lkotlin/Pair;

    .line 102
    .line 103
    const-string v0, "fcm_message_expire_page_show"

    .line 104
    .line 105
    invoke-virtual {p2, v0, p1}, Lnre;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/fcm/model/PushRemoteMessage;->getData()Ljava/util/Map;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v1}, Ljt6;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v2, "toJson(...)"

    .line 118
    .line 119
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-class v2, Lteam/opay/pay/fcm/dispatcher/customer/PushCustomerMessage;

    .line 123
    .line 124
    invoke-static {v1, v2}, Ljt6;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lteam/opay/pay/fcm/dispatcher/customer/PushCustomerMessage;

    .line 129
    .line 130
    new-instance v2, Lqra;

    .line 131
    .line 132
    invoke-direct {v2, v1}, Lqra;-><init>(Lteam/opay/pay/fcm/dispatcher/customer/PushCustomerMessage;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ll5c;->a(Lkotlin/jvm/functions/Function0;)V

    .line 136
    .line 137
    .line 138
    new-instance v2, Lrra;

    .line 139
    .line 140
    invoke-direct {v2, p2}, Lrra;-><init>(Lteam/opay/pay/fcm/model/PushRemoteMessage;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v2}, Ll5c;->a(Lkotlin/jvm/functions/Function0;)V

    .line 144
    .line 145
    .line 146
    sget-object p2, Ltz9;->a:Ltz9;

    .line 147
    .line 148
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, p1, v1}, Ltz9;->h(Landroid/content/Context;Lteam/opay/pay/fcm/dispatcher/customer/PushCustomerMessage;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "opay"

    .line 2
    .line 3
    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/fcm/dispatcher/OpayPushMessageHandler;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
