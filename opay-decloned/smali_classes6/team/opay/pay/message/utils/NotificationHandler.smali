.class public final Lteam/opay/pay/message/utils/NotificationHandler;
.super Ljava/lang/Object;
.source "NotificationHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003Jo\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0012\u0010\u0013Ji\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0013Js\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0008\u0010\r\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0018\u0010#\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010%R\u0014\u0010)\u001a\u00020\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010(R\u0016\u0010+\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010*R\u0016\u0010,\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010*R\u0016\u0010.\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010-R\u0016\u0010/\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010*R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102\u00a8\u00064"
    }
    d2 = {
        "Lteam/opay/pay/message/utils/NotificationHandler;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "title",
        "body",
        "action",
        "messageId",
        "",
        "logoId",
        "imgUrl",
        "taskData",
        "businessType",
        "virtualParam",
        "",
        "g",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "d",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "h",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "c",
        "(Landroid/content/Context;)V",
        "Landroid/app/NotificationManager;",
        "f",
        "(Landroid/content/Context;)Landroid/app/NotificationManager;",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "e",
        "(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;",
        "b",
        "Landroid/app/NotificationManager;",
        "notificationManager",
        "Landroid/app/NotificationChannel;",
        "Landroid/app/NotificationChannel;",
        "notificationChannel",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "counter",
        "Ljava/lang/String;",
        "channelId",
        "channelName",
        "I",
        "channelImportance",
        "channelDescription",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "i",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
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


# static fields
.field public static final a:Lteam/opay/pay/message/utils/NotificationHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Landroid/app/NotificationManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static c:Landroid/app/NotificationChannel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final d:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static g:I

.field public static h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static i:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/message/utils/NotificationHandler;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/message/utils/NotificationHandler;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/pay/message/utils/NotificationHandler;->a:Lteam/opay/pay/message/utils/NotificationHandler;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lteam/opay/pay/message/utils/NotificationHandler;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    const-string v0, "default"

    .line 17
    .line 18
    sput-object v0, Lteam/opay/pay/message/utils/NotificationHandler;->e:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "message center"

    .line 21
    .line 22
    sput-object v0, Lteam/opay/pay/message/utils/NotificationHandler;->f:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    sput v0, Lteam/opay/pay/message/utils/NotificationHandler;->g:I

    .line 26
    .line 27
    const-string v0, "The notification category to use when a new notice is received"

    .line 28
    .line 29
    sput-object v0, Lteam/opay/pay/message/utils/NotificationHandler;->h:Ljava/lang/String;

    .line 30
    .line 31
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 32
    .line 33
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 40
    .line 41
    sput-object v0, Lteam/opay/pay/message/utils/NotificationHandler;->i:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 42
    .line 43
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

.method public static synthetic a(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/message/utils/NotificationHandler;->j(Landroid/content/Context;Landroid/app/Notification;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/message/utils/NotificationHandler;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "$messageId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Llmf;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Lzj8;->a:Lzj8;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "show dataStr = "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "OMessage"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lzj8;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lteam/opay/pay/message/utils/NotificationHandler;->i:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 40
    .line 41
    if-eqz p0, :cond_5

    .line 42
    .line 43
    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    .line 44
    .line 45
    const/16 v2, 0x11

    .line 46
    .line 47
    invoke-direct {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 48
    .line 49
    .line 50
    const-string v2, "push_id"

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const-string v2, "user_unique_id"

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const-string v2, "push_config_id"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    const-string v2, "push_batch_id"

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    const-string v2, "channel_id"

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    const-string v2, "channel_type"

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    const-string v2, "ab_sdk_version"

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const-string v2, "push_experiment_id"

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    const-string v2, "task_unit_id"

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v2, "$task_unit_id"

    .line 161
    .line 162
    invoke-static {v2, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 170
    .line 171
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const-string v3, "APPLOG_ID"

    .line 184
    .line 185
    const-string v4, ""

    .line 186
    .line 187
    invoke-virtual {v2, v0, v3, v4}, Lteam/opay/pay/envconfigapi/ConfigStorage;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const-string v2, "hid"

    .line 192
    .line 193
    invoke-static {v2, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    sget-object v0, Lteam/opay/pay/message/utils/NotificationHandler;->i:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 201
    .line 202
    const/4 v2, 0x0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    .line 205
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    goto :goto_0

    .line 210
    :cond_0
    move-object v0, v2

    .line 211
    :goto_0
    if-nez v0, :cond_1

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_1
    move-object v4, v0

    .line 215
    :goto_1
    const-string v0, "suid"

    .line 216
    .line 217
    invoke-static {v0, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    sget-object v0, Lteam/opay/pay/message/utils/NotificationHandler;->i:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 225
    .line 226
    if-eqz v0, :cond_2

    .line 227
    .line 228
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->getABAppLogConfig()Lteam/opay/swarmfoundation/data/IBytedanceAppLog;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-eqz v0, :cond_2

    .line 233
    .line 234
    invoke-virtual {v0}, Lteam/opay/swarmfoundation/data/IBytedanceAppLog;->getDeviceId()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    goto :goto_2

    .line 239
    :cond_2
    move-object v0, v2

    .line 240
    :goto_2
    const-string v3, "sdid"

    .line 241
    .line 242
    invoke-static {v3, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    sget-object v0, Lteam/opay/pay/message/utils/NotificationHandler;->i:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 250
    .line 251
    if-eqz v0, :cond_3

    .line 252
    .line 253
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionName()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    goto :goto_3

    .line 258
    :cond_3
    move-object v0, v2

    .line 259
    :goto_3
    const-string v3, "svn"

    .line 260
    .line 261
    invoke-static {v3, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    sget-object v0, Lteam/opay/pay/message/utils/NotificationHandler;->i:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 269
    .line 270
    if-eqz v0, :cond_4

    .line 271
    .line 272
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionCode()I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    :cond_4
    const-string v0, "svc"

    .line 281
    .line 282
    invoke-static {v0, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    const-string v0, "messageId"

    .line 290
    .line 291
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    const-string p1, "is_forcedRemind"

    .line 299
    .line 300
    const-string v0, "0"

    .line 301
    .line 302
    invoke-static {p1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    sget-object p1, Lsz9;->a:Lsz9;

    .line 310
    .line 311
    invoke-virtual {p1, p2}, Lsz9;->c(Ljava/lang/String;)[Lkotlin/Pair;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->b(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->c()I

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    new-array p1, p1, [Lkotlin/Pair;

    .line 323
    .line 324
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    check-cast p1, [Lkotlin/Pair;

    .line 329
    .line 330
    const-string p2, "rangers_push_show"

    .line 331
    .line 332
    invoke-interface {p0, p2, p1}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 333
    .line 334
    .line 335
    :cond_5
    return-void
.end method

.method public static final j(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 2

    .line 1
    const-string v0, "$context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$notification"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "notification"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    check-cast p0, Landroid/app/NotificationManager;

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    long-to-int v1, v0

    .line 26
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lzj8;->a:Lzj8;

    .line 34
    .line 35
    const-string p1, "OMessage"

    .line 36
    .line 37
    const-string v0, "sendNotification show notification"

    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Lzj8;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 44
    .line 45
    const-string p1, "null cannot be cast to non-null type android.app.NotificationManager"

    .line 46
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method


# virtual methods
.method public final c(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lij8;->a()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lteam/opay/pay/message/utils/NotificationHandler;->e:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v1, Lteam/opay/pay/message/utils/NotificationHandler;->f:Ljava/lang/String;

    .line 13
    .line 14
    sget v2, Lteam/opay/pay/message/utils/NotificationHandler;->g:I

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lqr6;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lteam/opay/pay/message/utils/NotificationHandler;->c:Landroid/app/NotificationChannel;

    .line 21
    .line 22
    sget-object v1, Lteam/opay/pay/message/utils/NotificationHandler;->h:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lhz9;->a(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lteam/opay/pay/message/utils/NotificationHandler;->a:Lteam/opay/pay/message/utils/NotificationHandler;

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Lteam/opay/pay/message/utils/NotificationHandler;->f(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-static {p1, v0}, Lnr6;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1    # Landroid/content/Context;
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
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "title"

    .line 8
    .line 9
    move-object v3, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "body"

    .line 14
    .line 15
    move-object/from16 v4, p3

    .line 16
    .line 17
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "messageId"

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "imgUrl"

    .line 28
    .line 29
    move-object/from16 v11, p7

    .line 30
    .line 31
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static/range {p7 .. p7}, Ln97;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->t(Ljava/lang/Object;)Ljpc;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->j0(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljpc;

    .line 52
    .line 53
    new-instance v12, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;

    .line 54
    .line 55
    move-object v1, v12

    .line 56
    move-object/from16 v5, p4

    .line 57
    .line 58
    move/from16 v7, p6

    .line 59
    .line 60
    move-object/from16 v8, p8

    .line 61
    .line 62
    move-object/from16 v9, p9

    .line 63
    .line 64
    move-object/from16 v10, p10

    .line 65
    .line 66
    invoke-direct/range {v1 .. v11}, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v12}, Ljpc;->s0(Lnpc;)Ljpc;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljpc;->R0()Lwm6;

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final e(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/message/utils/NotificationHandler;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 16
    .line 17
    sget-object v1, Lteam/opay/pay/message/utils/NotificationHandler;->e:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v0, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x2

    .line 23
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->S(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 24
    .line 25
    .line 26
    :goto_0
    return-object v0
.end method

.method public final f(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/message/utils/NotificationHandler;->b:Landroid/app/NotificationManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "notification"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    check-cast p1, Landroid/app/NotificationManager;

    .line 14
    .line 15
    sput-object p1, Lteam/opay/pay/message/utils/NotificationHandler;->b:Landroid/app/NotificationManager;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 19
    .line 20
    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    sget-object p1, Lteam/opay/pay/message/utils/NotificationHandler;->b:Landroid/app/NotificationManager;

    .line 27
    .line 28
    return-object p1
.end method

.method public final g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1    # Landroid/content/Context;
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
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "title"

    .line 8
    .line 9
    move-object v3, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "body"

    .line 14
    .line 15
    move-object/from16 v4, p3

    .line 16
    .line 17
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "messageId"

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-eqz p7, :cond_1

    .line 28
    .line 29
    invoke-interface/range {p7 .. p7}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual/range {p0 .. p10}, Lteam/opay/pay/message/utils/NotificationHandler;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 v8, 0x0

    .line 41
    const-string v9, ""

    .line 42
    .line 43
    move-object v1, p0

    .line 44
    move-object v2, p1

    .line 45
    move-object v3, p2

    .line 46
    move-object/from16 v4, p3

    .line 47
    .line 48
    move-object/from16 v5, p4

    .line 49
    .line 50
    move-object/from16 v6, p5

    .line 51
    .line 52
    move/from16 v7, p6

    .line 53
    .line 54
    move-object/from16 v10, p8

    .line 55
    .line 56
    move-object/from16 v11, p9

    .line 57
    .line 58
    move-object/from16 v12, p10

    .line 59
    .line 60
    invoke-virtual/range {v1 .. v12}, Lteam/opay/pay/message/utils/NotificationHandler;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    return-void
.end method

.method public final h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1    # Landroid/content/Context;
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
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p7

    .line 10
    .line 11
    move-object/from16 v5, p9

    .line 12
    .line 13
    const-string v6, "context"

    .line 14
    .line 15
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v6, "title"

    .line 19
    .line 20
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v7, "body"

    .line 24
    .line 25
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v8, "messageId"

    .line 29
    .line 30
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    invoke-interface/range {p9 .. p9}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    if-nez v9, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {}, Le60;->g()Ljava/util/concurrent/Executor;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    new-instance v10, Ljz9;

    .line 47
    .line 48
    move-object/from16 v11, p11

    .line 49
    .line 50
    invoke-direct {v10, v5, v3, v11}, Ljz9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lteam/opay/pay/message/utils/NotificationHandler;->c(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    invoke-static {v1, v9}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    invoke-static {v2, v9}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    .line 78
    const/16 v13, 0x1f

    .line 79
    .line 80
    const-string v14, ""

    .line 81
    .line 82
    if-lt v12, v13, :cond_5

    .line 83
    .line 84
    new-instance v3, Landroid/content/Intent;

    .line 85
    .line 86
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    if-nez p4, :cond_2

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move-object/from16 v14, p4

    .line 100
    .line 101
    :goto_1
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    sget-object v5, Ld00;->a:Ld00;

    .line 115
    .line 116
    invoke-virtual {v5}, Ld00;->e()Landroid/app/Activity;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    if-eqz v5, :cond_3

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    move-object v5, v0

    .line 124
    :goto_2
    instance-of v6, v5, Landroid/app/Activity;

    .line 125
    .line 126
    if-nez v6, :cond_4

    .line 127
    .line 128
    const/high16 v6, 0x10000000

    .line 129
    .line 130
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    :cond_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-virtual {v6}, Ljava/util/UUID;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    const/high16 v7, 0x44000000    # 512.0f

    .line 142
    .line 143
    invoke-static {v5, v6, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    goto :goto_4

    .line 148
    :cond_5
    new-instance v12, Landroid/content/Intent;

    .line 149
    .line 150
    const-class v13, Lteam/opay/pay/message/utils/NotificationBroadcastReceiver;

    .line 151
    .line 152
    invoke-direct {v12, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v12, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v12, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    .line 160
    .line 161
    if-nez p4, :cond_6

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_6
    move-object/from16 v14, p4

    .line 165
    .line 166
    :goto_3
    const-string v6, "action"

    .line 167
    .line 168
    invoke-virtual {v12, v6, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v12, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    const-string v3, "businessType"

    .line 175
    .line 176
    move-object/from16 v6, p10

    .line 177
    .line 178
    invoke-virtual {v12, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    const-string v3, "imgUrl"

    .line 182
    .line 183
    move-object/from16 v6, p8

    .line 184
    .line 185
    invoke-virtual {v12, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    const-string v3, "taskid"

    .line 189
    .line 190
    invoke-virtual {v12, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    const/high16 v5, 0x8000000

    .line 202
    .line 203
    invoke-static {v0, v3, v12, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    :goto_4
    invoke-virtual/range {p0 .. p1}, Lteam/opay/pay/message/utils/NotificationHandler;->e(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-virtual {v5, v3}, Landroidx/core/app/NotificationCompat$Builder;->A(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    const/4 v5, 0x1

    .line 216
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->r(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    move/from16 v5, p6

    .line 221
    .line 222
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->Y(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->C(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->B(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    new-array v5, v9, [J

    .line 235
    .line 236
    const-wide/16 v6, 0xc8

    .line 237
    .line 238
    invoke-static {v5, v6, v7}, Lkotlin/collections/a;->w([JJ)[J

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->i0([J)Landroidx/core/app/NotificationCompat$Builder;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 247
    .line 248
    .line 249
    move-result-wide v5

    .line 250
    invoke-virtual {v3, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->k0(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    const-string v5, "getNotification(context)\u2026stem.currentTimeMillis())"

    .line 255
    .line 256
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    if-eqz v4, :cond_7

    .line 260
    .line 261
    new-instance v1, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 262
    .line 263
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->z(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->d0(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->g()Landroid/app/Notification;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    goto :goto_5

    .line 279
    :cond_7
    new-instance v4, Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 280
    .line 281
    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->x(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->y(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->d0(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->g()Landroid/app/Notification;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    :goto_5
    const-string v2, "if (bitmap != null) {\n  \u2026nBuilid.build()\n        }"

    .line 300
    .line 301
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-static {}, Le60;->i()Ljava/util/concurrent/Executor;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    new-instance v3, Lkz9;

    .line 309
    .line 310
    invoke-direct {v3, v0, v1}, Lkz9;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 311
    .line 312
    .line 313
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 314
    .line 315
    .line 316
    return-void
.end method
