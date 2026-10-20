.class public final Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargePushMsgFilter;
.super Ljava/lang/Object;
.source "LargePushMsgFilter.kt"

# interfaces
.implements Lteam/opay/business/push/core/biz/IMessageFilter;


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/business/push/core/biz/IMessageFilter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargePushMsgFilter;",
        "Lteam/opay/business/push/core/biz/IMessageFilter;",
        "<init>",
        "()V",
        "filter",
        "",
        "context",
        "Landroid/content/Context;",
        "message",
        "Lteam/opay/business/push/core/api/PushMessage;",
        "pushSource",
        "",
        "sme-va_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public filter(Landroid/content/Context;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/push/core/api/PushMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "context"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v1, "message"

    .line 8
    .line 9
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "pushSource"

    .line 13
    .line 14
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object p3, Loaf;->a:Loaf;

    .line 18
    .line 19
    invoke-virtual {p3}, Loaf;->x()Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-eqz p3, :cond_5

    .line 24
    .line 25
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->getMessageType()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const-string v1, "ReceiveMoneyAccount"

    .line 30
    .line 31
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_5

    .line 36
    .line 37
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->getData()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz p3, :cond_0

    .line 43
    .line 44
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object p3, v1

    .line 50
    :goto_0
    if-eqz p3, :cond_5

    .line 51
    .line 52
    invoke-static {p3}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    if-eqz p3, :cond_1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->isInvalidMessage()Z

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    if-eqz p3, :cond_2

    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->getActionUrl()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    if-eqz p3, :cond_5

    .line 71
    .line 72
    invoke-static {p3}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->getData()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    move-object v2, v1

    .line 91
    :goto_1
    const-string v3, "key_message_info"

    .line 92
    .line 93
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->getNotificationId()I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    const-string v3, "key_notification_id"

    .line 106
    .line 107
    invoke-static {v3, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    new-array v3, v0, [Lkotlin/Pair;

    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    aput-object v2, v3, v4

    .line 115
    .line 116
    const/4 v2, 0x1

    .line 117
    aput-object p2, v3, v2

    .line 118
    .line 119
    invoke-static {p3, v3}, Lvd;->b(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    sget-object p2, Lbl8;->c:Lbl8;

    .line 124
    .line 125
    new-instance p3, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v2, "--------LargePushMsgFilter actionUrl="

    .line 131
    .line 132
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-static {p2, p3, v1, v0, v1}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    sget-object v4, Lud;->a:Lud;

    .line 146
    .line 147
    const/4 v8, 0x4

    .line 148
    const/4 v9, 0x0

    .line 149
    const/4 v7, 0x0

    .line 150
    move-object v5, p1

    .line 151
    invoke-static/range {v4 .. v9}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_5
    :goto_2
    return-void
.end method

.method public matchType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lteam/opay/business/push/core/biz/IMessageFilter$b;->a(Lteam/opay/business/push/core/biz/IMessageFilter;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
