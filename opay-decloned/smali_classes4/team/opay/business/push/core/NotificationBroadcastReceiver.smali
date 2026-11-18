.class public final Lteam/opay/business/push/core/NotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationBroadcastReceiver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lteam/opay/business/push/core/NotificationBroadcastReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const-string v3, "context"

    .line 5
    .line 6
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    sget-object v3, Lik8;->c:Lik8;

    .line 10
    .line 11
    const-string v4, "-----NotificationBroadcastReceiver.onReceive"

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-static {v3, v4, v5, v2, v5}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    const-string v3, "WebSocketMessage"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    .line 21
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v6, 0x21

    .line 24
    .line 25
    if-lt v4, v6, :cond_0

    .line 26
    .line 27
    const-class v4, Lteam/opay/business/push/core/api/PushMessage;

    .line 28
    .line 29
    invoke-static {p2, v3, v4}, Lsqb;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    instance-of v3, p2, Lteam/opay/business/push/core/api/PushMessage;

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    move-object p2, v5

    .line 43
    :cond_1
    check-cast p2, Lteam/opay/business/push/core/api/PushMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-object p2, v5

    .line 47
    :goto_0
    :try_start_2
    check-cast p2, Lteam/opay/business/push/core/api/PushMessage;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_1
    move-exception p1

    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_2
    move-object p2, v5

    .line 54
    :goto_1
    if-eqz p2, :cond_b

    .line 55
    .line 56
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->isInvalidMessage()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    sget-object v3, Lzqe;->a:Lzqe;

    .line 64
    .line 65
    const-string v4, "wss_message_notification_click"

    .line 66
    .line 67
    const-string v6, "messageId"

    .line 68
    .line 69
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->getId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 73
    const-string v8, ""

    .line 74
    .line 75
    if-nez v7, :cond_4

    .line 76
    .line 77
    move-object v7, v8

    .line 78
    :cond_4
    :try_start_3
    invoke-static {v6, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const-string v7, "messageType"

    .line 83
    .line 84
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->getMessageType()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    if-nez v9, :cond_5

    .line 89
    .line 90
    move-object v9, v8

    .line 91
    :cond_5
    invoke-static {v7, v9}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    const-string v9, "messageStyle"

    .line 96
    .line 97
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->getMessageStyle()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    if-nez v10, :cond_6

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_6
    move-object v8, v10

    .line 105
    :goto_2
    invoke-static {v9, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    const-string v9, "data"

    .line 110
    .line 111
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->getData()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    if-eqz v10, :cond_7

    .line 116
    .line 117
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    goto :goto_3

    .line 122
    :cond_7
    move-object v10, v5

    .line 123
    :goto_3
    invoke-static {v9, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    const/4 v10, 0x4

    .line 128
    new-array v10, v10, [Lkotlin/Pair;

    .line 129
    .line 130
    aput-object v6, v10, v1

    .line 131
    .line 132
    aput-object v7, v10, v0

    .line 133
    .line 134
    aput-object v8, v10, v2

    .line 135
    .line 136
    const/4 v6, 0x3

    .line 137
    aput-object v9, v10, v6

    .line 138
    .line 139
    invoke-virtual {v3, p1, v4, v10}, Lzqe;->c(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 140
    .line 141
    .line 142
    sget-object v3, Lteam/opay/business/push/core/biz/IMessageClick;->Companion:Lteam/opay/business/push/core/biz/IMessageClick$a;

    .line 143
    .line 144
    invoke-virtual {v3}, Lteam/opay/business/push/core/biz/IMessageClick$a;->b()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_8

    .line 157
    .line 158
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, Lteam/opay/business/push/core/biz/IMessageClick;

    .line 163
    .line 164
    invoke-interface {v4, p1, p2}, Lteam/opay/business/push/core/biz/IMessageClick;->onClick(Landroid/content/Context;Lteam/opay/business/push/core/api/PushMessage;)V

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_8
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->getActionUrl()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    if-eqz v3, :cond_b

    .line 173
    .line 174
    invoke-static {v3}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_9

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_9
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->getActionUrl()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    const-string v4, "key_message_info"

    .line 186
    .line 187
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->getData()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    if-eqz v6, :cond_a

    .line 192
    .line 193
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    goto :goto_5

    .line 198
    :cond_a
    move-object v6, v5

    .line 199
    :goto_5
    invoke-static {v4, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    new-array v0, v0, [Lkotlin/Pair;

    .line 204
    .line 205
    aput-object v4, v0, v1

    .line 206
    .line 207
    invoke-static {v3, v0}, Lvd;->b(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    sget-object v0, Lik8;->c:Lik8;

    .line 212
    .line 213
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->getActionUrl()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v3, "-----click notification jump scheme: "

    .line 223
    .line 224
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v3, " , action="

    .line 231
    .line 232
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-static {v0, p2, v5, v2, v5}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    sget-object v6, Lud;->a:Lud;

    .line 246
    .line 247
    const/4 v10, 0x4

    .line 248
    const/4 v11, 0x0

    .line 249
    const/4 v9, 0x0

    .line 250
    move-object v7, p1

    .line 251
    invoke-static/range {v6 .. v11}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 252
    .line 253
    .line 254
    goto :goto_7

    .line 255
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 256
    .line 257
    .line 258
    :cond_b
    :goto_7
    return-void
.end method
