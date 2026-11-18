.class public final Lteam/opay/oim/manager/im/MQTTService$b;
.super Ljava/lang/Object;
.source "MQTTService.kt"

# interfaces
.implements Lhe9;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/oim/manager/im/MQTTService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J#\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "team/opay/oim/manager/im/MQTTService$b",
        "Lhe9;",
        "",
        "topic",
        "Lorg/eclipse/paho/client/mqttv3/MqttMessage;",
        "message",
        "",
        "a",
        "(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V",
        "",
        "cause",
        "b",
        "(Ljava/lang/Throwable;)V",
        "Lr97;",
        "token",
        "c",
        "(Lr97;)V",
        "oim_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/oim/manager/im/MQTTService;


# direct methods
.method public constructor <init>(Lteam/opay/oim/manager/im/MQTTService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/oim/manager/im/MQTTService$b;->a:Lteam/opay/oim/manager/im/MQTTService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/eclipse/paho/client/mqttv3/MqttMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "mqttCallback messageArrived  topic:"

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lteam/opay/oim/manager/OMessageManager;->b:Lteam/opay/oim/manager/OMessageManager$Companion;

    .line 6
    .line 7
    invoke-virtual {v1}, Lteam/opay/oim/manager/OMessageManager$Companion;->a()Lteam/opay/oim/manager/OMessageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lteam/opay/oim/manager/OMessageManager;->c()Lteam/opay/oim/manager/im/OIMController;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1, v2}, Lteam/opay/oim/manager/im/OIMController;->d(Z)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lada;->a:Lada;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, " message:"

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v3, "message.payload"

    .line 42
    .line 43
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v3, Ljava/lang/String;

    .line 47
    .line 48
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 49
    .line 50
    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v1, v0}, Lada;->a(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    sget-object v1, Lada;->a:Lada;

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, " message: is null"

    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v1, v0}, Lada;->a(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    if-eqz p2, :cond_1

    .line 90
    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    sget-object p1, Lada;->a:Lada;

    .line 94
    .line 95
    const-string v0, "mqttCallback messageArrived  start dispatch"

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Lada;->a(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sget-object p1, Lteam/opay/oim/manager/OMessageManager;->b:Lteam/opay/oim/manager/OMessageManager$Companion;

    .line 101
    .line 102
    invoke-virtual {p1}, Lteam/opay/oim/manager/OMessageManager$Companion;->a()Lteam/opay/oim/manager/OMessageManager;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lteam/opay/oim/manager/OMessageManager;->c()Lteam/opay/oim/manager/im/OIMController;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object v0, p0, Lteam/opay/oim/manager/im/MQTTService$b;->a:Lteam/opay/oim/manager/im/MQTTService;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v1, "applicationContext"

    .line 117
    .line 118
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0, p2}, Lteam/opay/oim/manager/im/OIMController;->c(Landroid/content/Context;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_0
    sget-object p1, Lada;->a:Lada;

    .line 126
    .line 127
    const-string p2, "catch oom crash"

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Lada;->a(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_1
    :goto_1
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lada;->a:Lada;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "mqttCallback connectionLost"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Lada;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lteam/opay/oim/manager/OMessageManager;->b:Lteam/opay/oim/manager/OMessageManager$Companion;

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/oim/manager/OMessageManager$Companion;->a()Lteam/opay/oim/manager/OMessageManager;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lteam/opay/oim/manager/OMessageManager;->c()Lteam/opay/oim/manager/im/OIMController;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Lteam/opay/oim/manager/im/OIMController;->d(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public c(Lr97;)V
    .locals 5
    .param p1    # Lr97;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lada;->a:Lada;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "mqttCallback deliveryComplete "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Lr97;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v3, v2

    .line 22
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lada;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lorg/json/JSONObject;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-interface {p1}, Lr97;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string p1, "messageId"

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v1, p0, Lteam/opay/oim/manager/im/MQTTService$b;->a:Lteam/opay/oim/manager/im/MQTTService;

    .line 54
    .line 55
    invoke-static {v1}, Lteam/opay/oim/manager/im/MQTTService;->a(Lteam/opay/oim/manager/im/MQTTService;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_6

    .line 60
    .line 61
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_5

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v2, "messageSendCallBack deliveryComplete  "

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const/16 v2, 0x20

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lteam/opay/oim/manager/im/MQTTService$b;->a:Lteam/opay/oim/manager/im/MQTTService;

    .line 86
    .line 87
    invoke-static {v2}, Lteam/opay/oim/manager/im/MQTTService;->a(Lteam/opay/oim/manager/im/MQTTService;)Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lm99;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lada;->a(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lteam/opay/oim/manager/im/MQTTService$b;->a:Lteam/opay/oim/manager/im/MQTTService;

    .line 108
    .line 109
    invoke-static {v0}, Lteam/opay/oim/manager/im/MQTTService;->a(Lteam/opay/oim/manager/im/MQTTService;)Ljava/util/Map;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lm99;

    .line 118
    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-eqz v1, :cond_2

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    const-string v1, ""

    .line 131
    .line 132
    :goto_1
    const/4 v2, 0x1

    .line 133
    const-wide/16 v3, 0x0

    .line 134
    .line 135
    invoke-interface {v0, v1, v2, v3, v4}, Lm99;->a(Ljava/lang/String;IJ)V

    .line 136
    .line 137
    .line 138
    :cond_3
    iget-object v0, p0, Lteam/opay/oim/manager/im/MQTTService$b;->a:Lteam/opay/oim/manager/im/MQTTService;

    .line 139
    .line 140
    invoke-static {v0}, Lteam/opay/oim/manager/im/MQTTService;->a(Lteam/opay/oim/manager/im/MQTTService;)Ljava/util/Map;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_4

    .line 145
    .line 146
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    .line 155
    .line 156
    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>"

    .line 157
    .line 158
    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :cond_5
    :goto_2
    return-void

    .line 163
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    .line 164
    .line 165
    const-string v0, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    .line 166
    .line 167
    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p1
.end method
