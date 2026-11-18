.class public final Lteam/opay/oim/manager/im/MQTTService$Companion;
.super Ljava/lang/Object;
.source "MQTTService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/oim/manager/im/MQTTService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u001f\u0010\u000c\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0008R\u0014\u0010\u0010\u001a\u00020\u000f8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00128\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00128\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00128\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lteam/opay/oim/manager/im/MQTTService$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/oim/manager/im/ConnectOptions;",
        "connectOptions",
        "",
        "d",
        "(Lteam/opay/oim/manager/im/ConnectOptions;)Ljava/lang/String;",
        "g",
        "phone",
        "appID",
        "f",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "e",
        "",
        "AUTOMATIC_RECONNECT",
        "Z",
        "",
        "CONNECTION_TIMEOUT",
        "I",
        "KEEP_ALIVEINTERVAL",
        "QOS",
        "Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;",
        "conOpt",
        "Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;",
        "Lorg/eclipse/paho/android/service/MqttAndroidClient;",
        "mqttAndroidClient",
        "Lorg/eclipse/paho/android/service/MqttAndroidClient;",
        "oim_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lteam/opay/oim/manager/im/MQTTService$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lteam/opay/oim/manager/im/MQTTService$Companion;Lteam/opay/oim/manager/im/ConnectOptions;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/oim/manager/im/MQTTService$Companion;->d(Lteam/opay/oim/manager/im/ConnectOptions;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lteam/opay/oim/manager/im/MQTTService$Companion;Lteam/opay/oim/manager/im/ConnectOptions;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/oim/manager/im/MQTTService$Companion;->e(Lteam/opay/oim/manager/im/ConnectOptions;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lteam/opay/oim/manager/im/MQTTService$Companion;Lteam/opay/oim/manager/im/ConnectOptions;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/oim/manager/im/MQTTService$Companion;->g(Lteam/opay/oim/manager/im/ConnectOptions;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final d(Lteam/opay/oim/manager/im/ConnectOptions;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lteam/opay/oim/manager/im/ConnectOptions;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 6
    .line 7
    invoke-virtual {p1}, Lteam/opay/oim/manager/im/ConnectOptions;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v1, p1}, Lteam/opay/swarmfoundation/device/AuthUtil;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "\u8bbe\u5907ID:"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, p1}, Lteam/opay/oim/manager/im/MQTTService$Companion;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public final e(Lteam/opay/oim/manager/im/ConnectOptions;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lteam/opay/oim/manager/im/ConnectOptions;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lteam/opay/oim/manager/im/ConnectOptions;->a()Lteam/opay/oim/manager/im/AppID;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lteam/opay/oim/manager/im/AppID;->getAppName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, v0, p1}, Lteam/opay/oim/manager/im/MQTTService$Companion;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "_"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final g(Lteam/opay/oim/manager/im/ConnectOptions;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lteam/opay/oim/manager/im/ConnectOptions;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lteam/opay/oim/manager/im/ConnectOptions;->a()Lteam/opay/oim/manager/im/AppID;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lteam/opay/oim/manager/im/AppID;->getAppName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, v0, p1}, Lteam/opay/oim/manager/im/MQTTService$Companion;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
