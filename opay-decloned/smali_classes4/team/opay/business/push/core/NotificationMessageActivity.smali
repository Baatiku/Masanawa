.class public final Lteam/opay/business/push/core/NotificationMessageActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NotificationMessageActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\r\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/business/push/core/NotificationMessageActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "u",
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
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lteam/opay/business/push/core/NotificationMessageActivity;->u(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/business/push/core/NotificationMessageActivity;->u(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final u(Landroid/content/Intent;)V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    :try_start_0
    const-string v4, "WebSocketMessage"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    .line 9
    :try_start_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v6, 0x21

    .line 12
    .line 13
    if-lt v5, v6, :cond_0

    .line 14
    .line 15
    const-class v5, Lteam/opay/business/push/core/api/PushMessage;

    .line 16
    .line 17
    invoke-static {p1, v4, v5}, Lsqb;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    instance-of v4, p1, Lteam/opay/business/push/core/api/PushMessage;

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    move-object p1, v3

    .line 31
    :cond_1
    check-cast p1, Lteam/opay/business/push/core/api/PushMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-object p1, v3

    .line 35
    :goto_0
    :try_start_2
    check-cast p1, Lteam/opay/business/push/core/api/PushMessage;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catch_1
    move-exception p1

    .line 39
    goto/16 :goto_7

    .line 40
    .line 41
    :cond_2
    move-object p1, v3

    .line 42
    :goto_1
    if-eqz p1, :cond_c

    .line 43
    .line 44
    invoke-virtual {p1}, Lteam/opay/business/push/core/api/PushMessage;->isInvalidMessage()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    sget-object v4, Lzqe;->a:Lzqe;

    .line 55
    .line 56
    const-string v5, "wss_message_notification_click"

    .line 57
    .line 58
    const-string v6, "messageId"

    .line 59
    .line 60
    invoke-virtual {p1}, Lteam/opay/business/push/core/api/PushMessage;->getId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 64
    const-string v8, ""

    .line 65
    .line 66
    if-nez v7, :cond_4

    .line 67
    .line 68
    move-object v7, v8

    .line 69
    :cond_4
    :try_start_3
    invoke-static {v6, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    const-string v7, "messageType"

    .line 74
    .line 75
    invoke-virtual {p1}, Lteam/opay/business/push/core/api/PushMessage;->getMessageType()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    if-nez v9, :cond_5

    .line 80
    .line 81
    move-object v9, v8

    .line 82
    :cond_5
    invoke-static {v7, v9}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    const-string v9, "messageStyle"

    .line 87
    .line 88
    invoke-virtual {p1}, Lteam/opay/business/push/core/api/PushMessage;->getMessageStyle()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    if-nez v10, :cond_6

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_6
    move-object v8, v10

    .line 96
    :goto_2
    invoke-static {v9, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    const-string v9, "data"

    .line 101
    .line 102
    invoke-virtual {p1}, Lteam/opay/business/push/core/api/PushMessage;->getData()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    if-eqz v10, :cond_7

    .line 107
    .line 108
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    goto :goto_3

    .line 113
    :cond_7
    move-object v10, v3

    .line 114
    :goto_3
    invoke-static {v9, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    const/4 v10, 0x4

    .line 119
    new-array v10, v10, [Lkotlin/Pair;

    .line 120
    .line 121
    aput-object v6, v10, v2

    .line 122
    .line 123
    aput-object v7, v10, v1

    .line 124
    .line 125
    aput-object v8, v10, v0

    .line 126
    .line 127
    const/4 v6, 0x3

    .line 128
    aput-object v9, v10, v6

    .line 129
    .line 130
    invoke-virtual {v4, p0, v5, v10}, Lzqe;->c(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 131
    .line 132
    .line 133
    sget-object v4, Lteam/opay/business/push/core/biz/IMessageClick;->Companion:Lteam/opay/business/push/core/biz/IMessageClick$a;

    .line 134
    .line 135
    invoke-virtual {v4}, Lteam/opay/business/push/core/biz/IMessageClick$a;->b()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_8

    .line 148
    .line 149
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    check-cast v5, Lteam/opay/business/push/core/biz/IMessageClick;

    .line 154
    .line 155
    invoke-interface {v5, p0, p1}, Lteam/opay/business/push/core/biz/IMessageClick;->onClick(Landroid/content/Context;Lteam/opay/business/push/core/api/PushMessage;)V

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_8
    invoke-virtual {p1}, Lteam/opay/business/push/core/api/PushMessage;->getActionUrl()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    if-eqz v4, :cond_b

    .line 164
    .line 165
    invoke-static {v4}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-eqz v4, :cond_9

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_9
    invoke-virtual {p1}, Lteam/opay/business/push/core/api/PushMessage;->getActionUrl()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    const-string v5, "key_message_info"

    .line 177
    .line 178
    invoke-virtual {p1}, Lteam/opay/business/push/core/api/PushMessage;->getData()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-eqz p1, :cond_a

    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    goto :goto_5

    .line 189
    :cond_a
    move-object p1, v3

    .line 190
    :goto_5
    invoke-static {v5, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    new-array v1, v1, [Lkotlin/Pair;

    .line 195
    .line 196
    aput-object p1, v1, v2

    .line 197
    .line 198
    invoke-static {v4, v1}, Lvd;->b(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    sget-object p1, Lik8;->c:Lik8;

    .line 203
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v2, "-----click notification jump scheme: "

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-static {p1, v1, v3, v0, v3}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    sget-object v5, Lud;->a:Lud;

    .line 225
    .line 226
    const/4 v9, 0x4

    .line 227
    const/4 v10, 0x0

    .line 228
    const/4 v8, 0x0

    .line 229
    move-object v6, p0

    .line 230
    invoke-static/range {v5 .. v10}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_b
    :goto_6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 234
    .line 235
    .line 236
    goto :goto_8

    .line 237
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 238
    .line 239
    .line 240
    goto :goto_8

    .line 241
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 245
    .line 246
    .line 247
    :goto_8
    return-void
.end method
